Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn47 = phi { ptr, i32 } [ %i.do, %bb.aq ], [ %i.dn, %bb.ap ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.ar ], [ %i.dm, %bb.ao ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body102

bb.at:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo19starCensusTransformERKNS_3MatES3_iRS1_S4_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull align 8 dereferenceable(208) %i.cc)
          to label %bb.au unwind label %bb.cm

bb.au:                                            ; preds = %.invoke169, %.invoke, %bb.af, %bb.an, %bb.at, %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 262800 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo8Matching28hammingDistanceBlockMatchingERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(262784) %i.dr, ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull align 8 dereferenceable(208) %i.cf, i32 noundef %i.dt)
          to label %bb.av unwind label %bb.cm

bb.av:                                            ; preds = %bb.au
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 262848 ; 4 uses
  %.val65 = load i32, ptr %11, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 263912
  %.val66 = load ptr, ptr %i.dv, align 8          ; 3 uses
  %i.dw = load i32, ptr %i.ci, align 8, !tbaa !177 ; 6 uses
  %i.dx = load i32, ptr %i.cj, align 4, !tbaa !178 ; 20 uses
  %i.dy = add nsw i32 %i.dw, %i.dx
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !179 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 262808
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !180 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  %i.ee = sub nsw i32 100, %i.ec
  %i.ef = select i1 %i.ed, i32 %i.ee, i32 90      ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 262828
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !181
  %i.ei = call i32 @llvm.smax.i32(i32 %i.eh, i32 1) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 262812
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !182 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  %i.em = select i1 %i.el, i32 %i.ek, i32 2       ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 262816
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !183 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %i.eq = select i1 %i.ep, i32 %i.eo, i32 5
  %i.er = add nuw nsw i32 %i.em, 1
  %.sroa.speculated173.i = call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er) ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !54 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !53 ; 4 uses
  %i.ew = sub nsw i32 0, %i.dy
  %.sroa.speculated165.i = call i32 @llvm.smax.i32(i32 %i.ew, i32 0) ; 3 uses
  %.sroa.speculated159.i = call i32 @llvm.smin.i32(i32 %i.dw, i32 0)
  %i.ex = add nsw i32 %i.et, %.sroa.speculated159.i ; 3 uses
  %i.ey = sub i32 %i.ex, %.sroa.speculated165.i   ; 6 uses
  %i.ez = shl i32 %i.dw, 4                        ; 2 uses
  %i.fa = add i32 %i.ez, -16                      ; 3 uses
  %i.fb = sdiv i32 %i.dz, 2
  %i.fc = select i1 %i.ea, i32 %i.fb, i32 2       ; 10 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 262832
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !184
  %.not642.i = icmp eq i32 %i.fe, 1               ; 5 uses
  %i.ff = select i1 %.not642.i, i32 2, i32 1      ; 2 uses
  %.not634.i = icmp slt i32 %.sroa.speculated165.i, %i.ex
  br i1 %.not634.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fg = sitofp i32 %i.fa to double
  %i.fh = insertelement <4 x double> poison, double %i.fg, i64 0
  %i.fi = shufflevector <4 x double> %i.fh, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.fi, ptr %4, align 8, !tbaa !185, !alias.scope !186
  %i.fj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc100 unwind label %bb.cm ; 0 uses

.noexc100:                                        ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit

bb.ax:                                            ; preds = %bb.av
  %i.fk = and i32 %i.dx, 15
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc101 unwind label %bb.cm

.noexc101:                                        ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_, ptr noundef nonnull @.str.21, i32 noundef 181) #22
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc101
  unreachable

bb.ba:                                            ; preds = %.noexc101
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.ba
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !26
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body102

bb.bb:                                            ; preds = %bb.ax
  %i.fs = add i32 %i.dx, 16                       ; 4 uses
  %i.ft = shl i32 %i.fs, 3                        ; 3 uses
  %i.fu = mul i32 %i.ey, %i.dx                    ; 7 uses
  %i.fv = sext i32 %i.fu to i64                   ; 21 uses
  %i.fw = select i1 %.not642.i, i32 %i.ev, i32 1
  %i.fx = sext i32 %i.fw to i64                   ; 6 uses
  %i.fy = mul nsw i64 %i.fx, %i.fv                ; 3 uses
  %i.fz = shl i32 %i.ey, 3                        ; 2 uses
  %i.ga = add i32 %i.fz, 16
  %i.gb = sext i32 %i.ga to i64                   ; 4 uses
  %i.gc = sext i32 %i.fs to i64                   ; 8 uses
  %i.gd = mul nsw i64 %i.gb, %i.gc                ; 3 uses
  %i.ge = shl nsw i32 %i.fc, 1                    ; 2 uses
  %i.gf = add i32 %i.ge, 2                        ; 3 uses
  %i.gg = add i64 %i.gd, %i.gb                    ; 2 uses
  %i.gh = add nsw i32 %i.ge, 3
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 1
  %i.gk = mul nsw i64 %i.gj, %i.fv
  %i.gl = lshr i32 %.val65, 1
  %i.gm = and i32 %i.gl, 2032
  %i.gn = add nuw nsw i32 %i.gm, 16
  %i.go = mul i32 %i.et, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = sext i32 %i.et to i64                   ; 7 uses
  %i.gr = add nsw i64 %i.fy, %i.gq
  %reass.add.i = add nsw i64 %i.gr, %i.gg
  %reass.mul.i = shl i64 %reass.add.i, 2
  %i.gs = add nsw i64 %i.gp, 1024
  %i.gt = add nsw i64 %i.gs, %i.gk
  %i.gu = add i64 %i.gt, %reass.mul.i             ; 2 uses
  %i.gv = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.du)
          to label %.noexc104 unwind label %bb.cm

.noexc104:                                        ; preds = %bb.bb
  br i1 %i.gv, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.noexc104
  %i.gw = load i32, ptr %i.du, align 8, !tbaa !21 ; 3 uses
  %i.gx = and i32 %i.gw, 16384
  %.not190.i = icmp eq i32 %i.gx, 0
  br i1 %.not190.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 262860
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !54
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 262856
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !53
  %i.hc = mul nsw i32 %i.hb, %i.gz
  %i.hd = sext i32 %i.hc to i64
  %i.he = lshr i32 %i.gw, 5
  %i.hf = and i32 %i.he, 127
  %i.hg = add nuw nsw i32 %i.hf, 1
  %i.hh = shl i32 %i.gw, 2
  %i.hi = and i32 %i.hh, 124
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 1275511473185297, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = and i32 %i.hl, 15
  %i.hn = mul nuw nsw i32 %i.hm, %i.hg
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = mul nsw i64 %i.hd, %i.ho
  %i.hq = icmp ult i64 %i.hp, %i.gu
  br i1 %i.hq, label %bb.be, label %.noexc105

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.noexc104
  %i.hr = trunc i64 %i.gu to i32
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.du, i32 noundef 1, i32 noundef %i.hr, i32 noundef 0)
          to label %.noexc105 unwind label %bb.cm

.noexc105:                                        ; preds = %bb.be, %bb.bd
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 262872
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !57
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = add i64 %i.hu, 15
  %i.hw = and i64 %i.hv, -16                      ; 12 uses
  %i.hx = inttoptr i64 %i.hw to ptr               ; 12 uses
  %i.hy = getelementptr [2 x i8], ptr %i.hx, i64 %i.fy ; 2 uses
  %i.hz = getelementptr [2 x i8], ptr %i.hy, i64 %i.fy ; 3 uses
  %i.ia = sext i32 %i.gf to i64                   ; 5 uses
  %i.ib = mul nsw i64 %i.fv, %i.ia
  %i.ic = getelementptr [2 x i8], ptr %i.hz, i64 %i.ib ; 8 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.fv ; 3 uses
  %.idx.i = shl i64 %i.gg, 2                      ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx.i ; 7 uses
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.gq ; 8 uses
  %i.ig = icmp slt i32 %i.fu, 1                   ; 3 uses
  br i1 %i.ig, label %..preheader229_crit_edge.i, label %iter.check

