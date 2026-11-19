Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3RandSequence?download=true
inline.NumInlined: 3363
inline.NumDeleted: 1190
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN19RandSequenceVisitor15newProdRandJoinEP9AstRSProdP13AstRSProdList:bb.a
  br label %.loopexit.split-lp2039

bb.gx:                                            ; preds = %bb.fm
  %i.adn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef 160) #23
  br label %.loopexit.split-lp2039

bb.gy:                                            ; preds = %.noexc858, %bb.fo
  %i.ado = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zr, i64 noundef 160) #23
  br label %.loopexit.split-lp2039

bb.gz:                                            ; preds = %_ZN5AstGtC2EP8FileLineP11AstNodeExprS3_.exit, %bb.fp
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1463

bb.ha:                                            ; preds = %.noexc881, %.noexc880, %.noexc879, %_ZN8AstRToISC2EP8FileLineP11AstNodeExpr.exit, %_ZN7AstRandC2EP8FileLineNS_10SRandomU32E.exit, %bb.fq
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hb:                                            ; preds = %.noexc865, %bb.fr
  %i.adr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef 160) #23
  br label %bb.hh

bb.hc:                                            ; preds = %.noexc875, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, %_ZN7AstMulDC2EP8FileLineP11AstNodeExprS3_.exit, %bb.ft
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hd:                                            ; preds = %.noexc871, %.noexc870, %.noexc869, %bb.fw, %bb.fu
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.he:                                            ; preds = %bb.fv
  %i.adu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aaf, i64 noundef 208) #23
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.pn501 = phi { ptr, i32 } [ %i.adt, %bb.hd ], [ %i.adu, %bb.he ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aae, i64 noundef 160) #23
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.hc
  %.pn503 = phi { ptr, i32 } [ %i.ads, %bb.hc ], [ %.pn501, %bb.hf ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef 160) #23
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hb, %bb.ha
  %.pn505 = phi { ptr, i32 } [ %i.adq, %bb.ha ], [ %.pn503, %bb.hg ], [ %i.adr, %bb.hb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef 160) #23
  br label %.thread1463

bb.hi:                                            ; preds = %bb.gb
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %.thread1448

bb.hj:                                            ; preds = %.noexc885, %bb.ge
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %.thread1434

.thread1434:                                      ; preds = %bb.hj, %bb.gg
  %eh.lpad-body888 = phi { ptr, i32 } [ %i.adw, %bb.hj ], [ %i.abl, %bb.gg ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.thread1448

bb.hk:                                            ; preds = %bb.gc
  %lpad.thr_comm.split-lp1441 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.abd, i64 noundef 232) #23
  br label %.thread1448

.thread1458:                                      ; preds = %.noexc895, %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit889, %bb.gd, %.noexc896
  %lpad.thr_comm1456 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.thread1448

.thread1448:                                      ; preds = %.thread1434, %bb.hi, %bb.hk, %.thread1458
  %.pn507.pn1452 = phi { ptr, i32 } [ %lpad.thr_comm1456, %.thread1458 ], [ %eh.lpad-body888, %.thread1434 ], [ %i.adv, %bb.hi ], [ %lpad.thr_comm.split-lp1441, %bb.hk ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abc, i64 noundef 152) #23
  br label %.thread1463

.thread1470:                                      ; preds = %.noexc901, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit898, %.noexc900
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.thread1463

bb.hl:                                            ; preds = %bb.gi
  %lpad.thr_comm.split-lp1469 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.loopexit.split-lp2039

.thread1463:                                      ; preds = %bb.hh, %bb.gz, %.thread1448, %.thread1470
  %.pn507.pn.pn1466 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread1470 ], [ %.pn505, %bb.hh ], [ %i.adp, %bb.gz ], [ %.pn507.pn1452, %.thread1448 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef 160) #23
  br label %.loopexit.split-lp2039

bb.hm:                                            ; preds = %bb.gj
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

.thread1477:                                      ; preds = %.noexc905, %bb.gl
  %lpad.thr_comm1475 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.ho

bb.hn:                                            ; preds = %bb.gk
  %lpad.thr_comm.split-lp1476 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.abv, i64 noundef 232) #23
  br label %bb.ho

bb.ho:                                            ; preds = %.thread1477, %bb.hm, %bb.hn
  %.pn511 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1476, %bb.hn ], [ %lpad.thr_comm1475, %.thread1477 ], [ %i.adx, %bb.hm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abu, i64 noundef 160) #23
  br label %.loopexit.split-lp2039

bb.hp:                                            ; preds = %.noexc.i912
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939

bb.hq:                                            ; preds = %.noexc913
  %i.adz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aea = load ptr, ptr %30, align 8, !tbaa !37  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.abz
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937: ; preds = %bb.hq
  %i.aec = load i64, ptr %i.abz, align 8, !tbaa !39
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937, %bb.hp
  %.pn513 = phi { ptr, i32 } [ %i.ady, %bb.hp ], [ %i.adz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937 ], [ %i.adz, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aby, i64 noundef 280) #23
  br label %.loopexit.split-lp2039

bb.hr:                                            ; preds = %bb.gp
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %.thread1493

bb.hs:                                            ; preds = %.noexc918, %bb.gs
  %i.aef = landingpad { ptr, i32 }
          cleanup
  br label %.thread1480

.thread1480:                                      ; preds = %bb.hs, %bb.gt
  %eh.lpad-body921 = phi { ptr, i32 } [ %i.aef, %bb.hs ], [ %i.acs, %bb.gt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.acq, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.thread1493

bb.ht:                                            ; preds = %bb.gq
  %lpad.thr_comm.split-lp1487 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 232) #23
  br label %.thread1493

.thread1501:                                      ; preds = %.noexc928, %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit922, %bb.gr, %.noexc929
  %lpad.thr_comm1499 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.thread1493

bb.hu:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit931
  %lpad.thr_comm.split-lp1500 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.loopexit.split-lp2039

.thread1493:                                      ; preds = %.thread1480, %bb.hr, %bb.ht, %.thread1501
  %.pn515.pn1496 = phi { ptr, i32 } [ %lpad.thr_comm1499, %.thread1501 ], [ %eh.lpad-body921, %.thread1480 ], [ %i.aee, %bb.hr ], [ %lpad.thr_comm.split-lp1487, %bb.ht ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aco, i64 noundef 152) #23
  br label %.loopexit.split-lp2039

bb.hv:                                            ; preds = %.lr.ph3376, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972
  %indvars.iv = phi i64 [ 0, %.lr.ph3376 ], [ %indvars.iv.next, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972 ] ; 3 uses
  %.sroa.01342.03374 = phi ptr [ %i.acz, %.lr.ph3376 ], [ %.sroa.01342.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972 ]
  %.sroa.111346.03373 = phi ptr [ %i.adc, %.lr.ph3376 ], [ %.sroa.111346.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972 ] ; 2 uses
  %.sroa.141347.03372 = phi ptr [ %i.adb, %.lr.ph3376 ], [ %.sroa.141347.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972 ] ; 2 uses
  %i.aeg = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.hw unwind label %.loopexit.split-lp2039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aeh = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.hx unwind label %bb.iw     ; 4 uses

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store i8 1, ptr %32, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.aeh, ptr noundef %i.ky, ptr noundef nonnull %i.aby, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.hy unwind label %bb.jk

bb.hy:                                            ; preds = %bb.hx
  %i.aei = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.hz unwind label %bb.jj     ; 9 uses

bb.hz:                                            ; preds = %bb.hy
  %i.aej = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ia unwind label %bb.ix     ; 4 uses

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  store i8 0, ptr %33, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.aej, ptr noundef %i.ky, ptr noundef nonnull %i.aby, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ib unwind label %bb.jh

bb.ib:                                            ; preds = %bb.ia
  %i.aek = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.ic unwind label %bb.jg     ; 3 uses

bb.ic:                                            ; preds = %bb.ib
  %i.ael = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.id unwind label %bb.iy     ; 3 uses

bb.id:                                            ; preds = %bb.ic
  %i.aem = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.ie unwind label %bb.iz     ; 7 uses

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.aem, i16 121, ptr noundef %i.ky)
          to label %.noexc940 unwind label %bb.ja

.noexc940:                                        ; preds = %bb.ie
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.aem, align 8, !tbaa !90
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.aen, ptr noundef nonnull align 8 dereferenceable(208) %i.aem, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc941 unwind label %bb.ja

.noexc941:                                        ; preds = %.noexc940
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aem)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit944 unwind label %bb.if

bb.if:                                            ; preds = %.noexc941
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aen) #22
  br label %.body942

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit944: ; preds = %.noexc941
  %i.aep = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ig unwind label %bb.iz     ; 3 uses

bb.ig:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit944
  %i.aeq = load ptr, ptr %i.add, align 8, !tbaa !343, !noalias !579 ; 2 uses
  %i.aer = load ptr, ptr %i.ade, align 8, !tbaa !344, !noalias !579
  %i.aes = load ptr, ptr %i.adf, align 8, !tbaa !345, !noalias !579
  %i.aet = ptrtoint ptr %i.aeq to i64
  %i.aeu = ptrtoint ptr %i.aer to i64
  %i.aev = sub i64 %i.aet, %i.aeu
  %i.aew = ashr exact i64 %i.aev, 3
  %i.aex = add nsw i64 %i.aew, %indvars.iv        ; 5 uses
  %i.aey = icmp sgt i64 %i.aex, -1
  br i1 %i.aey, label %bb.ih, label %bb.ik

