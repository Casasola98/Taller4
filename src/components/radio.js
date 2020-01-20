import React from 'react';
import L from 'leaflet';
import { Map, TileLayer, Marker, Popup } from 'react-leaflet'
import 'leaflet/dist/leaflet.css';
import ReactDOM from 'react-dom';

import App from '../App.js';

import './radio.css';

import icon from 'leaflet/dist/images/marker-icon.png';
import iconShadow from 'leaflet/dist/images/marker-shadow.png';

let DefaultIcon = L.icon({
    iconUrl: icon,
    shadowUrl: iconShadow
});

L.Marker.prototype.options.icon = DefaultIcon;

class Radio extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            puntos: [],
            indices: 0
        };
        this.handleClick = this.handleClick.bind(this);
    }

    renderPuntosM = ({ nombre, descripP, latitud, longitud }) => <Marker position={[latitud, longitud]}><Popup>{nombre}<br />{descripP}</Popup></Marker>

    pantallaInicial() {
        ReactDOM.render(<App />, document.getElementById('root'));
    }

    async handleClick(event) {
        //event.preventDefault();

        var latitud = event.latlng.lat;
        var longitud = event.latlng.lng;

        // const formData = new FormData(event.target);
        // const data = new URLSearchParams(formData);
        // data.append("latitud", latitud)
        // data.append("longitud", longitud)
        // await fetch('/getRadio', {
        //     method: 'POST',
        //     body: data
        // }).then(res => {
        //     return res.json()
        // }).then(resp => {
        //     if (resp.result) {
        //         this.setState({
        //             puntos: resp.puntos.puntos
        //         });
        //     }
        // });
    }

    render() {
        const position = [9.9098391, -84.0004016];
        const { puntos } = this.state;
        return (
            <div id="App" className="App">
                <div className="App-header">
                    <div className="Contenedor2">
                        <div id="ContMapa" className="ContMapaP1">
                            <Map className="Mapa1" id="Mapa1" ref="map" center={position} zoom={13} onClick={this.handleClick}>
                                <TileLayer
                                    attribution='Map tiles by <a href="http://stamen.com">Stamen Design</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a> &mdash; Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                                    url="https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"></TileLayer>

                                {puntos.map(this.renderPuntosM)}
                            </Map>
                        </div>
                    </div>
                    <button className="BotonRuta" onClick={this.pantallaInicial}>Ir a Rutas</button>
                </div>
            </div>
        );
    }
}
export default Radio;