..preheader229_crit_edge.i:                       ; preds = %.noexc105
  %.pre.i = zext i32 %i.fu to i64
  br label %.preheader229.i

iter.check:                                       ; preds = %.noexc105
  %i.ih = trunc i32 %.sroa.speculated173.i to i16 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.fu to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.fu, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check171 = icmp ult i32 %i.fu, 16
  br i1 %min.iters.check171, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ih, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ii, align 16, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.ij, align 16, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ik = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ik, label %.preheader229.i, label %vector.body, !llvm.loop !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert173 = insertelement <4 x i16> poison, i16 %i.ih, i64 0
  %broadcast.splat174 = shufflevector <4 x i16> %broadcast.splatinsert173, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %index175
  store <4 x i16> %broadcast.splat174, ptr %i.il, align 8, !tbaa !59
  %index.next176 = add nuw i64 %index175, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next176, %wide.trip.count.i
  br i1 %i.im, label %.preheader229.i, label %vec.epilog.vector.body, !llvm.loop !110

.preheader229.i:                                  ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph, %..preheader229_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..preheader229_crit_edge.i ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ], [ %wide.trip.count.i, %vec.epilog.vector.body ], [ %wide.trip.count.i, %vector.body ] ; 12 uses
  %i.in = sext i32 %i.ft to i64                   ; 6 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.id, i64 %i.in ; 2 uses
  %i.io = sub nsw i64 0, %i.in                    ; 4 uses
  %i.ip = shl nsw i64 %i.gd, 1                    ; 3 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %i.ip ; 3 uses
  %i.ir = shl nsw i64 %i.gb, 1                    ; 2 uses
  %i.is = add nsw i32 %i.ev, -1                   ; 2 uses
  %i.it = add i32 %i.ey, -1                       ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.iw = sext i32 %i.dx to i64                   ; 18 uses
  %i.ix = shl nsw i64 %i.iw, 1
  %i.iy = mul nsw i32 %i.fc, %i.dx                ; 4 uses
  %.not643242.i = icmp slt i32 %i.iy, 0
  %i.iz = icmp slt i32 %i.dx, 1                   ; 2 uses
  %i.ja = trunc i32 %i.fc to i16
  %i.jb = add i16 %i.ja, 1                        ; 2 uses
  %i.jc = icmp sge i32 %i.dx, %i.fu
  %i.jd = mul i32 %i.it, %i.dx                    ; 4 uses
  %.neg.i = xor i32 %i.fc, -1                     ; 2 uses
  %.neg644.i = mul i32 %i.dx, %.neg.i             ; 2 uses
  %i.je = sub nsw i64 0, %i.fv
  %.idx645.i = select i1 %.not642.i, i64 %i.je, i64 0 ; 3 uses
  %i.jf = shl nsw i64 %i.in, 1                    ; 2 uses
  %i.jg = mul nsw i32 %i.ey, %i.ft
  %i.jh = sext i32 %i.jg to i64
  %i.ji = sext i32 %i.fz to i64
  %i.jj = shl i32 %i.fs, 1
  %i.jk = sext i32 %i.jj to i64                   ; 3 uses
  %i.jl = mul i32 %i.fs, 3
  %i.jm = sext i32 %i.jl to i64                   ; 3 uses
  %i.jn = icmp sgt i32 %i.dx, 0                   ; 3 uses
  %i.jo = trunc i32 %i.fa to i16                  ; 9 uses
  %i.jp = add nsw i32 %i.dx, -1
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 262844
  %i.jr = zext i32 %i.dx to i64                   ; 18 uses
  %i.js = sext i32 %i.ev to i64
  %i.jt = add nsw i32 %i.fc, 1
  %i.ju = shl nuw nsw i64 %.pre-phi.i, 1
  %i.jv = zext nneg i32 %i.ey to i64
  %i.jw = zext nneg i32 %.sroa.speculated165.i to i64 ; 4 uses
  %i.jx = sext i32 %i.fc to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.io
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -16
  %gep.1.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gd
  %i.kb = getelementptr inbounds nuw i8, ptr %gep.1.i, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.io
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -16
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.gb ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.trip.count351.i = zext i32 %i.et to i64   ; 11 uses
  %brmerge.i = or i1 %i.iz, %.not643242.i
  %brmerge328.i = or i1 %i.iz, %i.jc              ; 2 uses
  %wide.trip.count425.i = zext nneg i32 %i.ex to i64
  %i.kh = add i64 %i.hw, %.idx.i
  %i.ki = shl nsw i64 %i.fx, 2
  %i.kj = shl nsw i64 %i.ia, 1
  %i.kk = add nsw i64 %i.ki, %i.kj
  %i.kl = or disjoint i64 %i.kk, 2
  %i.km = mul i64 %i.kl, %i.fv                    ; 2 uses
  %i.kn = add i64 %i.kh, %i.km
  %.neg = mul nsw i64 %i.gq, -2
  %.neg767 = sub i64 %.neg, %i.kn
  %i.ko = add i64 %i.hw, %.idx.i
  %i.kp = add i64 %i.ko, %i.km
  %i.kq = shl nuw nsw i64 %i.jr, 1                ; 16 uses
  %i.kr = shl nsw i64 %i.gc, 4
  %i.ks = shl nsw i64 %i.gc, 4
  %i.kt = shl nsw i64 %i.jk, 1                    ; 5 uses
  %i.ku = add nsw i64 %i.kt, %i.kq
  %i.kv = shl nsw i64 %i.jm, 1                    ; 6 uses
  %i.kw = mul nsw i64 %i.fx, %i.fv
  %i.kx = add i64 %i.kw, %i.jr
  %i.ky = shl i64 %i.kx, 1
  %i.kz = shl nsw i64 %i.iw, 1
  %i.la = shl nsw i64 %i.iw, 1
  %i.lb = add nsw i64 %i.kq, -2
  %i.lc = or disjoint i64 %i.kq, 2
  %i.ld = shl nsw i64 %i.in, 1                    ; 10 uses
  %i.le = sub nsw i64 %i.kq, %i.ld
  %i.lf = add nsw i64 %i.kq, -2
  %i.lg = sub nsw i64 %i.lf, %i.ld
  %i.lh = or disjoint i64 %i.kq, 2
  %i.li = sub nsw i64 %i.lh, %i.ld
  %i.lj = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %scevgep569 = getelementptr i8, ptr %i.hx, i64 %i.lj
  %scevgep571 = getelementptr i8, ptr %i.hx, i64 %i.lj
  %i.lk = shl nsw i64 %i.fx, 2                    ; 4 uses
  %i.ll = shl nsw i64 %i.iw, 1                    ; 2 uses
  %i.lm = add i64 %i.hw, %i.ll
  %i.ln = shl nsw i64 %i.iw, 1
  %i.lo = shl nsw i64 %i.ia, 1
  %i.lp = add nsw i64 %i.lk, %i.lo
  %i.lq = mul i64 %i.lp, %i.fv                    ; 2 uses
  %i.lr = add i64 %i.hw, %i.lq
  %i.ls = add nsw i32 %i.fc, 1
  %i.lt = mul i32 %i.dx, %i.ls
  %i.lu = add i64 %i.hw, %i.lq
  %i.lv = mul i32 %i.fc, %i.dx
  %i.lw = add i64 %i.hw, %i.ll
  %i.lx = shl nsw i64 %i.iw, 1
  %i.ly = add i64 %i.hw, %i.lx
  %i.lz = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.ma = shl nsw i64 %i.iw, 1
  %i.mb = shl nsw i64 %i.ia, 1
  %i.mc = add nsw i64 %i.lz, %i.mb
  %i.md = mul i64 %i.mc, %i.fv                    ; 2 uses
  %i.me = add i64 %i.hw, %i.md
  %i.mf = add nsw i32 %i.fc, 1
  %i.mg = mul i32 %i.dx, %i.mf
  %i.mh = add i64 %i.hw, %i.md
  %i.mi = mul i32 %i.fc, %i.dx
  %i.mj = shl nuw nsw i64 %i.jr, 1                ; 2 uses
  %scevgep690 = getelementptr i8, ptr %i.hx, i64 %i.mj
  %i.mk = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.ml = shl nsw i64 %i.ia, 1
  %i.mm = add nsw i64 %i.mk, %i.ml
  %i.mn = mul i64 %i.mm, %i.fv                    ; 2 uses
  %i.mo = shl nuw nsw i64 %i.jr, 1
  %scevgep731 = getelementptr i8, ptr %i.hx, i64 %i.mn
  %i.mp = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mq = add nsw i64 %i.mp, -2
  %i.mr = shl nsw i64 %i.gq, 1
  %i.ms = shl nsw i64 %i.gq, 1
  %i.mt = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mu = add nsw i64 %i.mt, -2
  %i.mv = getelementptr i8, ptr %i.hx, i64 %i.mn
  %i.mw = getelementptr i8, ptr %i.mv, i64 %i.mj
  %29 = shl nsw i64 %.idx645.i, 1
  %diff.check630 = icmp ugt i64 %29, -16
  %min.iters.check577 = icmp samesign ult i64 %.pre-phi.i, 4
  %min.iters.check579 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.mx = and i64 %.pre-phi.i, 12
  %n.vec581 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n592 = icmp eq i64 %.pre-phi.i, %n.vec581
  %min.epilog.iters.check597 = icmp eq i64 %i.mx, 0
  %n.vec599 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n608 = icmp eq i64 %.pre-phi.i, %n.vec599
  %xtraiter830 = and i64 %.pre-phi.i, 1
  %lcmp.mod831.not = icmp eq i64 %xtraiter830, 0
  %i.my = getelementptr i8, ptr %i.hx, i64 %i.ky
  %i.mz = getelementptr i8, ptr %i.hx, i64 %i.kq
  %min.iters.check530 = icmp ult i32 %i.dx, 28
  %broadcast.splatinsert533 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat534 = shufflevector <4 x i32> %broadcast.splatinsert533, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %min.iters.check181 = icmp ult i32 %i.et, 4
  %i.na = shl nsw i64 %i.gq, 1
  %diff.check178 = icmp ugt i64 %i.na, -32
  %min.iters.check183 = icmp ult i32 %i.et, 16
  %i.nb = and i64 %wide.trip.count351.i, 12
  %n.vec185 = and i64 %wide.trip.count351.i, 4294967280 ; 4 uses
  %broadcast.splatinsert186 = insertelement <8 x i16> poison, i16 %i.jo, i64 0
  %broadcast.splat187 = shufflevector <8 x i16> %broadcast.splatinsert186, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n192 = icmp eq i64 %n.vec185, %wide.trip.count351.i
  %min.epilog.iters.check197 = icmp eq i64 %i.nb, 0
  %n.vec199 = and i64 %wide.trip.count351.i, 4294967292 ; 3 uses
  %broadcast.splatinsert200 = insertelement <4 x i16> poison, i16 %i.jo, i64 0
  %broadcast.splat201 = shufflevector <4 x i16> %broadcast.splatinsert200, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n206 = icmp eq i64 %n.vec199, %wide.trip.count351.i
  %xtraiter833 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod834.not = icmp eq i64 %xtraiter833, 0
  %i.nc = add nsw i64 %wide.trip.count351.i, -1
  br label %bb.bf

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %indvars.iv.i
  store i16 %i.ih, ptr %i.nd, align 2, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader229.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.bf:                                            ; preds = %._crit_edge317.i, %.preheader229.i
  %.0598324.i = phi i32 [ 1, %.preheader229.i ], [ %i.oi, %._crit_edge317.i ] ; 4 uses
  %i.ne = icmp eq i32 %.0598324.i, 1              ; 2 uses
  br i1 %i.ne, label %.preheader228.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br label %.preheader228.i

