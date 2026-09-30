Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl16extractCodewordsERNS_3MatERSt6vectorIhSaIhEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
bb.ax:                                            ; preds = %bb.aa, %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn146.pn = phi { ptr, i32 } [ %i.dl, %bb.ax ], [ %i.dk, %bb.aw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn146.pn.pn = phi { ptr, i32 } [ %.pn146.pn, %bb.ay ], [ %i.dj, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit256

bb.ba:                                            ; preds = %bb.ab
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ae, %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn150.pn = phi { ptr, i32 } [ %i.do, %bb.bc ], [ %i.dn, %bb.bb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.bd ], [ %i.dm, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit256

bb.bf:                                            ; preds = %bb.w, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  store double 1.100000e+02, ptr %52, align 8, !tbaa !77
  %i.dp = getelementptr inbounds nuw i8, ptr %52, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !302
  store i32 6, ptr %11, align 4, !tbaa !139, !noalias !302
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 7, ptr %i.dq, align 4, !tbaa !140, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !302
  store i64 9223372034707292160, ptr %12, align 8, !noalias !302
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !302
  %i.dr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.bh unwind label %bb.bo     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  %i.ds = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.bi unwind label %.thread317 ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.dt = load i32, ptr %i.bj, align 4, !tbaa !132 ; 2 uses
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = sub i64 %i.ds, %i.du                    ; 3 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
          to label %.noexc195 unwind label %.thread317

.noexc195:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.not345 = icmp eq i64 %i.ds, %i.du
  br i1 %.not345, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.bk
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #30
          to label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i unwind label %.thread317 ; 2 uses

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  %.pre = load i32, ptr %i.bj, align 4, !tbaa !132
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.bk
  %i.dz = phi i32 [ %.pre, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.dt, %bb.bk ]
  %.sroa.0259.8 = phi ptr [ %i.dx, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.bk ] ; 4 uses
  %.sroa.40.8 = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !303
  store i64 9223372034707292160, ptr %9, align 8, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !303
  store i32 7, ptr %10, align 4, !tbaa !139, !noalias !303
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !140, !noalias !303
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.bl unwind label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit351

bb.bl:                                            ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !303
  %i.ec = getelementptr inbounds nuw i8, ptr %54, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !304
  store i64 9223372034707292160, ptr %7, align 8, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !304
  store i32 0, ptr %8, align 4, !tbaa !139, !noalias !304
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 6, ptr %i.ed, align 4, !tbaa !140, !noalias !304
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %i.ec, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.bm unwind label %.loopexit351.loopexit

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !304
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %56, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %56, i64 84 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %56, i64 12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %56, i64 24 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %56, i64 128 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %55, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %55, i64 84 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %55, i64 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %55, i64 128 ; 4 uses
  br label %bb.bq

.preheader348:                                    ; preds = %._crit_edge482
  %i.es = getelementptr inbounds nuw i8, ptr %54, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.es) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  %i.et = load i32, ptr %i.k, align 16, !tbaa !99
  %i.eu = sext i32 %i.et to i64                   ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !61 ; 2 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.eu
  br i1 %i.fb, label %bb.dn, label %bb.do

bb.bn:                                            ; preds = %bb.bf
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bg
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn154 = phi { ptr, i32 } [ %i.fd, %bb.bo ], [ %i.fc, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit256

.thread317:                                       ; preds = %bb.bh, %bb.bj, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit256

.loopexit351.loopexit:                            ; preds = %bb.bl
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #27
  br label %.loopexit351

bb.bq:                                            ; preds = %bb.bm, %._crit_edge482
  %.096.idx491 = phi i64 [ 0, %bb.bm ], [ %.096.add, %._crit_edge482 ] ; 2 uses
  %.098490 = phi i1 [ true, %bb.bm ], [ %.199.lcssa, %._crit_edge482 ] ; 3 uses
  %.sroa.40.0489 = phi ptr [ %.sroa.40.8, %bb.bm ], [ %.sroa.40.1.lcssa, %._crit_edge482 ] ; 2 uses
  %.sroa.20.0488 = phi ptr [ %.sroa.0259.8, %bb.bm ], [ %.sroa.20.1.lcssa, %._crit_edge482 ] ; 2 uses
  %.sroa.0259.0487 = phi ptr [ %.sroa.0259.8, %bb.bm ], [ %.sroa.0259.1.lcssa, %._crit_edge482 ] ; 2 uses
  %.096.ptr492 = getelementptr inbounds nuw i8, ptr %54, i64 %.096.idx491 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.096.ptr492, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !132 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %.lr.ph481, label %._crit_edge482

.lr.ph481:                                        ; preds = %bb.bq
  %i.fj = lshr i32 %i.fh, 1                       ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.096.ptr492, i64 8 ; 4 uses
  %58 = trunc i32 %i.fj to i1
  %59 = xor i1 %.098490, %58
  br label %bb.br

._crit_edge482:                                   ; preds = %._crit_edge456, %bb.bq
  %.sroa.0259.1.lcssa = phi ptr [ %.sroa.0259.0487, %bb.bq ], [ %.sroa.0259.2.lcssa, %._crit_edge456 ] ; 15 uses
  %.sroa.20.1.lcssa = phi ptr [ %.sroa.20.0488, %bb.bq ], [ %.sroa.20.2.lcssa, %._crit_edge456 ] ; 2 uses
  %.sroa.40.1.lcssa = phi ptr [ %.sroa.40.0489, %bb.bq ], [ %.sroa.40.2.lcssa, %._crit_edge456 ] ; 4 uses
  %.199.lcssa = phi i1 [ %.098490, %bb.bq ], [ %59, %._crit_edge456 ]
  %.096.add = add nuw nsw i64 %.096.idx491, 208   ; 2 uses
  %.not157 = icmp eq i64 %.096.add, 416
  br i1 %.not157, label %.preheader348, label %bb.bq

bb.br:                                            ; preds = %.lr.ph481, %._crit_edge456
  %.095479.in = phi i32 [ %i.fj, %.lr.ph481 ], [ %.095479, %._crit_edge456 ] ; 2 uses
  %.199478 = phi i1 [ %.098490, %.lr.ph481 ], [ %i.jk, %._crit_edge456 ] ; 2 uses
  %.sroa.40.1477 = phi ptr [ %.sroa.40.0489, %.lr.ph481 ], [ %.sroa.40.2.lcssa, %._crit_edge456 ] ; 5 uses
  %.sroa.20.1476 = phi ptr [ %.sroa.20.0488, %.lr.ph481 ], [ %.sroa.20.2.lcssa, %._crit_edge456 ] ; 3 uses
  %.sroa.0259.1475 = phi ptr [ %.sroa.0259.0487, %.lr.ph481 ], [ %.sroa.0259.2.lcssa, %._crit_edge456 ] ; 5 uses
  %.095479 = add nsw i32 %.095479.in, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #27
  %i.fl = shl nuw nsw i32 %.095479, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !305
  store i64 9223372034707292160, ptr %5, align 8, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !305
  %i.fm = or disjoint i32 %i.fl, 1                ; 2 uses
  store i32 %i.fl, ptr %6, align 4, !tbaa !139, !noalias !305
  store i32 %i.fm, ptr %i.ee, align 4, !tbaa !140, !noalias !305
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(208) %.096.ptr492, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.bs unwind label %bb.cn

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !306
  store i64 9223372034707292160, ptr %3, align 8, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !306
  %i.fn = add nuw nsw i32 %i.fl, 2
  store i32 %i.fm, ptr %4, align 4, !tbaa !139, !noalias !306
  store i32 %i.fn, ptr %i.ef, align 4, !tbaa !140, !noalias !306
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(208) %.096.ptr492, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNK2cv3Mat3colEi.exit203 unwind label %bb.co

_ZNK2cv3Mat3colEi.exit203:                        ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !306
  %i.fo = load i32, ptr %i.fk, align 8, !tbaa !115 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph, label %._crit_edge456

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3colEi.exit203
  br i1 %.199478, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us
  %i.fq = phi i32 [ %i.ji, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %i.fo, %.lr.ph ]
  %.094454.us = phi i32 [ %i.jh, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.40.2453.us = phi ptr [ %.sroa.40.4.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.40.1477, %.lr.ph ] ; 5 uses
  %.sroa.20.2452.us = phi ptr [ %.sroa.20.3.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.20.1476, %.lr.ph ] ; 3 uses
  %.sroa.0259.2451.us = phi ptr [ %.sroa.0259.4.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.0259.1475, %.lr.ph ] ; 7 uses
  %i.fr = xor i32 %.094454.us, -1                 ; 2 uses
  %i.fs = add i32 %i.fq, %i.fr                    ; 5 uses
  %i.ft = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.fu = icmp slt i32 %i.ft, 2
  br i1 %i.fu, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.split.us
  %i.fv = load i32, ptr %56, align 8, !tbaa !113
  %i.fw = and i32 %i.fv, 16384
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = load i32, ptr %i.eh, align 4
  %i.fz = icmp eq i32 %i.fy, 1
  %or.cond.i.us = select i1 %i.fx, i1 true, i1 %i.fz
  br i1 %or.cond.i.us, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ga = load i32, ptr %i.ei, align 8, !tbaa !28
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gc = load i32, ptr %i.ej, align 4, !tbaa !132 ; 3 uses
  %i.gd = sdiv i32 %i.fs, %i.gc                   ; 2 uses
  %i.ge = mul nsw i32 %i.gd, %i.gc                ; 0 uses
  %.recomposed = srem i32 %i.fs, %i.gc
  %i.gf = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.gg = load i64, ptr %i.el, align 8, !tbaa !24
  %i.gh = sext i32 %i.gd to i64
  %i.gi = mul i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = sext i32 %.recomposed to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gk
  br label %_ZN2cv3Mat2atIhEERT_i.exit.us

bb.bw:                                            ; preds = %bb.bu
  %i.gm = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.gn = load i64, ptr %i.el, align 8, !tbaa !24
  %i.go = sext i32 %i.fs to i64
  %i.gp = mul i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  br label %_ZN2cv3Mat2atIhEERT_i.exit.us

bb.bx:                                            ; preds = %bb.bt
  %i.gr = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.gs = sext i32 %i.fs to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gs
  br label %_ZN2cv3Mat2atIhEERT_i.exit.us

bb.by:                                            ; preds = %.lr.ph.split.us
  %i.gu = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.gv = sext i32 %i.fs to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %i.gv
  br label %_ZN2cv3Mat2atIhEERT_i.exit.us

_ZN2cv3Mat2atIhEERT_i.exit.us:                    ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.0.i.us = phi ptr [ %i.gw, %bb.by ], [ %i.gt, %bb.bx ], [ %i.gq, %bb.bw ], [ %i.gl, %bb.bv ] ; 2 uses
  %.not.i204.us = icmp eq ptr %.sroa.20.2452.us, %.sroa.40.2453.us
  br i1 %.not.i204.us, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit.us
  %i.gx = load i8, ptr %.0.i.us, align 1, !tbaa !16
  store i8 %i.gx, ptr %.sroa.20.2452.us, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.us

bb.ca:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit.us
  %i.gy = ptrtoint ptr %.sroa.40.2453.us to i64
  %i.gz = ptrtoint ptr %.sroa.0259.2451.us to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 8 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775807
  br i1 %i.hb, label %.split464.us, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ca
  %.sroa.speculated.i.i.i205.us = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hc = add i64 %.sroa.speculated.i.i.i205.us, %i.ha ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.ha
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 9223372036854775807)
  %i.hf = select i1 %i.hd, i64 9223372036854775807, i64 %i.he ; 3 uses
  %.not.i.i.i206.us = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i206.us)
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #30
          to label %.noexc209.us unwind label %.loopexit.split.us ; 4 uses

.noexc209.us:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ha ; 2 uses
  %i.hi = load i8, ptr %.0.i.us, align 1, !tbaa !16
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !16
  %i.hj = icmp sgt i64 %i.ha, 0
  br i1 %i.hj, label %bb.cb, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.us

bb.cb:                                            ; preds = %.noexc209.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr align 1 %.sroa.0259.2451.us, i64 %i.ha, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.cb, %.noexc209.us
  %.not.i17.i.i207.us = icmp eq ptr %.sroa.0259.2451.us, null
  br i1 %.not.i17.i.i207.us, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.2451.us, i64 noundef %i.ha) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us: ; preds = %bb.cc, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.us
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.us

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.us:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us, %bb.bz
  %.sroa.0259.9.us = phi ptr [ %i.hg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us ], [ %.sroa.0259.2451.us, %bb.bz ] ; 7 uses
  %.pn347.us = phi ptr [ %i.hh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us ], [ %.sroa.20.2452.us, %bb.bz ] ; 2 uses
  %.sroa.40.9.us = phi ptr [ %i.hk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.us ], [ %.sroa.40.2453.us, %bb.bz ] ; 5 uses
  %.sroa.20.5.us = getelementptr inbounds nuw i8, ptr %.pn347.us, i64 1 ; 2 uses
  %i.hl = load i32, ptr %i.fk, align 8, !tbaa !115
  %i.hm = add i32 %i.hl, %i.fr                    ; 5 uses
  %i.hn = load i32, ptr %i.em, align 4, !tbaa !116
  %i.ho = icmp slt i32 %i.hn, 2
  br i1 %i.ho, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.us
  %i.hp = load i32, ptr %55, align 8, !tbaa !113
  %i.hq = and i32 %i.hp, 16384
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = load i32, ptr %i.en, align 4
  %i.ht = icmp eq i32 %i.hs, 1
  %or.cond.i210.us = select i1 %i.hr, i1 true, i1 %i.ht
  br i1 %or.cond.i210.us, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hu = load i32, ptr %i.eo, align 8, !tbaa !28
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hw = load i32, ptr %i.ep, align 4, !tbaa !132 ; 3 uses
  %i.hx = sdiv i32 %i.hm, %i.hw                   ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %i.hw                ; 0 uses
  %.recomposed886 = srem i32 %i.hm, %i.hw
  %i.hz = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.ia = load i64, ptr %i.er, align 8, !tbaa !24
  %i.ib = sext i32 %i.hx to i64
  %i.ic = mul i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = sext i32 %.recomposed886 to i64
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie
  br label %_ZN2cv3Mat2atIhEERT_i.exit212.us

bb.cg:                                            ; preds = %bb.ce
  %i.ig = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.ih = load i64, ptr %i.er, align 8, !tbaa !24
  %i.ii = sext i32 %i.hm to i64
  %i.ij = mul i64 %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij
  br label %_ZN2cv3Mat2atIhEERT_i.exit212.us

bb.ch:                                            ; preds = %bb.cd
  %i.il = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.im = sext i32 %i.hm to i64
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  br label %_ZN2cv3Mat2atIhEERT_i.exit212.us

bb.ci:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.us
  %i.io = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.ip = sext i32 %i.hm to i64
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 %i.ip
  br label %_ZN2cv3Mat2atIhEERT_i.exit212.us

_ZN2cv3Mat2atIhEERT_i.exit212.us:                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %.0.i211.us = phi ptr [ %i.iq, %bb.ci ], [ %i.in, %bb.ch ], [ %i.ik, %bb.cg ], [ %i.if, %bb.cf ] ; 2 uses
  %.not.i213.us = icmp eq ptr %.sroa.20.5.us, %.sroa.40.9.us
  br i1 %.not.i213.us, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit212.us
  %i.ir = load i8, ptr %.0.i211.us, align 1, !tbaa !16
  store i8 %i.ir, ptr %.sroa.20.5.us, align 1, !tbaa !16
  %i.is = getelementptr inbounds nuw i8, ptr %.pn347.us, i64 2
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us

bb.ck:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit212.us
  %i.it = ptrtoint ptr %.sroa.40.9.us to i64
  %i.iu = ptrtoint ptr %.sroa.0259.9.us to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 8 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775807
  br i1 %i.iw, label %.split468.us, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us: ; preds = %bb.ck
  %.sroa.speculated.i.i.i215.us = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.ix = add i64 %.sroa.speculated.i.i.i215.us, %i.iv ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iv
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 9223372036854775807)
  %i.ja = select i1 %i.iy, i64 9223372036854775807, i64 %i.iz ; 3 uses
  %.not.i.i.i216.us = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i.i216.us)
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #30
          to label %.noexc221.us unwind label %.loopexit.split.us ; 4 uses

