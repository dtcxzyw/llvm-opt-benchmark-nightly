Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiled?download=true
inline.NumInlined: 3664
inline.NumDeleted: 2093
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN11TiledHeader18write_offset_tableEv:bb.a

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit106: ; preds = %_ZN5ErrorD2Ev.exit105, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.hp = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.hp, ptr %9, align 8, !tbaa !67
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.hr = getelementptr i8, ptr %i.hp, i64 -24
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds i8, ptr %9, i64 %i.hs
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !67
  %i.hu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  store ptr %i.hu, ptr %i.fg, align 8, !tbaa !67
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.hv, align 8, !tbaa !67
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 8
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.bu, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit107

bb.bu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit106
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !37
  %i.ib = load i64, ptr %i.hw, align 8
  %i.ic = and i64 %i.ib, -2
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ic) #27
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit107

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit107: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit106, %bb.bu
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.hv) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.id) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge62

bb.bv:                                            ; preds = %bb.ba
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bw:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit83
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bx:                                            ; preds = %.thread.i.i.i.i.i93, %bb.bj
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.by:                                            ; preds = %bb.bn
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit108

bb.bz:                                            ; preds = %bb.bq
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = load i8, ptr %i.gv, align 8
  %i.ik = trunc i8 %i.ij to i1
  br i1 %i.ik, label %bb.ca, label %_ZN5ErrorD2Ev.exit108

bb.ca:                                            ; preds = %bb.bz
  %i.il = load ptr, ptr %i.gy, align 8, !tbaa !37
  %i.im = load i64, ptr %i.gv, align 8
  %i.in = and i64 %i.im, -2
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.in) #27
  br label %_ZN5ErrorD2Ev.exit108