.preheader228.i:                                  ; preds = %bb.bg, %bb.bf
  %.0597.i = phi i32 [ %i.it, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.0596.i = phi i32 [ %i.is, %bb.bg ], [ 0, %bb.bf ] ; 3 uses
  %.0595.i = phi i32 [ -1, %bb.bg ], [ %i.ey, %bb.bf ] ; 2 uses
  %.0594.i = phi i32 [ -1, %bb.bg ], [ %i.ev, %bb.bf ] ; 2 uses
  %.0592.i = phi i32 [ -1, %bb.bg ], [ 1, %bb.bf ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ka, i8 0, i64 %i.ip, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.iq, i8 0, i64 %i.ir, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kd, i8 0, i64 %i.ip, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.ke, i8 0, i64 %i.ir, i1 false)
  %.not637313.i = icmp eq i32 %.0596.i, %.0594.i
  br i1 %.not637313.i, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.preheader228.i
  %.not639280.i = icmp eq i32 %.0597.i, %.0595.i
  %i.nf = mul i32 %.0592.i, %i.ft
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = icmp eq i32 %.0598324.i, %i.ff
  %i.nj = add i32 %i.jt, %.0596.i
  %i.nk = sext i32 %.0597.i to i64                ; 4 uses
  %i.nl = sext i32 %.0592.i to i64                ; 5 uses
  %i.nm = sext i32 %.0596.i to i64
  %i.nn = mul i64 %i.kr, %i.nk                    ; 17 uses
  %i.no = mul nsw i64 %i.ks, %i.nl
  %i.np = shl nsw i64 %i.nk, 4
  %i.nq = or disjoint i64 %i.np, 2
  %i.nr = mul i64 %i.nq, %i.gc                    ; 6 uses
  %i.ns = add i64 %i.ku, %i.nn
  %i.nt = mul i64 %i.kz, %i.nk                    ; 2 uses
  %i.nu = mul nsw i64 %i.la, %i.nl
  %i.nv = add i64 %i.kq, %i.nn
  %i.nw = shl nsw i64 %i.ng, 1                    ; 5 uses
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = add i64 %i.nn, -2
  %i.nz = sub i64 %i.ny, %i.nw
  %i.oa = add i64 %i.lb, %i.nn
  %i.ob = sub i64 %i.oa, %i.nw
  %i.oc = or disjoint i64 %i.nn, 2
  %i.od = sub i64 %i.oc, %i.nw
  %i.oe = add i64 %i.lc, %i.nn
  %i.of = sub i64 %i.oe, %i.nw
  %reass.sub = sub i64 %i.nr, %i.ld
  %reass.sub768 = sub i64 %i.nr, %i.ld
  %i.og = getelementptr i8, ptr %i.my, i64 %i.nt
  %i.oh = getelementptr i8, ptr %i.mz, i64 %i.nt
  br label %bb.bh

._crit_edge317.i:                                 ; preds = %.loopexit223.i, %.preheader228.i
  %i.oi = add nuw nsw i32 %.0598324.i, 1
  %exitcond430.not.i = icmp eq i32 %.0598324.i, %i.ff
  br i1 %exitcond430.not.i, label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit, label %bb.bf, !llvm.loop !112

bb.bh:                                            ; preds = %.loopexit223.i, %.lr.ph316.i
  %indvars.iv427.i = phi i64 [ %i.nm, %.lr.ph316.i ], [ %indvars.iv.next428.i, %.loopexit223.i ] ; 7 uses
  %indvars.iv385.i = phi i32 [ %i.nj, %.lr.ph316.i ], [ %indvars.iv.next386.i, %.loopexit223.i ] ; 2 uses
  %i.oj = phi ptr [ %i.kf, %.lr.ph316.i ], [ %i.om, %.loopexit223.i ] ; 3 uses
  %i.ok = phi ptr [ %i.kb, %.lr.ph316.i ], [ %i.ol, %.loopexit223.i ] ; 17 uses
  %i.ol = phi ptr [ %i.jy, %.lr.ph316.i ], [ %i.ok, %.loopexit223.i ] ; 14 uses
  %i.om = phi ptr [ %i.kg, %.lr.ph316.i ], [ %i.oj, %.loopexit223.i ] ; 7 uses
  %i.on = load ptr, ptr %i.iu, align 8, !tbaa !57 ; 2 uses
  %i.oo = ptrtoaddr ptr %i.on to i64              ; 2 uses
  %i.op = load i64, ptr %i.iv, align 8, !tbaa !62
  %i.oq = mul i64 %i.op, %indvars.iv427.i         ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oq ; 7 uses
  %i.os = mul nsw i64 %indvars.iv427.i, %i.fv
  %i.ot = select i1 %.not642.i, i64 %i.os, i64 0  ; 5 uses
  %i.ou = getelementptr [2 x i8], ptr %i.hx, i64 %i.ot ; 11 uses
  %i.ov = getelementptr [2 x i8], ptr %i.hy, i64 %i.ot ; 3 uses
  br i1 %i.ne, label %bb.bi, label %.loopexit227.i

bb.bi:                                            ; preds = %bb.bh
  %i.ow = icmp ne i64 %indvars.iv427.i, 0         ; 2 uses
  %i.ox = add nsw i64 %indvars.iv427.i, %i.jx     ; 2 uses
  %i.oy = select i1 %i.ow, i64 %i.ox, i64 0       ; 3 uses
  %.not638263.i = icmp sgt i64 %i.oy, %i.ox
  br i1 %.not638263.i, label %.preheader226.i, label %.lr.ph266.i

.lr.ph266.i:                                      ; preds = %bb.bi
  %i.oz = icmp sgt i64 %indvars.iv427.i, 0
  %i.pa = trunc nsw i64 %indvars.iv427.i to i32
  %i.pb = add i32 %i.pa, %.neg.i
  %.sroa.speculated141.i = call i32 @llvm.smax.i32(i32 %i.pb, i32 0)
  %i.pc = getelementptr inbounds [2 x i8], ptr %i.ou, i64 %.idx645.i ; 2 uses
  %brmerge499.i = or i1 %i.ig, %i.ow
  %i.pd = shl i64 %i.ot, 1                        ; 4 uses
  %scevgep570 = getelementptr i8, ptr %scevgep569, i64 %i.pd
  %i.pe = add i64 %.idx645.i, %i.ot
  %30 = shl i64 %i.pe, 1
  %i.pf = add i64 %i.lw, %i.pd
  %i.pg = mul i64 %i.mr, %i.oy                    ; 2 uses
  %i.ph = add i64 %i.mu, %i.pg
  br label %bb.bj

.preheader226.i:                                  ; preds = %.loopexit217.i, %bb.bi
  br i1 %i.ig, label %.loopexit227.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %.preheader226.i
  call void @llvm.memset.p0.i64(ptr align 16 %i.ov, i8 0, i64 %i.ju, i1 false), !tbaa !59
  br label %.loopexit227.i

bb.bj:                                            ; preds = %.loopexit217.i, %.lr.ph266.i
  %indvar733 = phi i64 [ %indvar.next734, %.loopexit217.i ], [ 0, %.lr.ph266.i ] ; 2 uses
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %.loopexit217.i ], [ %i.oy, %.lr.ph266.i ] ; 5 uses
  %i.pi = mul i64 %i.ms, %indvar733               ; 2 uses
  %i.pj = add i64 %i.pg, %i.pi
  %i.pk = add i64 %i.ph, %i.pi
  %i.pl = trunc nsw i64 %indvars.iv382.i to i32
  %.sroa.speculated148.i = call i32 @llvm.smin.i32(i32 %i.is, i32 %i.pl)
  %i.pm = srem i32 %.sroa.speculated148.i, %i.gf
  %i.pn = sext i32 %i.pm to i64                   ; 5 uses
  %i.po = mul nsw i64 %i.pn, %i.fv
  %i.pp = getelementptr [2 x i8], ptr %i.hz, i64 %i.po ; 16 uses
  %i.pq = icmp slt i64 %indvars.iv382.i, %i.js
  br i1 %i.pq, label %.preheader221.i, label %.loopexit218.i