bb.ih:                                            ; preds = %bb.ig
  %i.aez = icmp samesign ult i64 %i.aex, 64
  br i1 %i.aez, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit

bb.ij:                                            ; preds = %bb.ih
  %i.afb = lshr i64 %i.aex, 6
  br label %bb.il

bb.ik:                                            ; preds = %bb.ig
  %i.afc = ashr i64 %i.aex, 6
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.afd = phi i64 [ %i.afb, %bb.ij ], [ %i.afc, %bb.ik ] ; 2 uses
  %i.afe = getelementptr inbounds [8 x i8], ptr %i.aes, i64 %i.afd
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !346, !noalias !579
  %i.afg = shl nsw i64 %i.afd, 6
  %i.afh = sub nsw i64 %i.aex, %i.afg
  %i.afi = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.afh
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit:            ; preds = %bb.ii, %bb.il
  %storemerge.i.i.i.i = phi ptr [ %i.afi, %bb.il ], [ %i.afa, %bb.ii ]
  %i.afj = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store i8 0, ptr %34, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.aep, ptr noundef %i.ky, ptr noundef %i.afj, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.im unwind label %bb.jd

bb.im:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit
  invoke void @_ZN6AstNeqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.ael, ptr noundef %i.ky, ptr noundef nonnull %i.aem, ptr noundef nonnull %i.aep)
          to label %bb.in unwind label %bb.je

bb.in:                                            ; preds = %bb.im
  %i.afk = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.io unwind label %bb.jf     ; 8 uses

bb.io:                                            ; preds = %bb.in
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.afk, i16 121, ptr noundef %i.ky)
          to label %.noexc945 unwind label %bb.jb

.noexc945:                                        ; preds = %bb.io
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.afk, align 8, !tbaa !90
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.afl, ptr noundef nonnull align 8 dereferenceable(208) %i.afk, i32 noundef 32, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc946 unwind label %bb.jb

.noexc946:                                        ; preds = %.noexc945
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.afk)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit949 unwind label %bb.ip

bb.ip:                                            ; preds = %.noexc946
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.afl) #22
  br label %.thread1534

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit949: ; preds = %.noexc946
  %i.afn = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.iq unwind label %bb.jf     ; 8 uses

bb.iq:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit949
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.afn, i16 121, ptr noundef %i.ky)
          to label %.noexc950 unwind label %bb.jc

.noexc950:                                        ; preds = %bb.iq
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.afn, align 8, !tbaa !90
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.afo, ptr noundef nonnull align 8 dereferenceable(208) %i.afn, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc951 unwind label %bb.jc

.noexc951:                                        ; preds = %.noexc950
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.afn)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit954 unwind label %bb.ir

bb.ir:                                            ; preds = %.noexc951
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.afo) #22
  br label %.thread1534

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit954: ; preds = %.noexc951
  invoke void @_ZN7AstCondC1EP8FileLineP11AstNodeExprS3_S3_(ptr noundef nonnull align 8 dereferenceable(160) %i.aek, ptr noundef %i.ky, ptr noundef nonnull %i.ael, ptr noundef nonnull %i.afk, ptr noundef nonnull %i.afn)
          to label %bb.is unwind label %bb.jf

bb.is:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit954
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aei, i16 267, ptr noundef %i.ky)
          to label %.noexc957 unwind label %bb.ji

.noexc957:                                        ; preds = %bb.is
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.aei, align 8, !tbaa !90
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aei, i64 152
  store i64 0, ptr %i.afq, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aei, ptr noundef nonnull %i.aej)
          to label %.noexc958 unwind label %bb.ji

.noexc958:                                        ; preds = %.noexc957
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aei, ptr noundef nonnull %i.aek)
          to label %.noexc959 unwind label %bb.ji

.noexc959:                                        ; preds = %.noexc958
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstAdd, i64 16), ptr %i.aei, align 8, !tbaa !90
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aej, i64 72
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !156 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aei, i64 72 ; 2 uses
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !156
  %.not.i.i.i956 = icmp eq ptr %i.afu, %i.afs
  br i1 %.not.i.i.i956, label %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.it

bb.it:                                            ; preds = %.noexc959
  store ptr %i.afs, ptr %i.aft, align 8, !tbaa !156
  %i.afv = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.afw = add i64 %i.afv, 1
  store i64 %i.afw, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit

_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit:    ; preds = %bb.it, %.noexc959
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.aeg, i16 466, ptr noundef %i.ky)
          to label %.noexc965 unwind label %.thread1614

.noexc965:                                        ; preds = %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.aeg, align 8, !tbaa !90
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.aeg, ptr noundef nonnull %i.aei)
          to label %.noexc966 unwind label %.thread1614

.noexc966:                                        ; preds = %.noexc965
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.aeg, ptr noundef nonnull %i.aeh)
          to label %.noexc967 unwind label %.thread1614

.noexc967:                                        ; preds = %.noexc966
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aeh, i64 72
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !156 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aeg, i64 72 ; 2 uses
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !156
  %.not.i.i8.i.i961 = icmp eq ptr %i.aga, %i.afy
  br i1 %.not.i.i8.i.i961, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit968, label %bb.iu

bb.iu:                                            ; preds = %.noexc967
  store ptr %i.afy, ptr %i.afz, align 8, !tbaa !156
  %i.agb = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.agc = add i64 %i.agb, 1
  store i64 %i.agc, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit968

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit968: ; preds = %.noexc967, %bb.iu
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.aeg, align 8, !tbaa !90
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.abu, ptr noundef nonnull %i.aeg)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit971 unwind label %bb.jl

_ZN5AstIf9addThenspEP7AstNode.exit971:            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit968
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.01342.03374, i64 8 ; 2 uses
  %i.age = icmp eq ptr %i.agd, %.sroa.111346.03373
  br i1 %i.age, label %bb.iv, label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972

bb.iv:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit971
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.141347.03372, i64 8 ; 2 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !337 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 512
  br label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972

_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit972: ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit971, %bb.iv
  %.sroa.141347.1 = phi ptr [ %i.agf, %bb.iv ], [ %.sroa.141347.03372, %_ZN5AstIf9addThenspEP7AstNode.exit971 ]
  %.sroa.111346.1 = phi ptr [ %i.agh, %bb.iv ], [ %.sroa.111346.03373, %_ZN5AstIf9addThenspEP7AstNode.exit971 ]
  %.sroa.01342.1 = phi ptr [ %i.agg, %bb.iv ], [ %i.agd, %_ZN5AstIf9addThenspEP7AstNode.exit971 ] ; 2 uses
  %.not2034 = icmp eq ptr %.sroa.01342.1, %i.ada
  br i1 %.not2034, label %._crit_edge3377, label %bb.hv

bb.iw:                                            ; preds = %bb.hw
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %.thread1603

bb.ix:                                            ; preds = %bb.hz
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %.thread1607

bb.iy:                                            ; preds = %bb.ic
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %.thread1583

bb.iz:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit944, %bb.id
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %.thread1524

bb.ja:                                            ; preds = %.noexc940, %bb.ie
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %.body942

.body942:                                         ; preds = %bb.if, %bb.ja
  %eh.lpad-body943 = phi { ptr, i32 } [ %i.agm, %bb.ja ], [ %i.aeo, %bb.if ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef 208) #23
  br label %.thread1524

bb.jb:                                            ; preds = %.noexc945, %bb.io
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %.thread1534

bb.jc:                                            ; preds = %.noexc950, %bb.iq
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %.thread1534

.thread1534:                                      ; preds = %bb.jc, %bb.ir, %bb.jb, %bb.ip
  %.sink = phi ptr [ %i.afk, %bb.ip ], [ %i.afk, %bb.jb ], [ %i.afn, %bb.jc ], [ %i.afn, %bb.ir ]
  %.pn588.ph = phi { ptr, i32 } [ %i.afm, %bb.ip ], [ %i.agn, %bb.jb ], [ %i.ago, %bb.jc ], [ %i.afp, %bb.ir ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.thread1583

bb.jd:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit
  %lpad.thr_comm.split-lp1515 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aep, i64 noundef 232) #23
  br label %.thread1524

bb.je:                                            ; preds = %bb.im
  %lpad.thr_comm.split-lp1543 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.thread1524

.thread1524:                                      ; preds = %.body942, %bb.iz, %bb.jd, %bb.je
  %.pn588.pn1530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1543, %bb.je ], [ %eh.lpad-body943, %.body942 ], [ %i.agl, %bb.iz ], [ %lpad.thr_comm.split-lp1515, %bb.jd ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ael, i64 noundef 160) #23
  br label %.thread1583

bb.jf:                                            ; preds = %bb.in, %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit949, %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit954
  %lpad.thr_comm.split-lp1562 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.thread1583