_ZN5ErrorD2Ev.exit108:                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.pn47 = phi { ptr, i32 } [ %i.ih, %bb.by ], [ %i.ii, %bb.bz ], [ %i.ii, %bb.ca ] ; 2 uses
  %i.io = load i8, ptr %11, align 8
  %i.ip = trunc i8 %i.io to i1
  br i1 %i.ip, label %bb.cb, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.cb:                                            ; preds = %_ZN5ErrorD2Ev.exit108
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !37
  %i.is = load i64, ptr %11, align 8
  %i.it = and i64 %i.is, -2
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.it) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109: ; preds = %bb.cb, %_ZN5ErrorD2Ev.exit108, %bb.bx
  %.pn47.pn = phi { ptr, i32 } [ %i.ig, %bb.bx ], [ %.pn47, %_ZN5ErrorD2Ev.exit108 ], [ %.pn47, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109, %bb.bw
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109 ], [ %i.if, %bb.bw ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn, %bb.cc ], [ %i.ie, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ci

bb.ce:                                            ; preds = %bb.az, %bb.ay
  %i.iu = load i64, ptr %.sroa.0123.0144, align 8, !tbaa !111 ; 2 uses
  %i.iv = load i8, ptr %i.am, align 8, !tbaa !114 ; 2 uses
  %i.iw = lshr i8 %i.iv, 3                        ; 2 uses
  %i.ix = zext nneg i8 %i.iw to i64               ; 6 uses
  %.not136 = icmp eq i8 %i.iw, 0
  br i1 %.not136, label %_Z8writevecImEvPhRmT_i.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ce
  %i.iy = load ptr, ptr %5, align 8, !tbaa !120
  %i.iz = getelementptr i8, ptr %i.iy, i64 %.0145 ; 4 uses
  %min.iters.check179 = icmp ult i8 %i.iv, 64
  br i1 %min.iters.check179, label %.lr.ph.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.preheader.i
  %n.vec181 = and i64 %i.ix, 24                   ; 4 uses
  %broadcast.splatinsert182 = insertelement <8 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat183 = shufflevector <8 x i64> %broadcast.splatinsert182, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert184 = insertelement <8 x i64> poison, i64 %i.iu, i64 0
  %broadcast.splat185 = shufflevector <8 x i64> %broadcast.splatinsert184, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ja = add nsw <8 x i64> %broadcast.splat183, <i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8>
  %i.jb = shl nsw <8 x i64> %i.ja, splat (i64 3)
  %i.jc = and <8 x i64> %i.jb, splat (i64 4294967288)
  %i.jd = lshr <8 x i64> %broadcast.splat185, %i.jc
  %i.je = trunc <8 x i64> %i.jd to <8 x i8>
  store <8 x i8> %i.je, ptr %i.iz, align 1, !tbaa !37
  %i.jf = icmp eq i64 %n.vec181, 8
  br i1 %i.jf, label %middle.block191, label %vector.body186.1

vector.body186.1:                                 ; preds = %vector.ph180
  %i.jg = add nsw <8 x i64> %broadcast.splat183, <i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15, i64 -16>
  %i.jh = shl nsw <8 x i64> %i.jg, splat (i64 3)
  %i.ji = and <8 x i64> %i.jh, splat (i64 4294967288)
  %i.jj = lshr <8 x i64> %broadcast.splat185, %i.ji
  %i.jk = trunc <8 x i64> %i.jj to <8 x i8>
  %i.jl = getelementptr i8, ptr %i.iz, i64 8
  store <8 x i8> %i.jk, ptr %i.jl, align 1, !tbaa !37
  %i.jm = icmp eq i64 %n.vec181, 16
  br i1 %i.jm, label %middle.block191, label %vector.body186.2

vector.body186.2:                                 ; preds = %vector.body186.1
  %i.jn = add nsw <8 x i64> %broadcast.splat183, <i64 -17, i64 -18, i64 -19, i64 -20, i64 -21, i64 -22, i64 -23, i64 -24>
  %i.jo = shl nsw <8 x i64> %i.jn, splat (i64 3)
  %i.jp = and <8 x i64> %i.jo, splat (i64 4294967288)
  %i.jq = lshr <8 x i64> %broadcast.splat185, %i.jp
  %i.jr = trunc <8 x i64> %i.jq to <8 x i8>
  %i.js = getelementptr i8, ptr %i.iz, i64 16
  store <8 x i8> %i.jr, ptr %i.js, align 1, !tbaa !37
  br label %middle.block191

middle.block191:                                  ; preds = %vector.body186.2, %vector.body186.1, %vector.ph180
  %cmp.n192 = icmp eq i64 %n.vec181, %i.ix
  br i1 %cmp.n192, label %_Z8writevecImEvPhRmT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block191
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec181, %middle.block191 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.jt = xor i64 %indvars.iv.i, -1
  %i.ju = add nsw i64 %i.jt, %i.ix
  %i.jv = shl nsw i64 %i.ju, 3
  %i.jw = and i64 %i.jv, 4294967288
  %i.jx = lshr i64 %i.iu, %i.jw
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = getelementptr i8, ptr %i.iz, i64 %indvars.iv.i
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ix
  br i1 %exitcond.not.i, label %_Z8writevecImEvPhRmT_i.exit, label %.lr.ph.i, !llvm.loop !444

_Z8writevecImEvPhRmT_i.exit:                      ; preds = %.lr.ph.i, %middle.block191, %bb.ce
  %i.ka = add i64 %.0145, %i.ix                   ; 3 uses
  %i.kb = load i8, ptr %i.an, align 1, !tbaa !115 ; 3 uses
  %.not46 = icmp eq i8 %i.kb, 0
  br i1 %.not46, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_Z8writevecImEvPhRmT_i.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0123.0144, i64 8
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !122 ; 2 uses
  %i.ke = lshr i8 %i.kb, 3                        ; 3 uses
  %i.kf = zext nneg i8 %i.ke to i32               ; 2 uses
  %.not137 = icmp eq i8 %i.ke, 0
  br i1 %.not137, label %_Z8writevecIjEvPhRmT_i.exit, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %bb.cf
  %i.kg = load ptr, ptr %5, align 8, !tbaa !120
  %wide.trip.count.i111 = zext nneg i8 %i.ke to i64 ; 5 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.ka  ; 8 uses
  %min.iters.check = icmp ult i8 %i.kb, 32
  br i1 %min.iters.check, label %.lr.ph.i112.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i110
  %n.vec = and i64 %wide.trip.count.i111, 28      ; 8 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %i.kd, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.ki = add nsw <4 x i32> %broadcast.splat, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.kj = shl nsw <4 x i32> %i.ki, splat (i32 3)
  %i.kk = lshr <4 x i32> %broadcast.splat177, %i.kj
  %i.kl = trunc <4 x i32> %i.kk to <4 x i8>
  store <4 x i8> %i.kl, ptr %i.kh, align 1, !tbaa !37
  %i.km = icmp eq i64 %n.vec, 4
  br i1 %i.km, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.kn = add nsw <4 x i32> %broadcast.splat, <i32 -5, i32 -6, i32 -7, i32 -8>
  %i.ko = shl nsw <4 x i32> %i.kn, splat (i32 3)
  %i.kp = lshr <4 x i32> %broadcast.splat177, %i.ko
  %i.kq = trunc <4 x i32> %i.kp to <4 x i8>
  %i.kr = getelementptr i8, ptr %i.kh, i64 4
  store <4 x i8> %i.kq, ptr %i.kr, align 1, !tbaa !37
  %i.ks = icmp eq i64 %n.vec, 8
  br i1 %i.ks, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.kt = add nsw <4 x i32> %broadcast.splat, <i32 -9, i32 -10, i32 -11, i32 -12>
  %i.ku = shl nsw <4 x i32> %i.kt, splat (i32 3)
  %i.kv = lshr <4 x i32> %broadcast.splat177, %i.ku
  %i.kw = trunc <4 x i32> %i.kv to <4 x i8>
  %i.kx = getelementptr i8, ptr %i.kh, i64 8
  store <4 x i8> %i.kw, ptr %i.kx, align 1, !tbaa !37
  %i.ky = icmp eq i64 %n.vec, 12
  br i1 %i.ky, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.kz = add nsw <4 x i32> %broadcast.splat, <i32 -13, i32 -14, i32 -15, i32 -16>
  %i.la = shl nsw <4 x i32> %i.kz, splat (i32 3)
  %i.lb = lshr <4 x i32> %broadcast.splat177, %i.la
  %i.lc = trunc <4 x i32> %i.lb to <4 x i8>
  %i.ld = getelementptr i8, ptr %i.kh, i64 12
  store <4 x i8> %i.lc, ptr %i.ld, align 1, !tbaa !37
  %i.le = icmp eq i64 %n.vec, 16
  br i1 %i.le, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.lf = add nsw <4 x i32> %broadcast.splat, <i32 -17, i32 -18, i32 -19, i32 -20>
  %i.lg = shl nsw <4 x i32> %i.lf, splat (i32 3)
  %i.lh = lshr <4 x i32> %broadcast.splat177, %i.lg
  %i.li = trunc <4 x i32> %i.lh to <4 x i8>
  %i.lj = getelementptr i8, ptr %i.kh, i64 16
  store <4 x i8> %i.li, ptr %i.lj, align 1, !tbaa !37
  %i.lk = icmp eq i64 %n.vec, 20
  br i1 %i.lk, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ll = add nsw <4 x i32> %broadcast.splat, <i32 -21, i32 -22, i32 -23, i32 -24>
  %i.lm = shl nsw <4 x i32> %i.ll, splat (i32 3)
  %i.ln = lshr <4 x i32> %broadcast.splat177, %i.lm
  %i.lo = trunc <4 x i32> %i.ln to <4 x i8>
  %i.lp = getelementptr i8, ptr %i.kh, i64 20
  store <4 x i8> %i.lo, ptr %i.lp, align 1, !tbaa !37
  %i.lq = icmp eq i64 %n.vec, 24
  br i1 %i.lq, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.lr = add nsw <4 x i32> %broadcast.splat, <i32 -25, i32 -26, i32 -27, i32 -28>
  %i.ls = shl nsw <4 x i32> %i.lr, splat (i32 3)
  %i.lt = lshr <4 x i32> %broadcast.splat177, %i.ls
  %i.lu = trunc <4 x i32> %i.lt to <4 x i8>
  %i.lv = getelementptr i8, ptr %i.kh, i64 24
  store <4 x i8> %i.lu, ptr %i.lv, align 1, !tbaa !37
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i111
  br i1 %cmp.n, label %_Z8writevecIjEvPhRmT_i.exit, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph.preheader.i110, %middle.block
  %indvars.iv.i113.ph = phi i64 [ 0, %.lr.ph.preheader.i110 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.preheader, %.lr.ph.i112
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i114, %.lr.ph.i112 ], [ %indvars.iv.i113.ph, %.lr.ph.i112.preheader ] ; 3 uses
  %i.lw = trunc nuw nsw i64 %indvars.iv.i113 to i32
  %i.lx = xor i32 %i.lw, -1
  %i.ly = add nsw i32 %i.lx, %i.kf
  %i.lz = shl nsw i32 %i.ly, 3
  %i.ma = lshr i32 %i.kd, %i.lz
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr i8, ptr %i.kh, i64 %indvars.iv.i113
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !37
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, %wide.trip.count.i111
  br i1 %exitcond.not.i115, label %_Z8writevecIjEvPhRmT_i.exit, label %.lr.ph.i112, !llvm.loop !445

_Z8writevecIjEvPhRmT_i.exit:                      ; preds = %.lr.ph.i112, %middle.block, %bb.cf
  %.pre-phi = phi i64 [ 0, %bb.cf ], [ %wide.trip.count.i111, %middle.block ], [ %wide.trip.count.i111, %.lr.ph.i112 ]
  %i.md = add i64 %i.ka, %.pre-phi
  br label %bb.cg

bb.cg:                                            ; preds = %_Z8writevecIjEvPhRmT_i.exit, %_Z8writevecImEvPhRmT_i.exit
  %.1 = phi i64 [ %i.ka, %_Z8writevecImEvPhRmT_i.exit ], [ %i.md, %_Z8writevecIjEvPhRmT_i.exit ]
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0123.0144, i64 16 ; 2 uses
  %.not135 = icmp eq ptr %i.me, %i.bd
  br i1 %.not135, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.s

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.cg, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.mf = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mj = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !95
  %i.mk = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = sub i64 %i.ml, %i.mg
  store i64 %i.mm, ptr %i.mh, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %i.mf, ptr %0, align 8, !tbaa !120
  store <2 x ptr> %i.mj, ptr %i.mi, align 8, !tbaa !95
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.mn, align 8, !tbaa !125
  br label %.critedge62

.critedge62:                                      ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit107, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.mo = load ptr, ptr %5, align 8, !tbaa !120   ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i116, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit117, label %bb.ch

bb.ch:                                            ; preds = %.critedge62
  store ptr %i.mo, ptr %i.ay, align 8, !tbaa !119
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !95
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mt) #27
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit117

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit117: ; preds = %.critedge62, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ax, %bb.cd, %bb.r
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %.pn52.pn.pn.pn, %bb.ax ], [ %.pn47.pn.pn.pn, %bb.cd ]
  %i.mu = load ptr, ptr %5, align 8, !tbaa !120   ; 4 uses
  %.not.i.i118 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i118, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit119, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.mu, ptr %i.ay, align 8, !tbaa !119
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !95
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mu to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.mz) #27
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit119

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit119: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cn