.preheader221.i:                                  ; preds = %bb.bj
  %i.pr = load i32, ptr %i.cj, align 4, !tbaa !178 ; 6 uses
  %.not233.i = icmp slt i32 %i.pr, 0
  %i.ps = mul nsw i64 %indvars.iv382.i, %i.gq
  br i1 %.not233.i, label %._crit_edge237.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader221.i
  %i.pt = add nuw i32 %i.pr, 1                    ; 3 uses
  %i.pu = sext i32 %i.pt to i64                   ; 3 uses
  %i.pv = zext nneg i32 %i.pr to i64              ; 2 uses
  %wide.trip.count346.i = zext i32 %i.pt to i64   ; 8 uses
  %i.pw = mul i64 %i.mq, %i.pv
  %i.px = shl nuw nsw i64 %wide.trip.count346.i, 1 ; 2 uses
  %i.py = getelementptr i8, ptr %scevgep731, i64 %i.pw
  %scevgep732 = getelementptr i8, ptr %i.py, i64 %i.px
  %i.pz = mul i64 %i.pj, %i.pu
  %scevgep735 = getelementptr i8, ptr %.val66, i64 %i.pz
  %i.qa = mul i64 %i.pk, %i.pu
  %i.qb = getelementptr i8, ptr %.val66, i64 %i.qa
  %scevgep736 = getelementptr i8, ptr %i.qb, i64 %i.px
  %i.qc = zext nneg i32 %i.pr to i64
  %min.iters.check741 = icmp ult i32 %i.pr, 3
  %bound0737 = icmp ult ptr %i.ic, %scevgep736
  %bound1738 = icmp ult ptr %scevgep735, %scevgep732
  %found.conflict739 = and i1 %bound0737, %bound1738
  %stride.check = icmp slt i32 %i.pt, 0
  %i.qd = or i1 %found.conflict739, %stride.check
  %min.iters.check743 = icmp ult i32 %i.pr, 15
  %i.qe = and i64 %wide.trip.count346.i, 12
  %n.vec745 = and i64 %wide.trip.count346.i, 2147483632 ; 4 uses
  %cmp.n752 = icmp eq i64 %n.vec745, %wide.trip.count346.i
  %min.epilog.iters.check757 = icmp eq i64 %i.qe, 0
  %n.vec759 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %cmp.n765 = icmp eq i64 %n.vec759, %wide.trip.count346.i
  %xtraiter = and i64 %wide.trip.count346.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check754

iter.check754:                                    ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv348.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next349.i, %._crit_edge.i ] ; 3 uses
  %i.qf = add nsw i64 %indvars.iv348.i, %i.ps
  %i.qg = mul nsw i64 %i.qf, %i.pu
  %i.qh = mul nuw nsw i64 %indvars.iv348.i, %i.pv
  %i.qi = getelementptr [2 x i8], ptr %.val66, i64 %i.qg ; 7 uses
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.qh ; 7 uses
  %brmerge = select i1 %min.iters.check741, i1 true, i1 %i.qd
  br i1 %brmerge, label %vec.epilog.scalar.ph755.preheader, label %vector.main.loop.iter.check742

vector.main.loop.iter.check742:                   ; preds = %iter.check754
  br i1 %min.iters.check743, label %vec.epilog.ph758, label %vector.body746

vector.body746:                                   ; preds = %vector.main.loop.iter.check742, %vector.body746
  %index747 = phi i64 [ %index.next750, %vector.body746 ], [ 0, %vector.main.loop.iter.check742 ] ; 3 uses
  %i.qk = getelementptr [2 x i8], ptr %i.qi, i64 %index747 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 16
  %wide.load748 = load <8 x i16>, ptr %i.qk, align 2, !tbaa !59, !alias.scope !187
  %wide.load749 = load <8 x i16>, ptr %i.ql, align 2, !tbaa !59, !alias.scope !187
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %index747 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store <8 x i16> %wide.load748, ptr %i.qm, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  store <8 x i16> %wide.load749, ptr %i.qn, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next750 = add nuw i64 %index747, 16      ; 2 uses
  %i.qo = icmp eq i64 %index.next750, %n.vec745
  br i1 %i.qo, label %middle.block751, label %vector.body746, !llvm.loop !116