.thread1583:                                      ; preds = %bb.jf, %.thread1524, %bb.iy, %.thread1534
  %.pn588.pn.pn1556 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1562, %bb.jf ], [ %.pn588.ph, %.thread1534 ], [ %i.agk, %bb.iy ], [ %.pn588.pn1530, %.thread1524 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.thread1607

bb.jg:                                            ; preds = %bb.ib
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.thread1607

bb.jh:                                            ; preds = %bb.ia
  %i.agq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef 232) #23
  br label %.thread1607

bb.ji:                                            ; preds = %.noexc958, %bb.is, %.noexc957
  %lpad.thr_comm.split-lp1590 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.thread1607

.thread1607:                                      ; preds = %.thread1583, %bb.ji, %bb.jh, %bb.jg, %bb.ix
  %.pn588.pn.pn.pn.pn1581 = phi { ptr, i32 } [ %.pn588.pn.pn1556, %.thread1583 ], [ %lpad.thr_comm.split-lp1590, %bb.ji ], [ %i.agj, %bb.ix ], [ %i.agp, %bb.jg ], [ %i.agq, %bb.jh ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aei, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.thread1603

bb.jj:                                            ; preds = %bb.hy
  %i.agr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.thread1603

bb.jk:                                            ; preds = %bb.hx
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef 232) #23
  br label %.thread1603

.thread1614:                                      ; preds = %.noexc966, %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit, %.noexc965
  %lpad.thr_comm1612 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.thread1603

bb.jl:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit968
  %lpad.thr_comm.split-lp1613 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.loopexit.split-lp2039

.thread1603:                                      ; preds = %bb.iw, %bb.jj, %bb.jk, %.thread1614, %.thread1607
  %.pn588.pn.pn.pn.pn.pn.pn1606 = phi { ptr, i32 } [ %.pn588.pn.pn.pn.pn1581, %.thread1607 ], [ %lpad.thr_comm1612, %.thread1614 ], [ %i.agi, %bb.iw ], [ %i.agr, %bb.jj ], [ %i.ags, %bb.jk ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aeg, i64 noundef 152) #23
  br label %.loopexit.split-lp2039

bb.jm:                                            ; preds = %._crit_edge3377
  %i.agt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.jn unwind label %bb.kz     ; 3 uses

bb.jn:                                            ; preds = %bb.jm
  %i.agu = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.jo unwind label %bb.la     ; 7 uses

bb.jo:                                            ; preds = %bb.jn
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.agu, i16 121, ptr noundef %i.ky)
          to label %.noexc973 unwind label %bb.lb

.noexc973:                                        ; preds = %bb.jo
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.agu, align 8, !tbaa !90
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.agv, ptr noundef nonnull align 8 dereferenceable(208) %i.agu, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc974 unwind label %bb.lb

.noexc974:                                        ; preds = %.noexc973
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.agu)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit977 unwind label %bb.jp

bb.jp:                                            ; preds = %.noexc974
  %i.agw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.agv) #22
  br label %.body975

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit977: ; preds = %.noexc974
  %i.agx = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.jq unwind label %bb.la     ; 3 uses

bb.jq:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit977
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store i8 0, ptr %35, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.agx, ptr noundef %i.ky, ptr noundef nonnull %i.aby, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.jr unwind label %bb.lc

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.agt, ptr noundef %i.ky, ptr noundef nonnull %i.agu, ptr noundef nonnull %i.agx)
          to label %bb.js unwind label %bb.ld

bb.js:                                            ; preds = %bb.jr
  %i.agy = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.jt unwind label %.thread1659 ; 5 uses

end_hunk_0
begin_hunk_1_@_ZN19RandSequenceVisitor15newProdRandJoinEP9AstRSProdP13AstRSProdList:bb.a
  br label %.thread1717

bb.lh:                                            ; preds = %.noexc987, %bb.ka
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %.body989

.body989:                                         ; preds = %bb.kb, %bb.lh
  %eh.lpad-body990 = phi { ptr, i32 } [ %i.akp, %bb.lh ], [ %i.ahj, %bb.kb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahh, i64 noundef 208) #23
  br label %.thread1717

bb.li:                                            ; preds = %_ZN7AstRandC2EP8FileLineNS_10SRandomU32E.exit996, %bb.kc
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1673

bb.lj:                                            ; preds = %.noexc994, %bb.kd
  %i.akr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ahl, i64 noundef 160) #23
  br label %.thread1673

bb.lk:                                            ; preds = %bb.kf
  %lpad.thr_comm.split-lp1665 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ahs, i64 noundef 232) #23
  br label %.thread1673

bb.ll:                                            ; preds = %.noexc1000, %bb.kg, %.noexc999
  %lpad.thr_comm.split-lp1684 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.thread1673

.thread1673:                                      ; preds = %bb.lj, %bb.li, %bb.lk, %bb.ll
  %.pn5221678 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1684, %bb.ll ], [ %i.akr, %bb.lj ], [ %i.akq, %bb.li ], [ %lpad.thr_comm.split-lp1665, %bb.lk ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahk, i64 noundef 160) #23
  br label %.thread1717

bb.lm:                                            ; preds = %.noexc1004, %_ZN9AstModDivC2EP8FileLineP11AstNodeExprS3_.exit, %.noexc1005
  %lpad.thr_comm.split-lp1700 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.thread1717

.thread1717:                                      ; preds = %bb.lm, %.thread1673, %bb.lg, %.body989
  %.pn522.pn1695 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1700, %bb.lm ], [ %eh.lpad-body990, %.body989 ], [ %i.ako, %bb.lg ], [ %.pn5221678, %.thread1673 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahg, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.ln:                                            ; preds = %bb.jy
  %i.aks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.lo:                                            ; preds = %bb.jx
  %i.akt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ahf, i64 noundef 232) #23
  br label %.thread1713

.thread1724:                                      ; preds = %.noexc1013, %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit1007, %.noexc1014
  %lpad.thr_comm1722 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.lp:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1016
  %lpad.thr_comm.split-lp1723 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.loopexit.split-lp2039

.thread1713:                                      ; preds = %bb.lf, %bb.ln, %bb.lo, %.thread1724, %.thread1717
  %.pn522.pn.pn.pn1716 = phi { ptr, i32 } [ %.pn522.pn1695, %.thread1717 ], [ %lpad.thr_comm1722, %.thread1724 ], [ %i.akn, %bb.lf ], [ %i.aks, %bb.ln ], [ %i.akt, %bb.lo ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahe, i64 noundef 152) #23
  br label %.loopexit.split-lp2039

bb.lq:                                            ; preds = %bb.kk
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %.thread1740

bb.lr:                                            ; preds = %.noexc1022, %bb.kn
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %.thread1727

.thread1727:                                      ; preds = %bb.lr, %bb.kp
  %eh.lpad-body1025 = phi { ptr, i32 } [ %i.akv, %bb.lr ], [ %i.aiv, %bb.kp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aio, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.thread1740

bb.ls:                                            ; preds = %bb.kl
  %lpad.thr_comm.split-lp1734 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ain, i64 noundef 232) #23
  br label %.thread1740

.thread1748:                                      ; preds = %.noexc1031, %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit, %bb.km, %.noexc1032
  %lpad.thr_comm1746 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.thread1740

bb.lt:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1034
  %lpad.thr_comm.split-lp1747 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.loopexit.split-lp2039

.thread1740:                                      ; preds = %.thread1727, %bb.lq, %bb.ls, %.thread1748
  %.pn527.pn1743 = phi { ptr, i32 } [ %lpad.thr_comm1746, %.thread1748 ], [ %eh.lpad-body1025, %.thread1727 ], [ %i.aku, %bb.lq ], [ %lpad.thr_comm.split-lp1734, %bb.ls ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aim, i64 noundef 152) #23
  br label %.loopexit.split-lp2039

.loopexit.split-lp2039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hv, %bb.gm, %_ZN7AstLoopC2EP8FileLineP7AstNode.exit, %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917, %bb.go, %._crit_edge3377, %_ZN5AstIf9addThenspEP7AstNode.exit986, %_ZN5AstIf9addThenspEP7AstNode.exit1019, %bb.fl, %bb.fn, %_ZN7AstNode7addNextIS_7AstLoopEEPT_S3_PT0_.exit, %._crit_edge3391, %._crit_edge3370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit, %bb.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %_ZN5AstIf9addThenspEP7AstNode.exit1037
  %lpad.loopexit.split-lp8519 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2039

bb.lu:                                            ; preds = %.noexc.i1039
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059

bb.lv:                                            ; preds = %.noexc1040
  %i.akx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aky = load ptr, ptr %39, align 8, !tbaa !37  ; 2 uses
  %i.akz = icmp eq ptr %i.aky, %i.ajd
  br i1 %i.akz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057: ; preds = %bb.lv
  %i.ala = load i64, ptr %i.ajd, align 8, !tbaa !39
  %i.alb = add i64 %i.ala, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059: ; preds = %bb.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057, %bb.lu
  %.pn530 = phi { ptr, i32 } [ %i.akw, %bb.lu ], [ %i.akx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057 ], [ %i.akx, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef 280) #23
  br label %.loopexit.split-lp2039

