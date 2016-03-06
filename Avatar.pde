class Avatar {
  int ax;
  int ay;
  int as;

  Avatar(int s) {
    delay = 100;
    as = s;
  }

  void drawAvatarFront(int x, int y) {
    ax = x;
    ay = y;

    stroke(0);

    fill(204, 0, 0);
    rect(ax+5, ay+2, as-10, as, 45);
    rect(ax-3, ay+5, 8, 4);
    rect(ax+as-5, ay+5, 8, 4);

    fill(160, 60, 25);
    rect(ax+4, ay+15, 6, 12);
    rect(ax+10, ay+15, 6, 12);

    noStroke();
    fill(255, 255, 0);
    ellipse(ax+10, ay, 15, 15);
    fill(255, 153, 51);
    arc(ax+10, ay, 15, 15, 0, PI);
    fill(0);
    ellipse(ax+10, ay-5, 3, 3);
    ellipse(ax+7, ay+2, 2, 2);
    ellipse(ax+13, ay+2, 2, 2);
  }

  void drawAvatarBack(int x, int y) {
    ax = x;
    ay = y;

    stroke(0);

    fill(204, 0, 0);
    rect(ax+5, ay+2, as-10, as, 45);
    rect(ax-3, ay+5, 8, 4);
    rect(ax+as-5, ay+5, 8, 4);

    fill(160, 60, 25);
    rect(ax+4, ay+15, 6, 12);
    rect(ax+10, ay+15, 6, 12);

    noStroke();
    fill(255, 255, 0);
    ellipse(ax+10, ay, 15, 15);
    fill(255, 153, 51);
    arc(ax+10, ay, 15, 15, 0, PI);
  }

  void drawAvatarLeft(int x, int y) {
    ax = x;
    ay = y;

    stroke(0);

    fill(204, 0, 0);
    rect(ax+6, ay+2, 8, as, 45);
    rect(ax-1, ay+5, 8, 4);
    //rect(ax+as-5, ay+5, 8, 4);

    fill(160, 60, 25);
    //rect(ax+10, ay+15, 6, 12);
    rect(ax+7, ay+15, 6, 12);

    noStroke();
    fill(255, 255, 0);
    ellipse(ax+10, ay, 15, 15);
    fill(255, 153, 51);
    arc(ax+10, ay, 15, 15, 0, PI);
  }

  void drawAvatarRight(int x, int y) {
    ax = x;
    ay = y;

    stroke(0);

    fill(204, 0, 0);
    rect(ax+6, ay+2, 8, as, 45);
    rect(ax+13, ay+5, 8, 4);
    //rect(ax+as-5, ay+5, 8, 4);

    fill(160, 60, 25);
    //rect(ax+10, ay+15, 6, 12);
    rect(ax+7, ay+15, 6, 12);

    noStroke();
    fill(255, 255, 0);
    ellipse(ax+10, ay, 15, 15);
    fill(255, 153, 51);
    arc(ax+10, ay, 15, 15, 0, PI);
  }

  void keyPressed() {
    if (keyPressed) {
      stroke(255, 255, 255);
      fill(255, 255, 255);

      if (key == 'd') {

        if (mainroom == true) {
          if (wallm3.checkRightMoveInto(px, py)) {
            if (wallm5.checkRightMoveInto(px, py)) {
              if (wallm6.checkRightMoveInto(px, py)) {
                if (wallm7.checkRightMoveInto(px, py)) {
                  if (wallm8.checkRightMoveInto(px, py)) {
                    if (wallm9.checkRightMoveInto(px, py)) {
                      if (wallm10.checkRightMoveInto(px, py)) {
                        if (wallm11.checkRightMoveInto(px, py)) {
                          if (wallm13.checkRightMoveInto(px, py)) {
                            if (wallm15.checkRightMoveInto(px, py)) {
                              if (wallm16.checkRightMoveInto(px, py)) {
                                if (wallm17.checkRightMoveInto(px, py)) {
                                  if (wallm18.checkRightMoveInto(px, py)) {
                                    //mapOriginX-=40;
                                    if (right == false) {
                                      back = false;
                                      front = false;
                                      left = false;
                                      right = true;
                                      delay(delay);
                                    } else {
                                      px+=40;
                                      delay(delay);
                                      print('d');
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom1 == true) {
          if (walls4.checkRightMoveInto(px, py)) {
            if (right == false) {
                                      back = false;
                                      front = false;
                                      left = false;
                                      right = true;
                                      delay(delay);
                                    } else {
                                      px+=40;
                                      delay(delay);
                                      print('d');
                                    }
          }
        }
        if (sideroom2 == true) {
          if (walls4.checkRightMoveInto(px, py)) {
            if (walls7.checkRightMoveInto(px, py)) {
              if (walls8.checkRightMoveInto(px, py)) {
                if (walls9.checkRightMoveInto(px, py)) {
                  if (walls12.checkRightMoveInto(px, py)) {
                    if (walls13.checkRightMoveInto(px, py)) {
                      if (walls14.checkRightMoveInto(px, py)) {
                        if (walls15.checkRightMoveInto(px, py)) {
                          if (walls16.checkRightMoveInto(px, py)) {
                            if (walls17.checkRightMoveInto(px, py)) {
            if (right == false) {
                                      back = false;
                                      front = false;
                                      left = false;
                                      right = true;
                                      delay(delay);
                                    } else {
                                      px+=40;
                                      delay(delay);
                                      print('d');
                                    }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom3 == true) {
          if (walls4.checkRightMoveInto(px, py)) {
            if (walls5.checkRightMoveInto(px, py)) {
              if (walls6.checkRightMoveInto(px, py)) {
                if (walls7.checkRightMoveInto(px, py)) {
                  if (walls8.checkRightMoveInto(px, py)) {
                    if (walls11.checkRightMoveInto(px, py)) {
                      if (walls12.checkRightMoveInto(px, py)) {
                        if (walls13.checkRightMoveInto(px, py)) {
                          if (walls14.checkRightMoveInto(px, py)) {
                            if (walls16.checkRightMoveInto(px, py)) {
                              if (walls17.checkRightMoveInto(px, py)) {
                                if (walls19.checkRightMoveInto(px, py)) {
                                  if (right == false) {
                                      back = false;
                                      front = false;
                                      left = false;
                                      right = true;
                                      delay(delay);
                                    } else {
                                      px+=40;
                                      delay(delay);
                                      print('d');
                                    }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (key == 'a') {

        if (mainroom == true) {
          if (!trapWall) {
            if (wallm1.checkLeftMoveInto(px, py)) {
              if (wallm5.checkLeftMoveInto(px, py)) {
                if (wallm6.checkLeftMoveInto(px, py)) {
                  if (wallm7.checkLeftMoveInto(px, py)) {
                    if (wallm9.checkLeftMoveInto(px, py)) {
                      if (wallm10.checkLeftMoveInto(px, py)) {
                        if (wallm11.checkLeftMoveInto(px, py)) {
                          if (wallm14.checkLeftMoveInto(px, py)) {
                            if (wallm17.checkLeftMoveInto(px, py)) {
                              if (wallm18.checkLeftMoveInto(px, py)) {

                                //mapOriginX+=40;
                                if (left == false) {
                                  right = false;
                                  back = false;
                                  front = false;
                                  left = true;
                                  delay(delay);
                                } else {
                                  px-=40;
                                  delay(delay);
                                  print('a');
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          if (trapWall) {
            if (wallm1.checkLeftMoveInto(px, py)) {
              if (wallm5.checkLeftMoveInto(px, py)) {
                if (wallm6.checkLeftMoveInto(px, py)) {
                  if (wallm7.checkLeftMoveInto(px, py)) {
                    if (wallm9.checkLeftMoveInto(px, py)) {
                      if (wallm10.checkLeftMoveInto(px, py)) {
                        if (wallm11.checkLeftMoveInto(px, py)) {
                          if (wallm14.checkLeftMoveInto(px, py)) {
                            if (wallm17.checkLeftMoveInto(px, py)) {
                              if (wallm18.checkLeftMoveInto(px, py)) {
                                if (wallm19.checkLeftMoveInto(px, py)) {
                                  if (left == false) {
                                  right = false;
                                  back = false;
                                  front = false;
                                  left = true;
                                  delay(delay);
                                } else {
                                  px-=40;
                                  delay(delay);
                                  print('a');
                                }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom1 == true) {
          if (walls1.checkLeftMoveInto(px, py)) {
            if (left == false) {
                                  right = false;
                                  back = false;
                                  front = false;
                                  left = true;
                                  delay(delay);
                                } else {
                                  px-=40;
                                  delay(delay);
                                  print('a');
                                }
          }
        }
        if (sideroom2 == true) {
          if (walls1.checkLeftMoveInto(px, py)) {
            if (walls5.checkLeftMoveInto(px, py)) {
            if (walls7.checkLeftMoveInto(px, py)) {
              if (walls8.checkLeftMoveInto(px, py)) {
                if (walls12.checkLeftMoveInto(px, py)) {
                  if (walls13.checkLeftMoveInto(px, py)) {
                    if (walls14.checkLeftMoveInto(px, py)) {
                      if (walls15.checkLeftMoveInto(px, py)) {
                        if (walls16.checkLeftMoveInto(px, py)) {
                          if (walls17.checkLeftMoveInto(px, py)) {
            
            if (left == false) {
                                  right = false;
                                  back = false;
                                  front = false;
                                  left = true;
                                  delay(delay);
                                } else {
                                  px-=40;
                                  delay(delay);
                                  print('a');
                                }
                                }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom3 == true) {
          if (walls1.checkLeftMoveInto(px, py)) {
            if (walls5.checkLeftMoveInto(px, py)) {
              if (walls6.checkLeftMoveInto(px, py)) {
                if (walls7.checkLeftMoveInto(px, py)) {
                  if (walls8.checkLeftMoveInto(px, py)) {
                    if (walls10.checkLeftMoveInto(px, py)) {
                      if (walls11.checkLeftMoveInto(px, py)) {
                        if (walls12.checkLeftMoveInto(px, py)) {
                          if (walls13.checkLeftMoveInto(px, py)) {
                            if (walls14.checkLeftMoveInto(px, py)) {
                              if (walls15.checkLeftMoveInto(px, py)) {
                                if (walls16.checkLeftMoveInto(px, py)) {
                                  if (walls17.checkLeftMoveInto(px, py)) {
                                    if (walls18.checkLeftMoveInto(px, py)) {
                                      if (walls19.checkLeftMoveInto(px, py)) {
                                        if (left == false) {
                                  right = false;
                                  back = false;
                                  front = false;
                                  left = true;
                                  delay(delay);
                                } else {
                                  px-=40;
                                  delay(delay);
                                  print('a');
                                }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (key == 'w') {

        if (mainroom == true) {
          if (wallm2.checkUpMoveInto(px, py)) {
            if (wallm7.checkUpMoveInto(px, py)) {
              if (wallm8.checkUpMoveInto(px, py)) {
                if (wallm9.checkUpMoveInto(px, py)) {
                  if (wallm10.checkUpMoveInto(px, py)) {
                    if (wallm11.checkUpMoveInto(px, py)) {
                      if (wallm12.checkUpMoveInto(px, py)) {
                        if (wallm13.checkUpMoveInto(px, py)) {
                          if (wallm14.checkUpMoveInto(px, py)) {
                            if (wallm16.checkUpMoveInto(px, py)) {
                              if (wallm17.checkUpMoveInto(px, py)) {
                                //mapOriginY+=40;
                                if (back == false) {
                                  front = false;
                                  left = false;
                                  right = false;
                                  back = true;
                                  delay(delay);
                                } else {
                                  py-=40;
                                  delay(delay);
                                  print('w');
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom1 == true) {
          if (walls2.checkUpMoveInto(px, py)) {

            if (back == false) {
                                  front = false;
                                  left = false;
                                  right = false;
                                  back = true;
                                  delay(delay);
                                } else {
                                  py-=40;
                                  delay(delay);
                                  print('w');
                                }
          }
        }
        if (sideroom2 == true) {
          if (walls2.checkUpMoveInto(px, py)) {
            if (walls6.checkUpMoveInto(px, py)) {
            if (walls7.checkUpMoveInto(px, py)) {
              if (walls8.checkUpMoveInto(px, py)) {
                if (walls9.checkUpMoveInto(px, py)) {
                  if (walls10.checkUpMoveInto(px, py)) {
                    if (walls11.checkUpMoveInto(px, py)) {
                      if (walls12.checkUpMoveInto(px, py)) {
                        if (walls13.checkUpMoveInto(px, py)) {
                          if (walls14.checkUpMoveInto(px, py)) {
                            if (walls15.checkUpMoveInto(px, py)) {
                              if (walls16.checkUpMoveInto(px, py)) {
            if (back == false) {
                                  front = false;
                                  left = false;
                                  right = false;
                                  back = true;
                                  delay(delay);
                                } else {
                                  py-=40;
                                  delay(delay);
                                  print('w');
                                }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom3 == true) {
          if (walls2.checkUpMoveInto(px, py)) {
            if (walls5.checkUpMoveInto(px, py)) {
              if (walls7.checkUpMoveInto(px, py)) {
                if (walls8.checkUpMoveInto(px, py)) {
                  if (walls9.checkUpMoveInto(px, py)) {
                    if (walls10.checkUpMoveInto(px, py)) {
                      if (walls11.checkUpMoveInto(px, py)) {
                        if (walls14.checkUpMoveInto(px, py)) {
                          if (walls15.checkUpMoveInto(px, py)) {
                            if (walls16.checkUpMoveInto(px, py)) {
                              if (walls17.checkUpMoveInto(px, py)) {
                                if (walls18.checkUpMoveInto(px, py)) {
                                  if (back == false) {
                                  front = false;
                                  left = false;
                                  right = false;
                                  back = true;
                                  delay(delay);
                                } else {
                                  py-=40;
                                  delay(delay);
                                  print('w');
                                }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (key == 's') {

        if (mainroom == true) {
          if (wallm4.checkDownMoveInto(px, py)) {
            if (wallm5.checkDownMoveInto(px, py)) {
              if (wallm6.checkDownMoveInto(px, py)) {
                if (wallm7.checkDownMoveInto(px, py)) {
                  if (wallm9.checkDownMoveInto(px, py)) {
                    if (wallm10.checkDownMoveInto(px, py)) {
                      if (wallm14.checkDownMoveInto(px, py)) {
                        if (wallm15.checkDownMoveInto(px, py)) {
                          if (wallm16.checkDownMoveInto(px, py)) {
                            if (wallm17.checkDownMoveInto(px, py)) {
                              if (wallm18.checkDownMoveInto(px, py)) {
                                //mapOriginY-=40;
                                if (front == false) {
                                  back = false; 
                                  right = false;
                                  left = false;
                                  front = true;
                                  delay(delay);
                                } else {
                                  py+=40;
                                  delay(delay);
                                  print('s');
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom1 == true) {
          if (walls3.checkDownMoveInto(px, py)) {
            //mapOriginY-=40;
            if (front == false) {
                                  back = false; 
                                  right = false;
                                  left = false;
                                  front = true;
                                  delay(delay);
                                } else {
                                  py+=40;
                                  delay(delay);
                                  print('s');
                                }
          }
        }
        if (sideroom2 == true) {
          if (walls3.checkDownMoveInto(px, py)) {
            if (walls5.checkDownMoveInto(px, py)) {
              if (walls6.checkDownMoveInto(px, py)) {
            if (walls7.checkDownMoveInto(px, py)) {
              if (walls8.checkDownMoveInto(px, py)) {
                if (walls9.checkDownMoveInto(px, py)) {
                  if (walls10.checkDownMoveInto(px, py)) {
                    if (walls11.checkDownMoveInto(px, py)) {
                      if (walls16.checkDownMoveInto(px, py)) {
                        if (walls17.checkDownMoveInto(px, py)) {
                
            if (front == false) {
                                  back = false; 
                                  right = false;
                                  left = false;
                                  front = true;
                                  delay(delay);
                                } else {
                                  py+=40;
                                  delay(delay);
                                  print('s');
                                }
                        }
                      }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (sideroom3 == true) {
          if (walls3.checkDownMoveInto(px, py)) {
            if (walls6.checkDownMoveInto(px, py)) {
              if (walls7.checkDownMoveInto(px, py)) {
                if (walls8.checkDownMoveInto(px, py)) {
                  if (walls9.checkDownMoveInto(px, py)) {
                    if (walls10.checkDownMoveInto(px, py)) {
                      if (walls11.checkDownMoveInto(px, py)) {
                        if (walls12.checkDownMoveInto(px, py)) {
                          if (walls13.checkDownMoveInto(px, py)) {
                            if (walls14.checkDownMoveInto(px, py)) {
                              if (walls15.checkDownMoveInto(px, py)) {
                                if (walls16.checkDownMoveInto(px, py)) {
                                  if (walls18.checkDownMoveInto(px, py)) {
                                    if (walls19.checkDownMoveInto(px, py)) {
                                      if (front == false) {
                                  back = false; 
                                  right = false;
                                  left = false;
                                  front = true;
                                  delay(delay);
                                } else {
                                  py+=40;
                                  delay(delay);
                                  print('s');
                                }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}