middle.block751:                                  ; preds = %vector.body746
  br i1 %cmp.n752, label %._crit_edge.i, label %vec.epilog.iter.check756

vec.epilog.iter.check756:                         ; preds = %middle.block751
  br i1 %min.epilog.iters.check757, label %vec.epilog.scalar.ph755.preheader, label %vec.epilog.ph758, !prof !63

vec.epilog.ph758:                                 ; preds = %vector.main.loop.iter.check742, %vec.epilog.iter.check756
  %vec.epilog.resume.val753 = phi i64 [ %n.vec745, %vec.epilog.iter.check756 ], [ 0, %vector.main.loop.iter.check742 ]
  br label %vec.epilog.vector.body760

vec.epilog.vector.body760:                        ; preds = %vec.epilog.vector.body760, %vec.epilog.ph758
  %index761 = phi i64 [ %vec.epilog.resume.val753, %vec.epilog.ph758 ], [ %index.next763, %vec.epilog.vector.body760 ] ; 3 uses
  %i.qp = getelementptr [2 x i8], ptr %i.qi, i64 %index761
  %wide.load762 = load <4 x i16>, ptr %i.qp, align 2, !tbaa !59, !alias.scope !187
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %index761
  store <4 x i16> %wide.load762, ptr %i.qq, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next763 = add nuw i64 %index761, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next763, %n.vec759
  br i1 %i.qr, label %vec.epilog.middle.block764, label %vec.epilog.vector.body760, !llvm.loop !117

vec.epilog.middle.block764:                       ; preds = %vec.epilog.vector.body760
  br i1 %cmp.n765, label %._crit_edge.i, label %vec.epilog.scalar.ph755.preheader

vec.epilog.scalar.ph755.preheader:                ; preds = %iter.check754, %vec.epilog.iter.check756, %vec.epilog.middle.block764
  %indvars.iv343.i.ph = phi i64 [ 0, %iter.check754 ], [ %n.vec759, %vec.epilog.middle.block764 ], [ %n.vec745, %vec.epilog.iter.check756 ] ; 3 uses
  %i.qs = sub nsw i64 %i.qc, %indvars.iv343.i.ph
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph755.prol.loopexit, label %vec.epilog.scalar.ph755.prol

vec.epilog.scalar.ph755.prol:                     ; preds = %vec.epilog.scalar.ph755.preheader, %vec.epilog.scalar.ph755.prol
  %indvars.iv343.i.prol = phi i64 [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph755.prol ], [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph755.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph755.prol ], [ 0, %vec.epilog.scalar.ph755.preheader ]
  %i.qt = getelementptr [2 x i8], ptr %i.qi, i64 %indvars.iv343.i.prol
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !59
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %indvars.iv343.i.prol
  store i16 %i.qu, ptr %i.qv, align 2, !tbaa !59
  %indvars.iv.next344.i.prol = add nuw nsw i64 %indvars.iv343.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph755.prol.loopexit, label %vec.epilog.scalar.ph755.prol, !llvm.loop !118

vec.epilog.scalar.ph755.prol.loopexit:            ; preds = %vec.epilog.scalar.ph755.prol, %vec.epilog.scalar.ph755.preheader
  %indvars.iv343.i.unr = phi i64 [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph755.preheader ], [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph755.prol ]
  %i.qw = icmp ult i64 %i.qs, 3
  br i1 %i.qw, label %._crit_edge.i, label %vec.epilog.scalar.ph755

._crit_edge237.split.i:                           ; preds = %._crit_edge.i, %.preheader221.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.pp, i8 0, i64 %i.ix, i1 false)
  br i1 %brmerge.i, label %._crit_edge246.split.i, label %.lr.ph240.i.preheader

.lr.ph240.i.preheader:                            ; preds = %._crit_edge237.split.i
  %i.qx = shl nsw i64 %i.pn, 1
  %i.qy = add nsw i64 %i.mk, %i.qx
  %i.qz = mul i64 %i.qy, %i.fv
  %scevgep691 = getelementptr i8, ptr %scevgep690, i64 %i.qz
  br label %iter.check714

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph755.prol.loopexit, %vec.epilog.scalar.ph755, %vec.epilog.middle.block764, %middle.block751
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i64 %indvars.iv.next349.i, %wide.trip.count351.i
  br i1 %exitcond352.not.i, label %._crit_edge237.split.i, label %iter.check754, !llvm.loop !119

vec.epilog.scalar.ph755:                          ; preds = %vec.epilog.scalar.ph755.prol.loopexit, %vec.epilog.scalar.ph755
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i.3, %vec.epilog.scalar.ph755 ], [ %indvars.iv343.i.unr, %vec.epilog.scalar.ph755.prol.loopexit ] ; 6 uses
  %i.ra = getelementptr [2 x i8], ptr %i.qi, i64 %indvars.iv343.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !59
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %indvars.iv343.i
  store i16 %i.rb, ptr %i.rc, align 2, !tbaa !59
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.rd = getelementptr [2 x i8], ptr %i.qi, i64 %indvars.iv.next344.i
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !59
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %indvars.iv.next344.i
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !59
  %indvars.iv.next344.i.1 = add nuw nsw i64 %indvars.iv343.i, 2 ; 2 uses
  %i.rg = getelementptr [2 x i8], ptr %i.qi, i64 %indvars.iv.next344.i.1
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !59
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %indvars.iv.next344.i.1
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !59
  %indvars.iv.next344.i.2 = add nuw nsw i64 %indvars.iv343.i, 3 ; 2 uses
  %i.rj = getelementptr [2 x i8], ptr %i.qi, i64 %indvars.iv.next344.i.2
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !59
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %indvars.iv.next344.i.2
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !59
  %indvars.iv.next344.i.3 = add nuw nsw i64 %indvars.iv343.i, 4 ; 2 uses
  %exitcond347.not.i.3 = icmp eq i64 %indvars.iv.next344.i.3, %wide.trip.count346.i
  br i1 %exitcond347.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph755, !llvm.loop !120

iter.check714:                                    ; preds = %.lr.ph240.i.preheader, %._crit_edge241.i
  %indvar692 = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvar.next693, %._crit_edge241.i ] ; 2 uses
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next359.i, %._crit_edge241.i ] ; 3 uses
  %i.rm = icmp eq i64 %indvars.iv358.i, 0
  %i.rn = select i1 %i.rm, i16 %i.jb, i16 1       ; 3 uses
  %invariant.gep485.i = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv358.i ; 4 uses
  %i.ro = mul i64 %i.mo, %indvar692
  %scevgep694 = getelementptr i8, ptr %i.mw, i64 %i.ro
  %bound0695 = icmp ult ptr %i.pp, %scevgep694
  %bound1696 = icmp ult ptr %invariant.gep485.i, %scevgep691
  %found.conflict697 = and i1 %bound0695, %bound1696
  br i1 %found.conflict697, label %vec.epilog.scalar.ph715, label %vector.ph700

vector.ph700:                                     ; preds = %iter.check714
  %broadcast.splatinsert702 = insertelement <8 x i16> poison, i16 %i.rn, i64 0
  %broadcast.splat703 = shufflevector <8 x i16> %broadcast.splatinsert702, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body704

vector.body704:                                   ; preds = %vector.ph700, %vector.body704
  %index705 = phi i64 [ 0, %vector.ph700 ], [ %index.next710, %vector.body704 ] ; 3 uses
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %index705 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 2 uses
  %wide.load706 = load <8 x i16>, ptr %i.rp, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load707 = load <8 x i16>, ptr %i.rq, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %index705 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %wide.load708 = load <8 x i16>, ptr %i.rr, align 2, !tbaa !59, !alias.scope !190
  %wide.load709 = load <8 x i16>, ptr %i.rs, align 2, !tbaa !59, !alias.scope !190
  %i.rt = mul <8 x i16> %wide.load708, %broadcast.splat703
  %i.ru = mul <8 x i16> %wide.load709, %broadcast.splat703
  %i.rv = add <8 x i16> %i.rt, %wide.load706
  %i.rw = add <8 x i16> %i.ru, %wide.load707
  store <8 x i16> %i.rv, ptr %i.rp, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  store <8 x i16> %i.rw, ptr %i.rq, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %index.next710 = add nuw i64 %index705, 16      ; 2 uses
  %i.rx = icmp eq i64 %index.next710, %i.jr
  br i1 %i.rx, label %._crit_edge241.i, label %vector.body704, !llvm.loop !124