bb.lw:                                            ; preds = %bb.kt
  %i.alc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1767

.thread1771:                                      ; preds = %bb.kw
  %lpad.thr_comm.split-lp1754 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aju, i64 noundef 232) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.lx:                                            ; preds = %bb.kv
  %i.ald = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.ly:                                            ; preds = %bb.ku
  %i.ale = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ajt, i64 noundef 232) #23
  br label %.thread1767

.thread1778:                                      ; preds = %.noexc1050, %bb.kx, %.noexc1051
  %lpad.thr_comm1776 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.lz:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1053
  %lpad.thr_comm.split-lp1777 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.loopexit.split-lp2039

.thread1767:                                      ; preds = %bb.lw, %bb.lx, %bb.ly, %.thread1778, %.thread1771
  %.pn532.pn1770 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1754, %.thread1771 ], [ %lpad.thr_comm1776, %.thread1778 ], [ %i.alc, %bb.lw ], [ %i.ald, %bb.lx ], [ %i.ale, %bb.ly ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ajs, i64 noundef 152) #23
  br label %.loopexit.split-lp2039

bb.ma:                                            ; preds = %.lr.ph3390, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201
  %indvars.iv4679 = phi i64 [ -1, %.lr.ph3390 ], [ %indvars.iv.next4680, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ]
  %.sroa.01329.03388 = phi ptr [ %i.akb, %.lr.ph3390 ], [ %.sroa.01329.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  %.sroa.111333.03387 = phi ptr [ %i.ake, %.lr.ph3390 ], [ %.sroa.111333.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  %.sroa.141334.03386 = phi ptr [ %i.akd, %.lr.ph3390 ], [ %.sroa.141334.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.alf = load ptr, ptr %.sroa.01329.03388, align 8, !tbaa !302
  store ptr %i.alf, ptr %i.i, align 8, !tbaa !302
  %indvars.iv.next4680 = add nsw i64 %indvars.iv4679, 1 ; 11 uses
  %i.alg = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.mb:                                            ; preds = %bb.ma
  %i.alh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mc unwind label %bb.ng     ; 3 uses

bb.mc:                                            ; preds = %bb.mb
  %i.ali = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.md unwind label %bb.nh     ; 7 uses

bb.md:                                            ; preds = %bb.mc
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.ali, i16 121, ptr noundef %i.ky)
          to label %.noexc1060 unwind label %bb.ni

.noexc1060:                                       ; preds = %bb.md
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.ali, align 8, !tbaa !90
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.alj, ptr noundef nonnull align 8 dereferenceable(208) %i.ali, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1061 unwind label %bb.ni

.noexc1061:                                       ; preds = %.noexc1060
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ali)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064 unwind label %bb.me

bb.me:                                            ; preds = %.noexc1061
  %i.alk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.alj) #22
  br label %.body1062

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064: ; preds = %.noexc1061
  %i.all = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.mf unwind label %bb.nh     ; 3 uses

bb.mf:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064
  %i.alm = load ptr, ptr %i.akf, align 8, !tbaa !343, !noalias !582 ; 2 uses
  %i.aln = load ptr, ptr %i.akg, align 8, !tbaa !344, !noalias !582
  %i.alo = load ptr, ptr %i.akh, align 8, !tbaa !345, !noalias !582
  %i.alp = ptrtoint ptr %i.alm to i64
  %i.alq = ptrtoint ptr %i.aln to i64
  %i.alr = sub i64 %i.alp, %i.alq
  %i.als = ashr exact i64 %i.alr, 3
  %i.alt = add nsw i64 %i.als, %indvars.iv.next4680 ; 5 uses
  %i.alu = icmp sgt i64 %i.alt, -1
  br i1 %i.alu, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  %i.alv = icmp samesign ult i64 %i.alt, 64
  br i1 %i.alv, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.alw = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %indvars.iv.next4680
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066

bb.mi:                                            ; preds = %bb.mg
  %i.alx = lshr i64 %i.alt, 6
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mf
  %i.aly = ashr i64 %i.alt, 6
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %i.alz = phi i64 [ %i.alx, %bb.mi ], [ %i.aly, %bb.mj ] ; 2 uses
  %i.ama = getelementptr inbounds [8 x i8], ptr %i.alo, i64 %i.alz
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !346, !noalias !582
  %i.amc = shl nsw i64 %i.alz, 6
  %i.amd = sub nsw i64 %i.alt, %i.amc
  %i.ame = getelementptr inbounds [8 x i8], ptr %i.amb, i64 %i.amd
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066:        ; preds = %bb.mh, %bb.mk
  %storemerge.i.i.i.i1065 = phi ptr [ %i.ame, %bb.mk ], [ %i.alw, %bb.mh ]
  %i.amf = load ptr, ptr %storemerge.i.i.i.i1065, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  store i8 0, ptr %42, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.all, ptr noundef %i.ky, ptr noundef %i.amf, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.ml unwind label %bb.nj

bb.ml:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066
  invoke void @_ZN6AstNeqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.alh, ptr noundef %i.ky, ptr noundef nonnull %i.ali, ptr noundef nonnull %i.all)
          to label %bb.mm unwind label %bb.nk

bb.mm:                                            ; preds = %bb.ml
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.alg, i16 481, ptr noundef %i.ky)
          to label %.noexc1067 unwind label %.thread1798

.noexc1067:                                       ; preds = %bb.mm
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.alg, align 8, !tbaa !90
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alg, i64 152
  store i8 0, ptr %i.amg, align 8, !tbaa !194
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.alg, ptr noundef nonnull %i.alh)
          to label %bb.mn unwind label %.thread1798

bb.mn:                                            ; preds = %.noexc1067
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alg, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.alg, align 8, !tbaa !90
  store <4 x i8> zeroinitializer, ptr %i.amh, align 1, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.zp, ptr noundef nonnull %i.alg)
          to label %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072:   ; preds = %bb.mn
  %i.ami = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.mo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.mo:                                            ; preds = %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072
  %i.amj = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.mp unwind label %bb.nm     ; 4 uses

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  store i8 1, ptr %43, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.amj, ptr noundef %i.ky, ptr noundef nonnull %i.ajc, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.mq unwind label %bb.nr

bb.mq:                                            ; preds = %bb.mp
  %i.amk = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mr unwind label %bb.nq     ; 9 uses

bb.mr:                                            ; preds = %bb.mq
  %i.aml = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ms unwind label %bb.nn     ; 4 uses

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  store i8 0, ptr %44, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.aml, ptr noundef %i.ky, ptr noundef nonnull %i.ajc, ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.mt unwind label %bb.np

bb.mt:                                            ; preds = %bb.ms
  %i.amm = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.mu unwind label %.thread1826 ; 7 uses

bb.mu:                                            ; preds = %bb.mt
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.amm, i16 121, ptr noundef %i.ky)
          to label %.noexc1073 unwind label %bb.no

.noexc1073:                                       ; preds = %bb.mu
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.amm, align 8, !tbaa !90
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.amn, ptr noundef nonnull align 8 dereferenceable(208) %i.amm, i32 noundef 32, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1074 unwind label %bb.no

.noexc1074:                                       ; preds = %.noexc1073
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.amm)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077 unwind label %bb.mv

bb.mv:                                            ; preds = %.noexc1074
  %i.amo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.amn) #22
  br label %.thread1801

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077: ; preds = %.noexc1074
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.amk, i16 253, ptr noundef %i.ky)
          to label %.noexc1080 unwind label %.thread1826

.noexc1080:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.amk, align 8, !tbaa !90
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amk, i64 152
  store i64 0, ptr %i.amp, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.amk, ptr noundef nonnull %i.aml)
          to label %.noexc1081 unwind label %.thread1826

.noexc1081:                                       ; preds = %.noexc1080
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.amk, ptr noundef nonnull %i.amm)
          to label %.noexc1082 unwind label %.thread1826

.noexc1082:                                       ; preds = %.noexc1081
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSub, i64 16), ptr %i.amk, align 8, !tbaa !90
  %i.amq = getelementptr inbounds nuw i8, ptr %i.aml, i64 72
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !156 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amk, i64 72 ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !156
  %.not.i.i.i1079 = icmp eq ptr %i.amt, %i.amr
  br i1 %.not.i.i.i1079, label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.mw

bb.mw:                                            ; preds = %.noexc1082
  store ptr %i.amr, ptr %i.ams, align 8, !tbaa !156
  %i.amu = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.amv = add i64 %i.amu, 1
  store i64 %i.amv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit

_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit:    ; preds = %bb.mw, %.noexc1082
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ami, i16 466, ptr noundef %i.ky)
          to label %.noexc1088 unwind label %.thread1849

.noexc1088:                                       ; preds = %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ami, align 8, !tbaa !90
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ami, ptr noundef nonnull %i.amk)
          to label %.noexc1089 unwind label %.thread1849

.noexc1089:                                       ; preds = %.noexc1088
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ami, ptr noundef nonnull %i.amj)
          to label %.noexc1090 unwind label %.thread1849

.noexc1090:                                       ; preds = %.noexc1089
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amj, i64 72
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !156 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ami, i64 72 ; 2 uses
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !156
  %.not.i.i8.i.i1084 = icmp eq ptr %i.amz, %i.amx
  br i1 %.not.i.i8.i.i1084, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091, label %bb.mx