.noexc221.us:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iv ; 2 uses
  %i.jd = load i8, ptr %.0.i211.us, align 1, !tbaa !16
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !16
  %i.je = icmp sgt i64 %i.iv, 0
  br i1 %i.je, label %bb.cl, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i217.us

bb.cl:                                            ; preds = %.noexc221.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jb, ptr align 1 %.sroa.0259.9.us, i64 %i.iv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i217.us

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i217.us: ; preds = %bb.cl, %.noexc221.us
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %.not.i17.i.i218.us = icmp eq ptr %.sroa.0259.9.us, null
  br i1 %.not.i17.i.i218.us, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i217.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.9.us, i64 noundef %i.iv) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us: ; preds = %bb.cm, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i217.us
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us

_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us:    ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us, %bb.cj
  %.sroa.0259.4.us = phi ptr [ %.sroa.0259.9.us, %bb.cj ], [ %i.jb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us ] ; 2 uses
  %.sroa.20.3.us = phi ptr [ %i.is, %bb.cj ], [ %i.jf, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us ] ; 2 uses
  %.sroa.40.4.us = phi ptr [ %.sroa.40.9.us, %bb.cj ], [ %i.jg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i219.us ] ; 2 uses
  %i.jh = add nuw nsw i32 %.094454.us, 1          ; 2 uses
  %i.ji = load i32, ptr %i.fk, align 8, !tbaa !115 ; 2 uses
  %i.jj = icmp slt i32 %i.jh, %i.ji
  br i1 %i.jj, label %.lr.ph.split.us, label %._crit_edge456, !llvm.loop !287

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us
  %.sroa.0259.3.ph.us = phi ptr [ %.sroa.0259.9.us, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us ], [ %.sroa.0259.2451.us, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us ]
  %.sroa.40.3.ph.us = phi ptr [ %.sroa.40.9.us, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i214.us ], [ %.sroa.40.2453.us, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us ]
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge456:                                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us, %_ZNK2cv3Mat3colEi.exit203
  %.sroa.0259.2.lcssa = phi ptr [ %.sroa.0259.1475, %_ZNK2cv3Mat3colEi.exit203 ], [ %.sroa.0259.4.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.0259.4, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ] ; 2 uses
  %.sroa.20.2.lcssa = phi ptr [ %.sroa.20.1476, %_ZNK2cv3Mat3colEi.exit203 ], [ %.sroa.20.3.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.20.3, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ] ; 2 uses
  %.sroa.40.2.lcssa = phi ptr [ %.sroa.40.1477, %_ZNK2cv3Mat3colEi.exit203 ], [ %.sroa.40.4.us, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222.us ], [ %.sroa.40.4, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ] ; 2 uses
  %i.jk = xor i1 %.199478, true
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  %i.jl = icmp sgt i32 %.095479.in, 1
  br i1 %i.jl, label %bb.br, label %._crit_edge482, !llvm.loop !288