vec.epilog.scalar.ph715:                          ; preds = %iter.check714, %vec.epilog.scalar.ph715
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i.1, %vec.epilog.scalar.ph715 ], [ 0, %iter.check714 ] ; 4 uses
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %indvars.iv353.i ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !59
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv353.i
  %i.sa = load i16, ptr %gep.i, align 2, !tbaa !59
  %i.sb = mul i16 %i.sa, %i.rn
  %i.sc = add i16 %i.sb, %i.rz
  store i16 %i.sc, ptr %i.ry, align 2, !tbaa !59
  %indvars.iv.next354.i = or disjoint i64 %indvars.iv353.i, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %indvars.iv.next354.i ; 2 uses
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !59
  %gep.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv.next354.i
  %i.sf = load i16, ptr %gep.i.1, align 2, !tbaa !59
  %i.sg = mul i16 %i.sf, %i.rn
  %i.sh = add i16 %i.sg, %i.se
  store i16 %i.sh, ptr %i.sd, align 2, !tbaa !59
  %indvars.iv.next354.i.1 = add nuw nsw i64 %indvars.iv353.i, 2 ; 2 uses
  %exitcond357.not.i.1 = icmp eq i64 %indvars.iv.next354.i.1, %i.jr
  br i1 %exitcond357.not.i.1, label %._crit_edge241.i, label %vec.epilog.scalar.ph715, !llvm.loop !125

._crit_edge241.i:                                 ; preds = %vector.body704, %vec.epilog.scalar.ph715
  %indvars.iv.next359.i = add nuw nsw i64 %indvars.iv358.i, %i.jr ; 2 uses
  %i.si = trunc nuw i64 %indvars.iv.next359.i to i32
  %.not643.i = icmp slt i32 %i.iy, %i.si
  %indvar.next693 = add i64 %indvar692, 1
  br i1 %.not643.i, label %._crit_edge246.split.i, label %iter.check714, !llvm.loop !126

._crit_edge246.split.i:                           ; preds = %._crit_edge241.i, %._crit_edge237.split.i
  br i1 %i.oz, label %bb.bk, label %.preheader219.i

.preheader219.i:                                  ; preds = %._crit_edge246.split.i
  br i1 %brmerge328.i, label %.loopexit218.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %.preheader219.i
  %i.sj = shl nsw i64 %i.pn, 1
  %i.sk = add nsw i64 %i.lz, %i.sj
  %i.sl = mul i64 %i.sk, %i.fv                    ; 2 uses
  %i.sm = add i64 %i.ly, %i.sl
  %i.sn = add i64 %i.hw, %i.sl
  br label %iter.check674

bb.bk:                                            ; preds = %._crit_edge246.split.i
  %i.so = srem i32 %.sroa.speculated141.i, %i.gf
  %i.sp = zext nneg i32 %i.so to i64              ; 2 uses
  %i.sq = mul nsw i64 %i.sp, %i.fv
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.sq ; 2 uses
  br i1 %brmerge328.i, label %.loopexit217.i, label %.lr.ph255.i.preheader

.lr.ph255.i.preheader:                            ; preds = %bb.bk
  %i.ss = shl nsw i64 %i.pn, 1                    ; 2 uses
  %i.st = add nsw i64 %i.lk, %i.ss
  %i.su = mul i64 %i.st, %i.fv                    ; 4 uses
  %i.sv = add i64 %i.lm, %i.su
  %i.sw = add i64 %i.hw, %i.su
  %i.sx = shl nuw nsw i64 %i.sp, 1                ; 2 uses
  %i.sy = sub nsw i64 %i.sx, %i.ss
  %i.sz = mul i64 %i.sy, %i.fv
  %i.ta = add nsw i64 %i.lk, %i.sx
  %i.tb = mul i64 %i.ta, %i.fv
  %i.tc = sub i64 %i.su, %i.pd
  %diff.check611 = icmp ugt i64 %i.tc, -16
  %31 = sub i64 %i.su, %30
  %diff.check620 = icmp ugt i64 %31, -16
  %i.td = add i64 %i.sz, -1
  %diff.check622 = icmp ult i64 %i.td, 15
  %invariant.op = or i1 %diff.check620, %diff.check622
  %i.te = sub i64 %i.tb, %i.pd
  %diff.check632 = icmp ugt i64 %i.te, -16
  %invariant.op847 = or i1 %diff.check630, %diff.check632
  br label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.lr.ph255.i.preheader, %._crit_edge256.i
  %indvar612 = phi i64 [ 0, %.lr.ph255.i.preheader ], [ %indvar.next613, %._crit_edge256.i ] ; 3 uses
  %indvars.iv374.i = phi i64 [ %i.iw, %.lr.ph255.i.preheader ], [ %indvars.iv.next375.i, %._crit_edge256.i ] ; 4 uses
  %i.tf = trunc i64 %indvars.iv374.i to i32       ; 3 uses
  %i.tg = add i32 %i.iy, %i.tf
  %.sroa.speculated134.i = call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.tg)
  %i.th = sext i32 %.sroa.speculated134.i to i64
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.th ; 2 uses
  %i.tj = add i32 %.neg644.i, %i.tf
  %.sroa.speculated127.i = call i32 @llvm.smax.i32(i32 %i.tj, i32 0)
  %i.tk = zext nneg i32 %.sroa.speculated127.i to i64
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.tk ; 2 uses
  %i.tm = sub i32 %i.tf, %i.dx
  %i.tn = sext i32 %i.tm to i64
  %invariant.gep490.i = getelementptr [2 x i8], ptr %i.pp, i64 %i.tn ; 2 uses
  %i.to = mul i64 %i.ln, %indvar612               ; 2 uses
  %i.tp = add i64 %i.pf, %i.to                    ; 3 uses
  %i.tq = mul i64 %indvar612, %i.jr               ; 3 uses
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = sub i32 %i.tr, %i.lv
  %smax = call i32 @llvm.smax.i32(i32 %i.ts, i32 0)
  %i.tt = shl nuw i32 %smax, 1
  %i.tu = zext i32 %i.tt to i64
  %i.tv = add i64 %i.lu, %i.tu                    ; 2 uses
  %i.tw = trunc i64 %i.tq to i32
  %i.tx = add i32 %i.lt, %i.tw
  %i.ty = call i32 @llvm.smin.i32(i32 %i.tx, i32 %i.jd)
  %smin = sext i32 %i.ty to i64
  %i.tz = shl nsw i64 %smin, 1
  %i.ua = add i64 %i.lr, %i.tz                    ; 2 uses
  %i.ub = shl i64 %i.tq, 32
  %i.uc = ashr exact i64 %i.ub, 31
  %i.ud = add i64 %i.sw, %i.uc                    ; 2 uses
  %i.ue = add i64 %i.sv, %i.to                    ; 3 uses
  %i.uf = sub i64 %i.ud, %i.ue
  %diff.check614 = icmp ugt i64 %i.uf, -16
  %conflict.rdx615 = or i1 %diff.check611, %diff.check614
  %i.ug = sub i64 %i.ua, %i.ue
  %diff.check616 = icmp ugt i64 %i.ug, -16
  %conflict.rdx617 = or i1 %conflict.rdx615, %diff.check616
  %i.uh = sub i64 %i.tv, %i.ue
  %diff.check618 = icmp ugt i64 %i.uh, -16
  %conflict.rdx619 = or i1 %conflict.rdx617, %diff.check618
  %conflict.rdx623.reass = or i1 %conflict.rdx619, %invariant.op
  %i.ui = sub i64 %i.ud, %i.tp
  %diff.check624 = icmp ugt i64 %i.ui, -16
  %conflict.rdx625 = or i1 %conflict.rdx623.reass, %diff.check624
  %i.uj = sub i64 %i.ua, %i.tp
  %diff.check626 = icmp ugt i64 %i.uj, -16
  %conflict.rdx627 = or i1 %conflict.rdx625, %diff.check626
  %i.uk = sub i64 %i.tv, %i.tp
  %diff.check628 = icmp ugt i64 %i.uk, -16
  %conflict.rdx629 = or i1 %conflict.rdx627, %diff.check628
  %conflict.rdx633.reass = or i1 %conflict.rdx629, %invariant.op847
  br i1 %conflict.rdx633.reass, label %scalar.ph634, label %vector.body637