bb.mx:                                            ; preds = %.noexc1090
  store ptr %i.amx, ptr %i.amy, align 8, !tbaa !156
  %i.ana = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.anb = add i64 %i.ana, 1
  store i64 %i.anb, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091: ; preds = %.noexc1090, %bb.mx
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.ami, align 8, !tbaa !90
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.alg, ptr noundef nonnull %i.ami)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1094 unwind label %bb.ns

_ZN5AstIf9addThenspEP7AstNode.exit1094:           ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.anc = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.my unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.my:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1094
  %i.and = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mz unwind label %bb.nt     ; 3 uses

bb.mz:                                            ; preds = %bb.my
  %i.ane = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.na unwind label %bb.nu     ; 7 uses

bb.na:                                            ; preds = %bb.mz
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.ane, i16 121, ptr noundef %i.ky)
          to label %.noexc1095 unwind label %bb.nv

.noexc1095:                                       ; preds = %bb.na
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.ane, align 8, !tbaa !90
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.anf, ptr noundef nonnull align 8 dereferenceable(208) %i.ane, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1096 unwind label %bb.nv

.noexc1096:                                       ; preds = %.noexc1095
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ane)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1099 unwind label %bb.nb

bb.nb:                                            ; preds = %.noexc1096
  %i.ang = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.anf) #22
  br label %.body1097

end_hunk_1
begin_hunk_2_@_ZN19RandSequenceVisitor15newProdRandJoinEP9AstRSProdP13AstRSProdList:bb.a

bb.nj:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066
  %lpad.thr_comm.split-lp1784 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.all, i64 noundef 232) #23
  br label %.thread1790

.thread1798:                                      ; preds = %bb.mm, %.noexc1067
  %lpad.thr_comm1796 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.nl

bb.nk:                                            ; preds = %bb.ml
  %lpad.thr_comm.split-lp1797 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.thread1790

.thread1790:                                      ; preds = %.body1062, %bb.nh, %bb.nj, %bb.nk
  %.pn5571793 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1797, %bb.nk ], [ %eh.lpad-body1063, %.body1062 ], [ %i.apa, %bb.nh ], [ %lpad.thr_comm.split-lp1784, %bb.nj ]
  call void @_ZdlPvm(ptr noundef nonnull %i.alh, i64 noundef 160) #23
  br label %bb.nl

bb.nl:                                            ; preds = %.thread1798, %bb.ng, %.thread1790
  %.pn557.pn = phi { ptr, i32 } [ %.pn5571793, %.thread1790 ], [ %lpad.thr_comm1796, %.thread1798 ], [ %i.aoz, %bb.ng ]
  call void @_ZdlPvm(ptr noundef nonnull %i.alg, i64 noundef 160) #23
  br label %.loopexit.split-lp

bb.nm:                                            ; preds = %bb.mo
  %i.apc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1838

bb.nn:                                            ; preds = %bb.mr
  %i.apd = landingpad { ptr, i32 }
          cleanup
  br label %.thread1842

bb.no:                                            ; preds = %.noexc1073, %bb.mu
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %.thread1801

.thread1801:                                      ; preds = %bb.no, %bb.mv
  %eh.lpad-body1076 = phi { ptr, i32 } [ %i.ape, %bb.no ], [ %i.amo, %bb.mv ]
  call void @_ZdlPvm(ptr noundef nonnull %i.amm, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.thread1842

bb.np:                                            ; preds = %bb.ms
  %lpad.thr_comm.split-lp1809 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aml, i64 noundef 232) #23
  br label %.thread1842

.thread1826:                                      ; preds = %.noexc1080, %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077, %bb.mt, %.noexc1081
  %lpad.thr_comm1824 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.thread1842

.thread1842:                                      ; preds = %.thread1826, %bb.np, %bb.nn, %.thread1801
  %.pn560.pn1820 = phi { ptr, i32 } [ %lpad.thr_comm1824, %.thread1826 ], [ %eh.lpad-body1076, %.thread1801 ], [ %i.apd, %bb.nn ], [ %lpad.thr_comm.split-lp1809, %bb.np ]
  call void @_ZdlPvm(ptr noundef nonnull %i.amk, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.nq:                                            ; preds = %bb.mq
  %i.apf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.nr:                                            ; preds = %bb.mp
  %i.apg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.amj, i64 noundef 232) #23
  br label %.thread1838

.thread1849:                                      ; preds = %.noexc1089, %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit, %.noexc1088
  %lpad.thr_comm1847 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.ns:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091
  %lpad.thr_comm.split-lp1848 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.loopexit.split-lp

.thread1838:                                      ; preds = %bb.nm, %bb.nq, %bb.nr, %.thread1849, %.thread1842
  %.pn560.pn.pn.pn1841 = phi { ptr, i32 } [ %.pn560.pn1820, %.thread1842 ], [ %lpad.thr_comm1847, %.thread1849 ], [ %i.apc, %bb.nm ], [ %i.apf, %bb.nq ], [ %i.apg, %bb.nr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ami, i64 noundef 152) #23
  br label %.loopexit.split-lp

bb.nt:                                            ; preds = %bb.my
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.nu:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1099, %bb.mz
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %.thread1861

bb.nv:                                            ; preds = %.noexc1095, %bb.na
  %i.apj = landingpad { ptr, i32 }
          cleanup
  br label %.body1097

.body1097:                                        ; preds = %bb.nb, %bb.nv
  %eh.lpad-body1098 = phi { ptr, i32 } [ %i.apj, %bb.nv ], [ %i.ang, %bb.nb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef 208) #23
  br label %.thread1861

bb.nw:                                            ; preds = %bb.nc
  %lpad.thr_comm.split-lp1855 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.anh, i64 noundef 232) #23
  br label %.thread1861

.thread1869:                                      ; preds = %bb.ne, %.noexc1100
  %lpad.thr_comm1867 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nd
  %lpad.thr_comm.split-lp1868 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.thread1861

.thread1861:                                      ; preds = %.body1097, %bb.nu, %bb.nw, %bb.nx
  %.pn5651864 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1868, %bb.nx ], [ %eh.lpad-body1098, %.body1097 ], [ %i.api, %bb.nu ], [ %lpad.thr_comm.split-lp1855, %bb.nw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.and, i64 noundef 160) #23
  br label %bb.ny

bb.ny:                                            ; preds = %.thread1869, %bb.nt, %.thread1861
  %.pn565.pn = phi { ptr, i32 } [ %.pn5651864, %.thread1861 ], [ %lpad.thr_comm1867, %.thread1869 ], [ %i.aph, %bb.nt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.anc, i64 noundef 160) #23
  br label %.loopexit.split-lp

.lr.ph3383:                                       ; preds = %.lr.ph3383.preheader, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137
  %.02623382 = phi i32 [ %i.ark, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aox, %.lr.ph3383.preheader ] ; 2 uses
  %.sroa.01322.03381 = phi ptr [ %.sroa.01322.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.anz, %.lr.ph3383.preheader ] ; 2 uses
  %.sroa.11.03380 = phi ptr [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aof, %.lr.ph3383.preheader ] ; 2 uses
  %.sroa.14.03379 = phi ptr [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aod, %.lr.ph3383.preheader ] ; 2 uses
  %i.apk = load ptr, ptr %.sroa.01322.03381, align 8, !tbaa !550
  %i.apl = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.nz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.nz:                                            ; preds = %.lr.ph3383
  %i.apm = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.oa unwind label %bb.os     ; 12 uses

bb.oa:                                            ; preds = %bb.nz
  %i.apn = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.ob unwind label %bb.ot     ; 8 uses

bb.ob:                                            ; preds = %bb.oa
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.apn, i16 121, ptr noundef %i.ky)
          to label %.noexc1111 unwind label %bb.ou

.noexc1111:                                       ; preds = %bb.ob
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.apn, align 8, !tbaa !90
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.apo, ptr noundef nonnull align 8 dereferenceable(208) %i.apn, i32 noundef 32, i32 noundef %.02623382, i1 noundef zeroext true)
          to label %.noexc1112 unwind label %bb.ou

.noexc1112:                                       ; preds = %.noexc1111
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.apn)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115 unwind label %bb.oc

bb.oc:                                            ; preds = %.noexc1112
  %i.app = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.apo) #22
  br label %.body1113

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115: ; preds = %.noexc1112
  %i.apq = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.od unwind label %bb.ot     ; 4 uses

bb.od:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115
  %i.apr = load ptr, ptr %i.akf, align 8, !tbaa !343, !noalias !585 ; 2 uses
  %i.aps = load ptr, ptr %i.akg, align 8, !tbaa !344, !noalias !585
  %i.apt = load ptr, ptr %i.akh, align 8, !tbaa !345, !noalias !585
  %i.apu = ptrtoint ptr %i.apr to i64
  %i.apv = ptrtoint ptr %i.aps to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = ashr exact i64 %i.apw, 3
  %i.apy = add nsw i64 %i.apx, %indvars.iv.next4680 ; 5 uses
  %i.apz = icmp sgt i64 %i.apy, -1
  br i1 %i.apz, label %bb.oe, label %bb.oh