bb.ck:                                            ; preds = %_ZN5ErrorD2Ev.exit66, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit117
  %i.na = load i32, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.nb = icmp eq i32 %i.na, -1
  br i1 %i.nb, label %_ZN6ResultImED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.nc = zext i32 %i.na to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.__fmatrix, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !112
  invoke void %i.ne(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i unwind label %bb.cm, !inline_history !0

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6ResultImED2Ev.exit

bb.cm:                                            ; preds = %bb.cl
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #29
  unreachable

_ZN6ResultImED2Ev.exit:                           ; preds = %bb.ck, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.cn:                                            ; preds = %bb.q, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit119, %_ZN5ErrorD2Ev.exit
  %.pn52.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5ErrorD2Ev.exit ], [ %.pn52.pn.pn.pn.pn.pn, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit119 ], [ %i.bj, %bb.q ]
  call void @_ZN6ResultImED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11TiledHeader4dumpEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.28, i64 noundef 9)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.k ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %.not16 = icmp eq ptr %i.d, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91, !noalias !463 ; 2 uses
  %i.i = and i32 %i.h, 16
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92, !noalias !463 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93, !noalias !463 ; 3 uses
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.j, align 8, !tbaa !92, !noalias !463
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge
  %i.q = and i32 %i.h, 8
  %.not1.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.f

.thread15.i.i.i:                                  ; preds = %bb.e
  store i8 0, ptr %0, align 8, !alias.scope !463
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94, !noalias !463
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sink22.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.u, %bb.f ]
  %.sink21.in.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.s, %bb.f ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !95, !noalias !463 ; 2 uses
  %i.v = ptrtoint ptr %.sink22.i.i.i to i64
  %i.w = ptrtoint ptr %.sink21.i.i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 8 uses
  %i.y = icmp ugt i64 %i.x, -9
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.z = icmp ult i64 %i.x, 23
  br i1 %i.z, label %bb.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.h
  %i.aa = or i64 %i.x, 7                          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 23
  %i.ac = add nuw i64 %i.aa, 1
  %i.ad = select i1 %i.ab, i64 25, i64 %i.ac      ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
          to label %.noexc8 unwind label %bb.k    ; 2 uses

end_hunk_0