vector.body637:                                   ; preds = %.lr.ph255.i, %vector.body637
  %index638 = phi i64 [ %index.next644, %vector.body637 ], [ 0, %.lr.ph255.i ] ; 5 uses
  %i.ul = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %index638
  %wide.load639 = load <8 x i16>, ptr %i.ul, align 2, !tbaa !59
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %index638
  %wide.load640 = load <8 x i16>, ptr %i.um, align 2, !tbaa !59
  %i.un = add <8 x i16> %wide.load640, %wide.load639
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %index638
  %wide.load641 = load <8 x i16>, ptr %i.uo, align 2, !tbaa !59
  %i.up = sub <8 x i16> %i.un, %wide.load641      ; 2 uses
  %i.uq = add nuw nsw i64 %index638, %indvars.iv374.i ; 4 uses
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.uq
  store <8 x i16> %i.up, ptr %i.ur, align 2, !tbaa !59
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %i.uq
  %wide.load642 = load <8 x i16>, ptr %i.us, align 2, !tbaa !59
  %i.ut = add <8 x i16> %wide.load642, %i.up
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.uq
  %wide.load643 = load <8 x i16>, ptr %i.uu, align 2, !tbaa !59
  %i.uv = sub <8 x i16> %i.ut, %wide.load643
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.uq
  store <8 x i16> %i.uv, ptr %i.uw, align 2, !tbaa !59
  %index.next644 = add nuw i64 %index638, 8       ; 2 uses
  %i.ux = icmp eq i64 %index.next644, %i.jr
  br i1 %i.ux, label %._crit_edge256.i, label %vector.body637, !llvm.loop !127

scalar.ph634:                                     ; preds = %.lr.ph255.i, %scalar.ph634
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %scalar.ph634 ], [ 0, %.lr.ph255.i ] ; 5 uses
  %gep491.i = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %indvars.iv369.i
  %i.uy = load i16, ptr %gep491.i, align 2, !tbaa !59
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %indvars.iv369.i
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !59
  %i.vb = add i16 %i.va, %i.uy
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %indvars.iv369.i
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !59
  %i.ve = sub i16 %i.vb, %i.vd                    ; 2 uses
  %i.vf = add nuw nsw i64 %indvars.iv369.i, %indvars.iv374.i ; 4 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.vf
  store i16 %i.ve, ptr %i.vg, align 2, !tbaa !59
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %i.vf
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !59
  %i.vj = add i16 %i.vi, %i.ve
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.vf
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !59
  %i.vm = sub i16 %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.vf
  store i16 %i.vm, ptr %i.vn, align 2, !tbaa !59
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %i.jr
  br i1 %exitcond373.not.i, label %._crit_edge256.i, label %scalar.ph634, !llvm.loop !128

._crit_edge256.i:                                 ; preds = %vector.body637, %scalar.ph634
  %indvars.iv.next375.i = add nuw nsw i64 %indvars.iv374.i, %i.iw ; 2 uses
  %i.vo = icmp slt i64 %indvars.iv.next375.i, %i.fv
  %indvar.next613 = add i64 %indvar612, 1
  br i1 %i.vo, label %.lr.ph255.i, label %.loopexit218.i, !llvm.loop !129

iter.check674:                                    ; preds = %.lr.ph249.i.preheader, %._crit_edge250.i
  %indvar649 = phi i64 [ 0, %.lr.ph249.i.preheader ], [ %indvar.next650, %._crit_edge250.i ] ; 3 uses
  %indvars.iv366.i = phi i64 [ %i.iw, %.lr.ph249.i.preheader ], [ %indvars.iv.next367.i, %._crit_edge250.i ] ; 3 uses
  %i.vp = trunc i64 %indvars.iv366.i to i32       ; 3 uses
  %i.vq = add i32 %i.iy, %i.vp
  %.sroa.speculated120.i = call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.vq)
  %i.vr = sext i32 %.sroa.speculated120.i to i64
  %i.vs = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.vr ; 3 uses
  %i.vt = add i32 %.neg644.i, %i.vp
  %.sroa.speculated113.i = call i32 @llvm.smax.i32(i32 %i.vt, i32 0)
  %i.vu = zext nneg i32 %.sroa.speculated113.i to i64
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.vu ; 3 uses
  %i.vw = sub i32 %i.vp, %i.dx
  %i.vx = sext i32 %i.vw to i64
  %invariant.gep486.i = getelementptr [2 x i8], ptr %i.pp, i64 %i.vx ; 3 uses
  %invariant.gep488.i = getelementptr [2 x i8], ptr %i.pp, i64 %indvars.iv366.i ; 3 uses
  %i.vy = mul i64 %i.ma, %indvar649
  %i.vz = add i64 %i.sm, %i.vy                    ; 3 uses
  %i.wa = mul i64 %indvar649, %i.jr               ; 3 uses
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = sub i32 %i.wb, %i.mi
  %smax655 = call i32 @llvm.smax.i32(i32 %i.wc, i32 0)
  %i.wd = shl nuw i32 %smax655, 1
  %i.we = zext i32 %i.wd to i64
  %i.wf = add i64 %i.mh, %i.we
  %i.wg = trunc i64 %i.wa to i32
  %i.wh = add i32 %i.mg, %i.wg
  %i.wi = call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.jd)
  %smin652 = sext i32 %i.wi to i64
  %i.wj = shl nsw i64 %smin652, 1
  %i.wk = add i64 %i.me, %i.wj
  %i.wl = shl i64 %i.wa, 32
  %i.wm = ashr exact i64 %i.wl, 31
  %i.wn = add i64 %i.sn, %i.wm
  %i.wo = sub i64 %i.wn, %i.vz
  %diff.check651 = icmp ugt i64 %i.wo, -32
  %i.wp = sub i64 %i.wk, %i.vz
  %diff.check653 = icmp ugt i64 %i.wp, -32
  %conflict.rdx654 = or i1 %diff.check651, %diff.check653
  %i.wq = sub i64 %i.wf, %i.vz
  %diff.check656 = icmp ugt i64 %i.wq, -32
  %conflict.rdx657 = or i1 %conflict.rdx654, %diff.check656
  br i1 %conflict.rdx657, label %vec.epilog.scalar.ph675, label %vector.body662

vector.body662:                                   ; preds = %iter.check674, %vector.body662
  %index663 = phi i64 [ %index.next670, %vector.body662 ], [ 0, %iter.check674 ] ; 5 uses
  %i.wr = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %index663 ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 16
  %wide.load664 = load <8 x i16>, ptr %i.wr, align 2, !tbaa !59
  %wide.load665 = load <8 x i16>, ptr %i.ws, align 2, !tbaa !59
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %index663 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load666 = load <8 x i16>, ptr %i.wt, align 2, !tbaa !59
  %wide.load667 = load <8 x i16>, ptr %i.wu, align 2, !tbaa !59
  %i.wv = add <8 x i16> %wide.load666, %wide.load664
  %i.ww = add <8 x i16> %wide.load667, %wide.load665
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %index663 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %wide.load668 = load <8 x i16>, ptr %i.wx, align 2, !tbaa !59
  %wide.load669 = load <8 x i16>, ptr %i.wy, align 2, !tbaa !59
  %i.wz = sub <8 x i16> %i.wv, %wide.load668
  %i.xa = sub <8 x i16> %i.ww, %wide.load669
  %i.xb = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %index663 ; 2 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 16
  store <8 x i16> %i.wz, ptr %i.xb, align 2, !tbaa !59
  store <8 x i16> %i.xa, ptr %i.xc, align 2, !tbaa !59
  %index.next670 = add nuw i64 %index663, 16      ; 2 uses
  %i.xd = icmp eq i64 %index.next670, %i.jr
  br i1 %i.xd, label %._crit_edge250.i, label %vector.body662, !llvm.loop !130