bb.oe:                                            ; preds = %bb.od
  %i.aqa = icmp samesign ult i64 %i.apy, 64
  br i1 %i.aqa, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.aqb = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %indvars.iv.next4680
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117

bb.og:                                            ; preds = %bb.oe
  %i.aqc = lshr i64 %i.apy, 6
  br label %bb.oi

bb.oh:                                            ; preds = %bb.od
  %i.aqd = ashr i64 %i.apy, 6
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %i.aqe = phi i64 [ %i.aqc, %bb.og ], [ %i.aqd, %bb.oh ] ; 2 uses
  %i.aqf = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.aqe
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !346, !noalias !585
  %i.aqh = shl nsw i64 %i.aqe, 6
  %i.aqi = sub nsw i64 %i.apy, %i.aqh
  %i.aqj = getelementptr inbounds [8 x i8], ptr %i.aqg, i64 %i.aqi
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117:        ; preds = %bb.of, %bb.oi
  %storemerge.i.i.i.i1116 = phi ptr [ %i.aqj, %bb.oi ], [ %i.aqb, %bb.of ]
  %i.aqk = load ptr, ptr %storemerge.i.i.i.i1116, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store i8 0, ptr %46, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.apq, ptr noundef %i.ky, ptr noundef %i.aqk, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.oj unwind label %bb.ov

bb.oj:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.apm, i16 256, ptr noundef %i.ky)
          to label %.noexc1121 unwind label %.thread1892

.noexc1121:                                       ; preds = %bb.oj
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.apm, align 8, !tbaa !90
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apm, i64 152
  store i64 0, ptr %i.aql, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.apm, ptr noundef nonnull %i.apn)
          to label %.noexc1122 unwind label %.thread1892

.noexc1122:                                       ; preds = %.noexc1121
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.apm, ptr noundef nonnull %i.apq)
          to label %.noexc1123 unwind label %.thread1892

.noexc1123:                                       ; preds = %.noexc1122
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV5AstEq, i64 16), ptr %i.apm, align 8, !tbaa !90
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apn, i64 72
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !156 ; 3 uses
  %.not.i1118 = icmp eq ptr %i.aqn, null
  br i1 %.not.i1118, label %.noexc11.i, label %bb.ok

bb.ok:                                            ; preds = %.noexc1123
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.apq, i64 72 ; 2 uses
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !156
  %.not9.i = icmp eq ptr %i.aqp, null
  br i1 %.not9.i, label %.noexc11.i, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.aqq = load ptr, ptr %i.aqn, align 8, !tbaa !90
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 432
  %i.aqs = load ptr, ptr %i.aqr, align 8
  %i.aqt = invoke noundef zeroext i1 %i.aqs(ptr noundef nonnull align 8 dereferenceable(162) %i.aqn)
          to label %.noexc1124 unwind label %.thread1892, !inline_history !586

.noexc1124:                                       ; preds = %bb.ol
  br i1 %i.aqt, label %.noexc11.i, label %bb.om

bb.om:                                            ; preds = %.noexc1124
  %i.aqu = load ptr, ptr %i.aqo, align 8, !tbaa !156 ; 2 uses
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !90
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 432
  %i.aqx = load ptr, ptr %i.aqw, align 8
  %i.aqy = invoke noundef zeroext i1 %i.aqx(ptr noundef nonnull align 8 dereferenceable(162) %i.aqu)
          to label %.noexc1125 unwind label %.thread1892, !inline_history !586

.noexc1125:                                       ; preds = %bb.om
  br i1 %i.aqy, label %.noexc11.i, label %.noexc.i1119

.noexc.i1119:                                     ; preds = %.noexc1125
  %i.aqz = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.apm, i8 1)
          to label %.noexc1126 unwind label %.thread1892 ; 2 uses

.noexc1126:                                       ; preds = %.noexc.i1119
  %i.ara = getelementptr inbounds nuw i8, ptr %i.apm, i64 72 ; 2 uses
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !156
  %.not.i.i.i1120 = icmp eq ptr %i.arb, %i.aqz
  br i1 %.not.i.i.i1120, label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.on

bb.on:                                            ; preds = %.noexc1126
  store ptr %i.aqz, ptr %i.ara, align 8, !tbaa !156
  br label %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i

.noexc11.i:                                       ; preds = %.noexc1125, %.noexc1124, %bb.ok, %.noexc1123
  %i.arc = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.apm, i8 8)
          to label %.noexc1127 unwind label %.thread1892 ; 2 uses

.noexc1127:                                       ; preds = %.noexc11.i
  %i.ard = getelementptr inbounds nuw i8, ptr %i.apm, i64 72 ; 2 uses
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !156
  %.not.i.i10.i = icmp eq ptr %i.are, %i.arc
  br i1 %.not.i.i10.i, label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.oo

bb.oo:                                            ; preds = %.noexc1127
  store ptr %i.arc, ptr %i.ard, align 8, !tbaa !156
  br label %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i

_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i:     ; preds = %bb.oo, %bb.on
  %i.arf = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.arg = add i64 %i.arf, 1
  store i64 %i.arg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit

_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit:     ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i, %.noexc1127, %.noexc1126
  %i.arh = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.apk, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN11AstNodeStmt9cloneTreeEbb.exit unwind label %.thread1905 ; 2 uses

_ZN11AstNodeStmt9cloneTreeEbb.exit:               ; preds = %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.apl, i16 481, ptr noundef %i.ky)
          to label %.noexc1130 unwind label %.thread1905

.noexc1130:                                       ; preds = %_ZN11AstNodeStmt9cloneTreeEbb.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.apl, align 8, !tbaa !90
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apl, i64 152
  store i8 0, ptr %i.ari, align 8, !tbaa !194
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.apl, ptr noundef nonnull %i.apm)
          to label %.noexc1131 unwind label %.thread1905

.noexc1131:                                       ; preds = %.noexc1130
  %.not.i.i.i.i1129 = icmp eq ptr %i.arh, null
  br i1 %.not.i.i.i.i1129, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %.noexc1131
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.apl, ptr noundef nonnull %i.arh)
          to label %bb.oq unwind label %.thread1905

bb.oq:                                            ; preds = %.noexc1131, %bb.op
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apl, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.apl, align 8, !tbaa !90
  store <4 x i8> zeroinitializer, ptr %i.arj, align 1, !tbaa !195
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.anc, ptr noundef nonnull %i.apl)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1136 unwind label %bb.ow

_ZN5AstIf9addThenspEP7AstNode.exit1136:           ; preds = %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  %i.ark = add i32 %.02623382, -1
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.01322.03381, i64 8 ; 2 uses
  %i.arm = icmp eq ptr %i.arl, %.sroa.11.03380
  br i1 %i.arm, label %bb.or, label %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137

bb.or:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1136
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.14.03379, i64 8 ; 2 uses
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !333 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 512
  br label %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137

_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137: ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1136, %bb.or
  %.sroa.14.1 = phi ptr [ %i.arn, %bb.or ], [ %.sroa.14.03379, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ]
  %.sroa.11.1 = phi ptr [ %i.arp, %bb.or ], [ %.sroa.11.03380, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ]
  %.sroa.01322.1 = phi ptr [ %i.aro, %bb.or ], [ %i.arl, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ] ; 2 uses
  %.not2036 = icmp eq ptr %.sroa.01322.1, %i.aob
  br i1 %.not2036, label %._crit_edge3384, label %.lr.ph3383

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph3383, %bb.ma, %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072, %_ZN5AstIf9addThenspEP7AstNode.exit1094, %_ZN5AstIf9addThenspEP7AstNode.exit1195, %_ZN5AstIf9addThenspEP7AstNode.exit1164, %._crit_edge3384, %bb.mn, %bb.nf, %_ZN5AstIf9addThenspEP7AstNode.exit1105, %_ZNSt13unordered_mapIP13AstRSProdItemSt5dequeIP11AstNodeStmtSaIS4_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S6_EEEixERSC_.exit1107, %bb.qm
  %lpad.loopexit.split-lp7472 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.os:                                            ; preds = %bb.nz
  %i.arq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1897

bb.ot:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115, %bb.oa
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1882

bb.ou:                                            ; preds = %.noexc1111, %bb.ob
  %i.ars = landingpad { ptr, i32 }
          cleanup
  br label %.body1113

.body1113:                                        ; preds = %bb.oc, %bb.ou
  %eh.lpad-body1114 = phi { ptr, i32 } [ %i.ars, %bb.ou ], [ %i.app, %bb.oc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.apn, i64 noundef 208) #23
  br label %.thread1882

bb.ov:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117
  %lpad.thr_comm.split-lp1875 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.apq, i64 noundef 232) #23
  br label %.thread1882

.thread1892:                                      ; preds = %.noexc.i1119, %bb.om, %bb.ol, %.noexc1122, %.noexc1121, %bb.oj, %.noexc11.i
  %lpad.thr_comm1890 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.thread1882