bb.cn:                                            ; preds = %bb.br
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.co:                                            ; preds = %bb.bs
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ], [ 0, %.lr.ph ] ; 9 uses
  %.sroa.40.2453 = phi ptr [ %.sroa.40.4, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ], [ %.sroa.40.1477, %.lr.ph ] ; 5 uses
  %.sroa.20.2452 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ], [ %.sroa.20.1476, %.lr.ph ] ; 3 uses
  %.sroa.0259.2451 = phi ptr [ %.sroa.0259.4, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit222 ], [ %.sroa.0259.1475, %.lr.ph ] ; 7 uses
  %i.jo = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.jp = icmp slt i32 %i.jo, 2
  br i1 %i.jp, label %bb.cp, label %bb.cq

.split464.us:                                     ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc208 unwind label %.loopexit.split-lp

.noexc208:                                        ; preds = %.split464.us
  unreachable

.split468.us:                                     ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc220 unwind label %.loopexit.split-lp

.noexc220:                                        ; preds = %.split468.us
  unreachable

.loopexit.split:                                  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i240
  %.sroa.0259.3.ph = phi ptr [ %.sroa.0259.2451, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227 ], [ %.sroa.0259.11, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i240 ]
  %.sroa.40.3.ph = phi ptr [ %.sroa.40.2453, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227 ], [ %.sroa.40.11, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i240 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split464.us, %.split468.us, %bb.cx, %bb.di
  %.sroa.0259.3.ph349 = phi ptr [ %.sroa.0259.11, %bb.di ], [ %.sroa.0259.2451, %bb.cx ], [ %.sroa.0259.9.us, %.split468.us ], [ %.sroa.0259.2451.us, %.split464.us ]
  %.sroa.40.3.ph350 = phi ptr [ %.sroa.40.11, %bb.di ], [ %.sroa.40.2453, %bb.cx ], [ %.sroa.40.9.us, %.split468.us ], [ %.sroa.40.2453.us, %.split464.us ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %.sroa.0259.3 = phi ptr [ %.sroa.0259.3.ph349, %.loopexit.split-lp ], [ %.sroa.0259.3.ph, %.loopexit.split ], [ %.sroa.0259.3.ph.us, %.loopexit.split.us ]
  %.sroa.40.3 = phi ptr [ %.sroa.40.3.ph350, %.loopexit.split-lp ], [ %.sroa.40.3.ph, %.loopexit.split ], [ %.sroa.40.3.ph.us, %.loopexit.split.us ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #27
  br label %bb.dl

bb.cp:                                            ; preds = %.lr.ph.split
  %i.jq = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit225

bb.cq:                                            ; preds = %.lr.ph.split
  %i.js = load i32, ptr %56, align 8, !tbaa !113
  %i.jt = and i32 %i.js, 16384
  %i.ju = icmp ne i32 %i.jt, 0
  %i.jv = load i32, ptr %i.eh, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  %or.cond.i223 = select i1 %i.ju, i1 true, i1 %i.jw
  br i1 %or.cond.i223, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jx = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit225

bb.cs:                                            ; preds = %bb.cq
  %i.jz = load i32, ptr %i.ei, align 8, !tbaa !28
  %i.ka = icmp eq i32 %i.jz, 1
  br i1 %i.ka, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.kb = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.kc = load i64, ptr %i.el, align 8, !tbaa !24
  %i.kd = mul i64 %i.kc, %indvars.iv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kd
  br label %_ZN2cv3Mat2atIhEERT_i.exit225

bb.cu:                                            ; preds = %bb.cs
  %i.kf = load i32, ptr %i.ej, align 4, !tbaa !132 ; 3 uses
  %i.kg = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.kh = sdiv i32 %i.kg, %i.kf                   ; 2 uses
  %i.ki = mul nsw i32 %i.kh, %i.kf                ; 0 uses
  %.recomposed887 = srem i32 %i.kg, %i.kf
  %i.kj = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.kk = load i64, ptr %i.el, align 8, !tbaa !24
  %i.kl = sext i32 %i.kh to i64
  %i.km = mul i64 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  %i.ko = sext i32 %.recomposed887 to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 %i.ko
  br label %_ZN2cv3Mat2atIhEERT_i.exit225

_ZN2cv3Mat2atIhEERT_i.exit225:                    ; preds = %bb.cp, %bb.cr, %bb.ct, %bb.cu
  %.0.i224 = phi ptr [ %i.jr, %bb.cp ], [ %i.jy, %bb.cr ], [ %i.ke, %bb.ct ], [ %i.kp, %bb.cu ] ; 2 uses
  %.not.i226 = icmp eq ptr %.sroa.20.2452, %.sroa.40.2453
  br i1 %.not.i226, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit225
  %i.kq = load i8, ptr %.0.i224, align 1, !tbaa !16
  store i8 %i.kq, ptr %.sroa.20.2452, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit235

bb.cw:                                            ; preds = %_ZN2cv3Mat2atIhEERT_i.exit225
  %i.kr = ptrtoint ptr %.sroa.40.2453 to i64
  %i.ks = ptrtoint ptr %.sroa.0259.2451 to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 8 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775807
  br i1 %i.ku, label %bb.cx, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc233 unwind label %.loopexit.split-lp

.noexc233:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227: ; preds = %bb.cw
  %.sroa.speculated.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.kv = add i64 %.sroa.speculated.i.i.i228, %i.kt ; 2 uses
  %i.kw = icmp ult i64 %i.kv, %i.kt
  %i.kx = call i64 @llvm.umin.i64(i64 %i.kv, i64 9223372036854775807)
  %i.ky = select i1 %i.kw, i64 9223372036854775807, i64 %i.kx ; 3 uses
  %.not.i.i.i229 = icmp ne i64 %i.ky, 0
  call void @llvm.assume(i1 %.not.i.i.i229)
  %i.kz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #30
          to label %.noexc234 unwind label %.loopexit.split ; 4 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i227
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kt ; 2 uses
  %i.lb = load i8, ptr %.0.i224, align 1, !tbaa !16
  store i8 %i.lb, ptr %i.la, align 1, !tbaa !16
  %i.lc = icmp sgt i64 %i.kt, 0
  br i1 %i.lc, label %bb.cy, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i230

bb.cy:                                            ; preds = %.noexc234
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr align 1 %.sroa.0259.2451, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i230

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i230: ; preds = %bb.cy, %.noexc234
  %.not.i17.i.i231 = icmp eq ptr %.sroa.0259.2451, null
  br i1 %.not.i17.i.i231, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.2451, i64 noundef %i.kt) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232: ; preds = %bb.cz, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i230
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.ky
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit235

_ZNSt6vectorIhSaIhEE9push_backERKh.exit235:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232, %bb.cv
  %.sroa.0259.11 = phi ptr [ %i.kz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232 ], [ %.sroa.0259.2451, %bb.cv ] ; 7 uses
  %.pn346 = phi ptr [ %i.la, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232 ], [ %.sroa.20.2452, %bb.cv ] ; 2 uses
  %.sroa.40.11 = phi ptr [ %i.ld, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i232 ], [ %.sroa.40.2453, %bb.cv ] ; 5 uses
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.pn346, i64 1 ; 2 uses
  %i.le = load i32, ptr %i.em, align 4, !tbaa !116
  %i.lf = icmp slt i32 %i.le, 2
  br i1 %i.lf, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit235
  %i.lg = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit238

bb.db:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit235
  %i.li = load i32, ptr %55, align 8, !tbaa !113
  %i.lj = and i32 %i.li, 16384
  %i.lk = icmp ne i32 %i.lj, 0
  %i.ll = load i32, ptr %i.en, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  %or.cond.i236 = select i1 %i.lk, i1 true, i1 %i.lm
  br i1 %or.cond.i236, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ln = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit238

bb.dd:                                            ; preds = %bb.db
  %i.lp = load i32, ptr %i.eo, align 8, !tbaa !28
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.lr = load ptr, ptr %i.eq, align 8, !tbaa !117
end_hunk_0