vec.epilog.scalar.ph675:                          ; preds = %iter.check674, %vec.epilog.scalar.ph675
  %indvars.iv361.i = phi i64 [ %indvars.iv.next362.i.1, %vec.epilog.scalar.ph675 ], [ 0, %iter.check674 ] ; 6 uses
  %gep487.i = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv361.i
  %i.xe = load i16, ptr %gep487.i, align 2, !tbaa !59
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %indvars.iv361.i
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !59
  %i.xh = add i16 %i.xg, %i.xe
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %indvars.iv361.i
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !59
  %i.xk = sub i16 %i.xh, %i.xj
  %gep489.i = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv361.i
  store i16 %i.xk, ptr %gep489.i, align 2, !tbaa !59
  %indvars.iv.next362.i = or disjoint i64 %indvars.iv361.i, 1 ; 4 uses
  %gep487.i.1 = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv.next362.i
  %i.xl = load i16, ptr %gep487.i.1, align 2, !tbaa !59
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %indvars.iv.next362.i
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !59
  %i.xo = add i16 %i.xn, %i.xl
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %indvars.iv.next362.i
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !59
  %i.xr = sub i16 %i.xo, %i.xq
  %gep489.i.1 = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv.next362.i
  store i16 %i.xr, ptr %gep489.i.1, align 2, !tbaa !59
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2 ; 2 uses
  %exitcond365.not.i.1 = icmp eq i64 %indvars.iv.next362.i.1, %i.jr
  br i1 %exitcond365.not.i.1, label %._crit_edge250.i, label %vec.epilog.scalar.ph675, !llvm.loop !131

._crit_edge250.i:                                 ; preds = %vector.body662, %vec.epilog.scalar.ph675
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, %i.iw ; 2 uses
  %i.xs = icmp slt i64 %indvars.iv.next367.i, %i.fv
  %indvar.next650 = add i64 %indvar649, 1
  br i1 %i.xs, label %iter.check674, label %.loopexit218.i, !llvm.loop !132

.loopexit218.i:                                   ; preds = %._crit_edge250.i, %._crit_edge256.i, %.preheader219.i, %bb.bj
  br i1 %brmerge499.i, label %.loopexit217.i, label %iter.check594

iter.check594:                                    ; preds = %.loopexit218.i
  %i.xt = icmp eq i64 %indvars.iv382.i, 0
  %i.xu = select i1 %i.xt, i16 %i.jb, i16 1       ; 5 uses
  br i1 %min.iters.check577, label %vec.epilog.scalar.ph595.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check594
  %i.xv = shl nsw i64 %i.pn, 1
  %i.xw = add nsw i64 %i.lk, %i.xv
  %i.xx = mul i64 %i.xw, %i.fv
  %scevgep572 = getelementptr i8, ptr %scevgep571, i64 %i.xx
  %bound0573 = icmp ult ptr %i.ou, %scevgep572
  %bound1574 = icmp ult ptr %i.pp, %scevgep570
  %found.conflict575 = and i1 %bound0573, %bound1574
  br i1 %found.conflict575, label %vec.epilog.scalar.ph595.preheader, label %vector.main.loop.iter.check578

vector.main.loop.iter.check578:                   ; preds = %vector.memcheck568
  br i1 %min.iters.check579, label %vec.epilog.ph598, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check578
  %broadcast.splatinsert582 = insertelement <8 x i16> poison, i16 %i.xu, i64 0
  %broadcast.splat583 = shufflevector <8 x i16> %broadcast.splatinsert582, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.ph580, %vector.body584
  %index585 = phi i64 [ 0, %vector.ph580 ], [ %index.next590, %vector.body584 ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %index585 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16 ; 2 uses
  %wide.load586 = load <8 x i16>, ptr %i.xy, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load587 = load <8 x i16>, ptr %i.xz, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %index585 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %wide.load588 = load <8 x i16>, ptr %i.ya, align 2, !tbaa !59, !alias.scope !192
  %wide.load589 = load <8 x i16>, ptr %i.yb, align 2, !tbaa !59, !alias.scope !192
  %i.yc = mul <8 x i16> %wide.load588, %broadcast.splat583
  %i.yd = mul <8 x i16> %wide.load589, %broadcast.splat583
  %i.ye = add <8 x i16> %i.yc, %wide.load586
  %i.yf = add <8 x i16> %i.yd, %wide.load587
  store <8 x i16> %i.ye, ptr %i.xy, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  store <8 x i16> %i.yf, ptr %i.xz, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next590 = add nuw i64 %index585, 16      ; 2 uses
  %i.yg = icmp eq i64 %index.next590, %n.vec581
  br i1 %i.yg, label %middle.block591, label %vector.body584, !llvm.loop !136

middle.block591:                                  ; preds = %vector.body584
  br i1 %cmp.n592, label %.loopexit217.i, label %vec.epilog.iter.check596

vec.epilog.iter.check596:                         ; preds = %middle.block591
  br i1 %min.epilog.iters.check597, label %vec.epilog.scalar.ph595.preheader, label %vec.epilog.ph598, !prof !63

vec.epilog.ph598:                                 ; preds = %vector.main.loop.iter.check578, %vec.epilog.iter.check596
  %vec.epilog.resume.val593 = phi i64 [ %n.vec581, %vec.epilog.iter.check596 ], [ 0, %vector.main.loop.iter.check578 ]
  %broadcast.splatinsert600 = insertelement <4 x i16> poison, i16 %i.xu, i64 0
  %broadcast.splat601 = shufflevector <4 x i16> %broadcast.splatinsert600, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body602

vec.epilog.vector.body602:                        ; preds = %vec.epilog.vector.body602, %vec.epilog.ph598
  %index603 = phi i64 [ %vec.epilog.resume.val593, %vec.epilog.ph598 ], [ %index.next606, %vec.epilog.vector.body602 ] ; 3 uses
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %index603 ; 2 uses
  %wide.load604 = load <4 x i16>, ptr %i.yh, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %index603
  %wide.load605 = load <4 x i16>, ptr %i.yi, align 2, !tbaa !59, !alias.scope !192
  %i.yj = mul <4 x i16> %wide.load605, %broadcast.splat601
  %i.yk = add <4 x i16> %i.yj, %wide.load604
  store <4 x i16> %i.yk, ptr %i.yh, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next606 = add nuw i64 %index603, 4       ; 2 uses
  %i.yl = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.yl, label %vec.epilog.middle.block607, label %vec.epilog.vector.body602, !llvm.loop !137

vec.epilog.middle.block607:                       ; preds = %vec.epilog.vector.body602
  br i1 %cmp.n608, label %.loopexit217.i, label %vec.epilog.scalar.ph595.preheader

vec.epilog.scalar.ph595.preheader:                ; preds = %iter.check594, %vector.memcheck568, %vec.epilog.iter.check596, %vec.epilog.middle.block607
  %indvars.iv377.i.ph = phi i64 [ 0, %iter.check594 ], [ 0, %vector.memcheck568 ], [ %n.vec581, %vec.epilog.iter.check596 ], [ %n.vec599, %vec.epilog.middle.block607 ] ; 5 uses
  %.neg839 = or disjoint i64 %indvars.iv377.i.ph, 1
  br i1 %lcmp.mod831.not, label %vec.epilog.scalar.ph595.prol.loopexit, label %vec.epilog.scalar.ph595.prol

vec.epilog.scalar.ph595.prol:                     ; preds = %vec.epilog.scalar.ph595.preheader
end_hunk_0