.thread1882:                                      ; preds = %.body1113, %bb.ot, %bb.ov, %.thread1892
  %.pn5791886 = phi { ptr, i32 } [ %lpad.thr_comm1890, %.thread1892 ], [ %eh.lpad-body1114, %.body1113 ], [ %i.arr, %bb.ot ], [ %lpad.thr_comm.split-lp1875, %bb.ov ]
  call void @_ZdlPvm(ptr noundef nonnull %i.apm, i64 noundef 160) #23
  br label %.thread1897

.thread1905:                                      ; preds = %bb.op, %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, %_ZN11AstNodeStmt9cloneTreeEbb.exit, %.noexc1130
  %lpad.thr_comm1903 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.thread1897

bb.ow:                                            ; preds = %bb.oq
  %lpad.thr_comm.split-lp1904 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.loopexit.split-lp

.thread1897:                                      ; preds = %bb.os, %.thread1882, %.thread1905
  %.pn579.pn1900 = phi { ptr, i32 } [ %lpad.thr_comm1903, %.thread1905 ], [ %i.arq, %bb.os ], [ %.pn5791886, %.thread1882 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.apl, i64 noundef 160) #23
  br label %.loopexit.split-lp

bb.ox:                                            ; preds = %._crit_edge3384
  %i.art = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.oy unwind label %bb.qo     ; 4 uses

bb.oy:                                            ; preds = %bb.ox
  %i.aru = load ptr, ptr %i.akf, align 8, !tbaa !343, !noalias !587 ; 2 uses
  %i.arv = load ptr, ptr %i.akg, align 8, !tbaa !344, !noalias !587
  %i.arw = load ptr, ptr %i.akh, align 8, !tbaa !345, !noalias !587
  %i.arx = ptrtoint ptr %i.aru to i64
  %i.ary = ptrtoint ptr %i.arv to i64
  %i.arz = sub i64 %i.arx, %i.ary
  %i.asa = ashr exact i64 %i.arz, 3
  %i.asb = add nsw i64 %i.asa, %indvars.iv.next4680 ; 5 uses
  %i.asc = icmp sgt i64 %i.asb, -1
  br i1 %i.asc, label %bb.oz, label %bb.pc

bb.oz:                                            ; preds = %bb.oy
  %i.asd = icmp samesign ult i64 %i.asb, 64
  br i1 %i.asd, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %indvars.iv.next4680
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139

bb.pb:                                            ; preds = %bb.oz
  %i.asf = lshr i64 %i.asb, 6
  br label %bb.pd

bb.pc:                                            ; preds = %bb.oy
  %i.asg = ashr i64 %i.asb, 6
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.ash = phi i64 [ %i.asf, %bb.pb ], [ %i.asg, %bb.pc ] ; 2 uses
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.ash
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !346, !noalias !587
  %i.ask = shl nsw i64 %i.ash, 6
  %i.asl = sub nsw i64 %i.asb, %i.ask
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.asj, i64 %i.asl
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139:        ; preds = %bb.pa, %bb.pd
  %storemerge.i.i.i.i1138 = phi ptr [ %i.asm, %bb.pd ], [ %i.ase, %bb.pa ]
  %i.asn = load ptr, ptr %storemerge.i.i.i.i1138, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  store i8 1, ptr %47, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.art, ptr noundef %i.ky, ptr noundef %i.asn, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.pe unwind label %bb.qt

bb.pe:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139
  %i.aso = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.pf unwind label %bb.qs     ; 9 uses

bb.pf:                                            ; preds = %bb.pe
  %i.asp = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.pg unwind label %bb.qp     ; 4 uses

bb.pg:                                            ; preds = %bb.pf
  %i.asq = load ptr, ptr %i.akf, align 8, !tbaa !343, !noalias !588 ; 2 uses
  %i.asr = load ptr, ptr %i.akg, align 8, !tbaa !344, !noalias !588
  %i.ass = load ptr, ptr %i.akh, align 8, !tbaa !345, !noalias !588
  %i.ast = ptrtoint ptr %i.asq to i64
  %i.asu = ptrtoint ptr %i.asr to i64
  %i.asv = sub i64 %i.ast, %i.asu
  %i.asw = ashr exact i64 %i.asv, 3
  %i.asx = add nsw i64 %i.asw, %indvars.iv.next4680 ; 5 uses
  %i.asy = icmp sgt i64 %i.asx, -1
  br i1 %i.asy, label %bb.ph, label %bb.pk

bb.ph:                                            ; preds = %bb.pg
  %i.asz = icmp samesign ult i64 %i.asx, 64
  br i1 %i.asz, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %indvars.iv.next4680
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141

bb.pj:                                            ; preds = %bb.ph
  %i.atb = lshr i64 %i.asx, 6
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pg
  %i.atc = ashr i64 %i.asx, 6
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %i.atd = phi i64 [ %i.atb, %bb.pj ], [ %i.atc, %bb.pk ] ; 2 uses
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.ass, i64 %i.atd
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !346, !noalias !588
  %i.atg = shl nsw i64 %i.atd, 6
  %i.ath = sub nsw i64 %i.asx, %i.atg
  %i.ati = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.ath
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141:        ; preds = %bb.pi, %bb.pl
  %storemerge.i.i.i.i1140 = phi ptr [ %i.ati, %bb.pl ], [ %i.ata, %bb.pi ]
  %i.atj = load ptr, ptr %storemerge.i.i.i.i1140, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  store i8 0, ptr %48, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.asp, ptr noundef %i.ky, ptr noundef %i.atj, ptr noundef nonnull align 1 dereferenceable(1) %48)
          to label %bb.pm unwind label %bb.qr

bb.pm:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141
  %i.atk = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.pn unwind label %.thread1933 ; 7 uses

bb.pn:                                            ; preds = %bb.pm
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.atk, i16 121, ptr noundef %i.ky)
          to label %.noexc1142 unwind label %bb.qq

.noexc1142:                                       ; preds = %bb.pn
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.atk, align 8, !tbaa !90
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.atl, ptr noundef nonnull align 8 dereferenceable(208) %i.atk, i32 noundef 32, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1143 unwind label %bb.qq

.noexc1143:                                       ; preds = %.noexc1142
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.atk)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146 unwind label %bb.po

bb.po:                                            ; preds = %.noexc1143
  %i.atm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.atl) #22
  br label %.thread1908

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146: ; preds = %.noexc1143
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aso, i16 253, ptr noundef %i.ky)
          to label %.noexc1149 unwind label %.thread1933

.noexc1149:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.aso, align 8, !tbaa !90
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aso, i64 152
  store i64 0, ptr %i.atn, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aso, ptr noundef nonnull %i.asp)
          to label %.noexc1150 unwind label %.thread1933

.noexc1150:                                       ; preds = %.noexc1149
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aso, ptr noundef nonnull %i.atk)
          to label %.noexc1151 unwind label %.thread1933

.noexc1151:                                       ; preds = %.noexc1150
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSub, i64 16), ptr %i.aso, align 8, !tbaa !90
  %i.ato = getelementptr inbounds nuw i8, ptr %i.asp, i64 72
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !156 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aso, i64 72 ; 2 uses
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !156
  %.not.i.i.i1148 = icmp eq ptr %i.atr, %i.atp
  br i1 %.not.i.i.i1148, label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152, label %bb.pp

bb.pp:                                            ; preds = %.noexc1151
  store ptr %i.atp, ptr %i.atq, align 8, !tbaa !156
  %i.ats = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.att = add i64 %i.ats, 1
  store i64 %i.att, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152

_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152: ; preds = %bb.pp, %.noexc1151
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.aoy, i16 466, ptr noundef %i.ky)
          to label %.noexc1158 unwind label %.thread1956

.noexc1158:                                       ; preds = %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.aoy, align 8, !tbaa !90
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.aoy, ptr noundef nonnull %i.aso)
          to label %.noexc1159 unwind label %.thread1956

.noexc1159:                                       ; preds = %.noexc1158
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.aoy, ptr noundef nonnull %i.art)
          to label %.noexc1160 unwind label %.thread1956

.noexc1160:                                       ; preds = %.noexc1159
  %i.atu = getelementptr inbounds nuw i8, ptr %i.art, i64 72
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !156 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aoy, i64 72 ; 2 uses
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !156
  %.not.i.i8.i.i1154 = icmp eq ptr %i.atx, %i.atv
  br i1 %.not.i.i8.i.i1154, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161, label %bb.pq

bb.pq:                                            ; preds = %.noexc1160
  store ptr %i.atv, ptr %i.atw, align 8, !tbaa !156
  %i.aty = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.atz = add i64 %i.aty, 1
  store i64 %i.atz, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161: ; preds = %.noexc1160, %bb.pq
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.aoy, align 8, !tbaa !90
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.anc, ptr noundef nonnull %i.aoy)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1164 unwind label %bb.qu

_ZN5AstIf9addThenspEP7AstNode.exit1164:           ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.aua = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.pr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.pr:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1164
  %i.aub = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.ps unwind label %bb.qv     ; 3 uses

bb.ps:                                            ; preds = %bb.pr
  %i.auc = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.pt unwind label %bb.qw     ; 7 uses

bb.pt:                                            ; preds = %bb.ps
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.auc, i16 121, ptr noundef %i.ky)
          to label %.noexc1165 unwind label %bb.qx

.noexc1165:                                       ; preds = %bb.pt
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.auc, align 8, !tbaa !90
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.aud, ptr noundef nonnull align 8 dereferenceable(208) %i.auc, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1166 unwind label %bb.qx

.noexc1166:                                       ; preds = %.noexc1165
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.auc)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169 unwind label %bb.pu

bb.pu:                                            ; preds = %.noexc1166
  %i.aue = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aud) #22
  br label %.body1167

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169: ; preds = %.noexc1166
  %i.auf = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.pv unwind label %bb.qw     ; 3 uses

bb.pv:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169
  %i.aug = load ptr, ptr %i.akf, align 8, !tbaa !343, !noalias !589 ; 2 uses
  %i.auh = load ptr, ptr %i.akg, align 8, !tbaa !344, !noalias !589
  %i.aui = load ptr, ptr %i.akh, align 8, !tbaa !345, !noalias !589
  %i.auj = ptrtoint ptr %i.aug to i64
  %i.auk = ptrtoint ptr %i.auh to i64
  %i.aul = sub i64 %i.auj, %i.auk
  %i.aum = ashr exact i64 %i.aul, 3
  %i.aun = add nsw i64 %i.aum, %indvars.iv.next4680 ; 5 uses
  %i.auo = icmp sgt i64 %i.aun, -1
  br i1 %i.auo, label %bb.pw, label %bb.pz

bb.pw:                                            ; preds = %bb.pv
  %i.aup = icmp samesign ult i64 %i.aun, 64
  br i1 %i.aup, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.auq = getelementptr inbounds [8 x i8], ptr %i.aug, i64 %indvars.iv.next4680
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171

bb.py:                                            ; preds = %bb.pw
  %i.aur = lshr i64 %i.aun, 6
  br label %bb.qa

bb.pz:                                            ; preds = %bb.pv
  %i.aus = ashr i64 %i.aun, 6
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.aut = phi i64 [ %i.aur, %bb.py ], [ %i.aus, %bb.pz ] ; 2 uses
  %i.auu = getelementptr inbounds [8 x i8], ptr %i.aui, i64 %i.aut
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !346, !noalias !589
  %i.auw = shl nsw i64 %i.aut, 6
  %i.aux = sub nsw i64 %i.aun, %i.auw
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.auv, i64 %i.aux
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171:        ; preds = %bb.px, %bb.qa
  %storemerge.i.i.i.i1170 = phi ptr [ %i.auy, %bb.qa ], [ %i.auq, %bb.px ]
  %i.auz = load ptr, ptr %storemerge.i.i.i.i1170, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  store i8 0, ptr %49, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.auf, ptr noundef %i.ky, ptr noundef %i.auz, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.qb unwind label %bb.rb

bb.qb:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171
  invoke void @_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.aub, ptr noundef %i.ky, ptr noundef nonnull %i.auc, ptr noundef nonnull %i.auf)
          to label %bb.qc unwind label %.thread2013

.thread2013:                                      ; preds = %bb.qb
  %lpad.thr_comm19962015 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %.thread2003

bb.qc:                                            ; preds = %bb.qb
  %i.ava = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.qd unwind label %bb.rc     ; 8 uses

bb.qd:                                            ; preds = %bb.qc
  %i.avb = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.qe unwind label %bb.qy     ; 4 uses

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  store i8 1, ptr %50, align 1, !tbaa !155
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.avb, ptr noundef %i.ky, ptr noundef nonnull %i.kz, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.qf unwind label %bb.ra

bb.qf:                                            ; preds = %bb.qe
  %i.avc = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.qg unwind label %.thread1984 ; 8 uses

bb.qg:                                            ; preds = %bb.qf
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.avc, i16 121, ptr noundef %i.ky)
          to label %.noexc1174 unwind label %bb.qz

.noexc1174:                                       ; preds = %bb.qg
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.avc, align 8, !tbaa !90
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.avd, ptr noundef nonnull align 8 dereferenceable(208) %i.avc, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1175 unwind label %bb.qz

.noexc1175:                                       ; preds = %.noexc1174
  %i.ave = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.avc, i8 1)
          to label %.noexc.i1172 unwind label %bb.qi ; 2 uses

.noexc.i1172:                                     ; preds = %.noexc1175
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avc, i64 72 ; 2 uses
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !156
  %.not.i.i.i1173 = icmp eq ptr %i.avg, %i.ave
  br i1 %.not.i.i.i1173, label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178, label %bb.qh

bb.qh:                                            ; preds = %.noexc.i1172
  store ptr %i.ave, ptr %i.avf, align 8, !tbaa !156
  %i.avh = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.avi = add i64 %i.avh, 1
  store i64 %i.avi, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178

bb.qi:                                            ; preds = %.noexc1175
  %i.avj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.avd) #22
  br label %.thread1959

_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178:  ; preds = %bb.qh, %.noexc.i1172
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ava, i16 466, ptr noundef %i.ky)
          to label %.noexc1184 unwind label %.thread1984

.noexc1184:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ava, align 8, !tbaa !90
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ava, ptr noundef nonnull %i.avc)
          to label %.noexc1185 unwind label %.thread1984

.noexc1185:                                       ; preds = %.noexc1184
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ava, ptr noundef nonnull %i.avb)
          to label %.noexc1186 unwind label %.thread1984

.noexc1186:                                       ; preds = %.noexc1185
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avb, i64 72
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !156 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ava, i64 72 ; 2 uses
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !156
  %.not.i.i8.i.i1180 = icmp eq ptr %i.avn, %i.avl
  br i1 %.not.i.i8.i.i1180, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187, label %bb.qj

bb.qj:                                            ; preds = %.noexc1186
  store ptr %i.avl, ptr %i.avm, align 8, !tbaa !156
  %i.avo = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  %i.avp = add i64 %i.avo, 1
  store i64 %i.avp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !117
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187: ; preds = %.noexc1186, %bb.qj
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.ava, align 8, !tbaa !90
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aua, i16 481, ptr noundef %i.ky)
          to label %.noexc1189 unwind label %.thread2028

.noexc1189:                                       ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.aua, align 8, !tbaa !90
  %i.avq = getelementptr inbounds nuw i8, ptr %i.aua, i64 152
  store i8 0, ptr %i.avq, align 8, !tbaa !194
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aua, ptr noundef nonnull %i.aub)
          to label %.noexc1190 unwind label %.thread2028

.noexc1190:                                       ; preds = %.noexc1189
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aua, ptr noundef nonnull %i.ava)
          to label %bb.qk unwind label %.thread2028

bb.qk:                                            ; preds = %.noexc1190
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aua, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.aua, align 8, !tbaa !90
  store <4 x i8> zeroinitializer, ptr %i.avr, align 1, !tbaa !195
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.anc, ptr noundef nonnull %i.aua)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1195 unwind label %bb.rd

_ZN5AstIf9addThenspEP7AstNode.exit1195:           ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.avs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.ql unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ql:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1195
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.avs, i16 434, ptr noundef %i.ky)
          to label %bb.qm unwind label %bb.re

bb.qm:                                            ; preds = %bb.ql
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstJumpGo, i64 16), ptr %i.avs, align 8, !tbaa !90
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 152
  store ptr %i.zp, ptr %i.avt, align 8, !tbaa !159
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.anc, ptr noundef nonnull %i.avs)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5AstIf9addThenspEP7AstNode.exit1200:           ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.01329.03388, i64 8 ; 2 uses
  %i.avv = icmp eq ptr %i.avu, %.sroa.111333.03387
  br i1 %i.avv, label %bb.qn, label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201

bb.qn:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1200
  %i.avw = getelementptr inbounds nuw i8, ptr %.sroa.141334.03386, i64 8 ; 2 uses
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !337 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 512
  br label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201

_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201: ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1200, %bb.qn
  %.sroa.141334.1 = phi ptr [ %i.avw, %bb.qn ], [ %.sroa.141334.03386, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ]
  %.sroa.111333.1 = phi ptr [ %i.avy, %bb.qn ], [ %.sroa.111333.03387, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ]
  %.sroa.01329.1 = phi ptr [ %i.avx, %bb.qn ], [ %i.avu, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ] ; 2 uses
  %.not2035 = icmp eq ptr %.sroa.01329.1, %i.akc
  br i1 %.not2035, label %._crit_edge3391, label %bb.ma

bb.qo:                                            ; preds = %bb.ox
  %i.avz = landingpad { ptr, i32 }
          cleanup
  br label %.thread1945

bb.qp:                                            ; preds = %bb.pf
  %i.awa = landingpad { ptr, i32 }
          cleanup
  br label %.thread1949

bb.qq:                                            ; preds = %.noexc1142, %bb.pn
  %i.awb = landingpad { ptr, i32 }
          cleanup
  br label %.thread1908

.thread1908:                                      ; preds = %bb.qq, %bb.po
  %eh.lpad-body1145 = phi { ptr, i32 } [ %i.awb, %bb.qq ], [ %i.atm, %bb.po ]
  call void @_ZdlPvm(ptr noundef nonnull %i.atk, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.thread1949

bb.qr:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141
  %lpad.thr_comm.split-lp1916 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
end_hunk_2
