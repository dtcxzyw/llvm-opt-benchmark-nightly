Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn47 = phi { ptr, i32 } [ %i.dr, %bb.at ], [ %i.dq, %bb.as ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.au ], [ %i.dp, %bb.ar ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body102

bb.aw:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo19starCensusTransformERKNS_3MatES3_iRS1_S4_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull align 8 dereferenceable(208) %i.ce)
          to label %bb.ax unwind label %bb.aj

bb.ax:                                            ; preds = %.invoke169, %.invoke, %bb.ah, %bb.aq, %bb.aw, %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 262800 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo8Matching28hammingDistanceBlockMatchingERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(262784) %i.du, ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 8 dereferenceable(208) %i.ch, i32 noundef %i.dw)
          to label %bb.ay unwind label %bb.aj

bb.ay:                                            ; preds = %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 262848 ; 4 uses
  %.val65 = load i32, ptr %11, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 263912
  %.val66 = load ptr, ptr %i.dy, align 8          ; 3 uses
  %i.dz = load i32, ptr %i.ck, align 8, !tbaa !177 ; 6 uses
  %i.ea = load i32, ptr %i.cl, align 4, !tbaa !178 ; 26 uses
  %i.eb = add nsw i32 %i.dz, %i.ea
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !179 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 262808
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !180 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  %i.eh = sub nsw i32 100, %i.ef
  %i.ei = select i1 %i.eg, i32 %i.eh, i32 90
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 262828
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !181
  %i.el = call i32 @llvm.smax.i32(i32 %i.ek, i32 1) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 262812
  %i.en = load i32, ptr %i.em, align 4, !tbaa !182 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  %i.ep = select i1 %i.eo, i32 %i.en, i32 2       ; 12 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 262816
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !183 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  %i.et = select i1 %i.es, i32 %i.er, i32 5
  %i.eu = add nuw nsw i32 %i.ep, 1
  %.sroa.speculated173.i = call i32 @llvm.smax.i32(i32 %i.et, i32 %i.eu) ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !54 ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !53 ; 4 uses
  %i.ez = sub nsw i32 0, %i.eb
  %.sroa.speculated165.i = call i32 @llvm.smax.i32(i32 %i.ez, i32 0) ; 3 uses
  %.sroa.speculated159.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 0)
  %i.fa = add nsw i32 %i.ew, %.sroa.speculated159.i ; 3 uses
  %i.fb = sub i32 %i.fa, %.sroa.speculated165.i   ; 6 uses
  %i.fc = shl i32 %i.dz, 4                        ; 2 uses
  %i.fd = add i32 %i.fc, -16                      ; 3 uses
  %i.fe = sdiv i32 %i.ec, 2
  %i.ff = select i1 %i.ed, i32 %i.fe, i32 2       ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 262832
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !184
  %.not642.i = icmp eq i32 %i.fh, 1               ; 5 uses
  %i.fi = select i1 %.not642.i, i32 2, i32 1      ; 2 uses
  %.not634.i = icmp slt i32 %.sroa.speculated165.i, %i.fa
  br i1 %.not634.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fj = sitofp i32 %i.fd to double
  %i.fk = insertelement <4 x double> poison, double %i.fj, i64 0
  %i.fl = shufflevector <4 x double> %i.fk, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.fl, ptr %4, align 8, !tbaa !185, !alias.scope !186
  %i.fm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc100 unwind label %bb.aj ; 0 uses

.noexc100:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.fn = and i32 %i.ea, 15
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc101 unwind label %bb.aj

.noexc101:                                        ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_, ptr noundef nonnull @.str.21, i32 noundef 181) #22
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc101
  unreachable

bb.bd:                                            ; preds = %.noexc101
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.bd
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !26
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body102

bb.be:                                            ; preds = %bb.ba
  %i.fv = add i32 %i.ea, 16                       ; 4 uses
  %i.fw = shl i32 %i.fv, 3                        ; 3 uses
  %i.fx = mul i32 %i.fb, %i.ea                    ; 7 uses
  %i.fy = sext i32 %i.fx to i64                   ; 21 uses
  %i.fz = select i1 %.not642.i, i32 %i.ey, i32 1
  %i.ga = sext i32 %i.fz to i64                   ; 6 uses
  %i.gb = mul nsw i64 %i.ga, %i.fy                ; 3 uses
  %i.gc = shl i32 %i.fb, 3                        ; 2 uses
  %i.gd = add i32 %i.gc, 16
  %i.ge = sext i32 %i.gd to i64                   ; 4 uses
  %i.gf = sext i32 %i.fv to i64                   ; 8 uses
  %i.gg = mul nsw i64 %i.ge, %i.gf                ; 3 uses
  %i.gh = shl nsw i32 %i.ff, 1                    ; 2 uses
  %i.gi = add i32 %i.gh, 2                        ; 3 uses
  %i.gj = add i64 %i.gg, %i.ge                    ; 2 uses
  %i.gk = add nsw i32 %i.gh, 3
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gl, 1
  %i.gn = mul nsw i64 %i.gm, %i.fy
  %i.go = lshr i32 %.val65, 1
  %i.gp = and i32 %i.go, 2032
  %i.gq = add nuw nsw i32 %i.gp, 16
  %i.gr = mul i32 %i.ew, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = sext i32 %i.ew to i64                   ; 7 uses
  %i.gu = add nsw i64 %i.gb, %i.gt
  %reass.add.i = add nsw i64 %i.gu, %i.gj
  %reass.mul.i = shl i64 %reass.add.i, 2
  %i.gv = add nsw i64 %i.gs, 1024
  %i.gw = add nsw i64 %i.gv, %i.gn
  %i.gx = add i64 %i.gw, %reass.mul.i             ; 2 uses
  %i.gy = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dx)
          to label %.noexc104 unwind label %bb.aj

.noexc104:                                        ; preds = %bb.be
  br i1 %i.gy, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.noexc104
  %i.gz = load i32, ptr %i.dx, align 8, !tbaa !21 ; 3 uses
  %i.ha = and i32 %i.gz, 16384
  %.not190.i = icmp eq i32 %i.ha, 0
  br i1 %.not190.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 262860
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 262856
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !53
  %i.hf = mul nsw i32 %i.he, %i.hc
  %i.hg = sext i32 %i.hf to i64
  %i.hh = lshr i32 %i.gz, 5
  %i.hi = and i32 %i.hh, 127
  %i.hj = add nuw nsw i32 %i.hi, 1
  %i.hk = shl i32 %i.gz, 2
  %i.hl = and i32 %i.hk, 124
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = lshr i64 1275511473185297, %i.hm
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = and i32 %i.ho, 15
  %i.hq = mul nuw nsw i32 %i.hp, %i.hj
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = mul nsw i64 %i.hg, %i.hr
  %i.ht = icmp ult i64 %i.hs, %i.gx
  br i1 %i.ht, label %bb.bh, label %.noexc105

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.noexc104
  %i.hu = trunc i64 %i.gx to i32
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.dx, i32 noundef 1, i32 noundef %i.hu, i32 noundef 0)
          to label %.noexc105 unwind label %bb.aj

.noexc105:                                        ; preds = %bb.bh, %bb.bg
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 262872
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = add i64 %i.hx, 15
  %i.hz = and i64 %i.hy, -16                      ; 12 uses
  %i.ia = inttoptr i64 %i.hz to ptr               ; 14 uses
  %i.ib = getelementptr [2 x i8], ptr %i.ia, i64 %i.gb ; 2 uses
  %i.ic = getelementptr [2 x i8], ptr %i.ib, i64 %i.gb ; 3 uses
  %i.id = sext i32 %i.gi to i64                   ; 5 uses
  %i.ie = mul nsw i64 %i.fy, %i.id
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.ie ; 7 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.fy ; 3 uses
  %.idx.i = shl i64 %i.gj, 2                      ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i ; 7 uses
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.ih, i64 %i.gt ; 8 uses
  %i.ij = icmp slt i32 %i.fx, 1                   ; 3 uses
  br i1 %i.ij, label %..preheader229_crit_edge.i, label %iter.check

..preheader229_crit_edge.i:                       ; preds = %.noexc105
  %.pre.i = zext i32 %i.fx to i64
  br label %.preheader229.i

iter.check:                                       ; preds = %.noexc105
  %i.ik = trunc i32 %.sroa.speculated173.i to i16 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.fx to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.fx, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check171 = icmp ult i32 %i.fx, 16
  br i1 %min.iters.check171, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ik, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.il, align 16, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.im, align 16, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.in = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.in, label %.preheader229.i, label %vector.body, !llvm.loop !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert173 = insertelement <4 x i16> poison, i16 %i.ik, i64 0
  %broadcast.splat174 = shufflevector <4 x i16> %broadcast.splatinsert173, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %index175
  store <4 x i16> %broadcast.splat174, ptr %i.io, align 8, !tbaa !59
  %index.next176 = add nuw i64 %index175, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next176, %wide.trip.count.i
  br i1 %i.ip, label %.preheader229.i, label %vec.epilog.vector.body, !llvm.loop !110

.preheader229.i:                                  ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph, %..preheader229_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..preheader229_crit_edge.i ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ], [ %wide.trip.count.i, %vec.epilog.vector.body ], [ %wide.trip.count.i, %vector.body ] ; 12 uses
  %i.iq = sext i32 %i.fw to i64                   ; 6 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ig, i64 %i.iq ; 2 uses
  %i.ir = sub nsw i64 0, %i.iq                    ; 4 uses
  %i.is = shl nsw i64 %i.gg, 1                    ; 3 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.is ; 3 uses
  %i.iu = shl nsw i64 %i.ge, 1                    ; 2 uses
  %i.iv = add nsw i32 %i.ey, -1                   ; 2 uses
  %i.iw = add i32 %i.fb, -1                       ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.iz = sext i32 %i.ea to i64                   ; 18 uses
  %i.ja = shl nsw i64 %i.iz, 1
  %i.jb = mul nsw i32 %i.ff, %i.ea                ; 4 uses
  %.not643242.i = icmp slt i32 %i.jb, 0
  %i.jc = icmp slt i32 %i.ea, 1                   ; 2 uses
  %i.jd = trunc i32 %i.ff to i16
  %i.je = add i16 %i.jd, 1                        ; 2 uses
  %i.jf = icmp sge i32 %i.ea, %i.fx
  %i.jg = mul i32 %i.iw, %i.ea                    ; 4 uses
  %.neg.i = xor i32 %i.ff, -1                     ; 2 uses
  %.neg644.i = mul i32 %i.ea, %.neg.i             ; 2 uses
  %i.jh = sub nsw i64 0, %i.fy
  %.idx645.i = select i1 %.not642.i, i64 %i.jh, i64 0 ; 3 uses
  %i.ji = shl nsw i64 %i.iq, 1                    ; 2 uses
  %i.jj = mul nsw i32 %i.fb, %i.fw
  %i.jk = sext i32 %i.jj to i64
  %i.jl = sext i32 %i.gc to i64
  %i.jm = shl i32 %i.fv, 1
  %i.jn = sext i32 %i.jm to i64                   ; 3 uses
  %i.jo = mul i32 %i.fv, 3
  %i.jp = sext i32 %i.jo to i64                   ; 3 uses
  %i.jq = icmp sgt i32 %i.ea, 0                   ; 3 uses
  %i.jr = trunc i32 %i.fd to i16                  ; 9 uses
  %i.js = add nsw i32 %i.ea, -1
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 262844
  %i.ju = zext i32 %i.ea to i64                   ; 17 uses
  %i.jv = sext i32 %i.ey to i64
  %i.jw = add nsw i32 %i.ff, 1
  %i.jx = shl nuw nsw i64 %.pre-phi.i, 1
  %i.jy = zext nneg i32 %i.fb to i64
  %i.jz = zext nneg i32 %.sroa.speculated165.i to i64 ; 4 uses
  %i.ka = sext i32 %i.ff to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.ir
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -16
  %gep.1.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gg
  %i.ke = getelementptr inbounds nuw i8, ptr %gep.1.i, i64 16 ; 2 uses
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.ir
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -16
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.ge ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.trip.count351.i = zext i32 %i.ew to i64   ; 11 uses
  %brmerge.i = or i1 %i.jc, %.not643242.i
  %brmerge328.i = or i1 %i.jc, %i.jf              ; 2 uses
  %wide.trip.count425.i = zext nneg i32 %i.fa to i64
  %i.kk = add i64 %i.hz, %.idx.i
  %i.kl = shl nsw i64 %i.ga, 2
  %i.km = shl nsw i64 %i.id, 1
  %i.kn = add nsw i64 %i.kl, %i.km
  %i.ko = or disjoint i64 %i.kn, 2
  %i.kp = mul i64 %i.ko, %i.fy                    ; 2 uses
  %i.kq = add i64 %i.kk, %i.kp
  %.neg = mul nsw i64 %i.gt, -2
  %.neg774 = sub i64 %.neg, %i.kq
  %i.kr = add i64 %i.hz, %.idx.i
  %i.ks = add i64 %i.kr, %i.kp
  %i.kt = shl nuw nsw i64 %i.ju, 1                ; 17 uses
  %i.ku = shl nsw i64 %i.gf, 4
  %i.kv = shl nsw i64 %i.gf, 4
  %i.kw = shl nsw i64 %i.jn, 1                    ; 5 uses
  %i.kx = add nsw i64 %i.kw, %i.kt
  %i.ky = shl nsw i64 %i.jp, 1                    ; 6 uses
  %i.kz = mul nsw i64 %i.ga, %i.fy
  %i.la = shl i64 %i.kz, 1                        ; 2 uses
  %i.lb = shl nsw i64 %i.iz, 1
  %i.lc = shl nsw i64 %i.iz, 1
  %i.ld = add nsw i64 %i.kt, -2
  %i.le = or disjoint i64 %i.kt, 2
  %i.lf = shl nsw i64 %i.iq, 1                    ; 10 uses
  %i.lg = sub nsw i64 %i.kt, %i.lf
  %i.lh = add nsw i64 %i.kt, -2
  %i.li = sub nsw i64 %i.lh, %i.lf
  %i.lj = or disjoint i64 %i.kt, 2
  %i.lk = sub nsw i64 %i.lj, %i.lf
  %i.ll = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %scevgep570.a = getelementptr i8, ptr %i.ia, i64 %i.ll
  %scevgep572.a = getelementptr i8, ptr %i.ia, i64 %i.ll
  %i.lm = shl nsw i64 %i.ga, 2                    ; 4 uses
  %i.ln = shl nsw i64 %i.iz, 1                    ; 2 uses
  %i.lo = add i64 %i.hz, %i.ln
  %i.lp = shl nsw i64 %i.iz, 1
  %i.lq = shl nsw i64 %i.id, 1
  %i.lr = add nsw i64 %i.lm, %i.lq
  %i.ls = mul i64 %i.lr, %i.fy                    ; 2 uses
  %i.lt = add i64 %i.hz, %i.ls
  %i.lu = add nsw i32 %i.ff, 1
  %i.lv = mul i32 %i.ea, %i.lu
  %i.lw = add i64 %i.hz, %i.ls
  %i.lx = mul i32 %i.ff, %i.ea
  %i.ly = add i64 %i.hz, %i.ln
  %i.lz = shl nsw i64 %i.iz, 1
  %i.ma = add i64 %i.hz, %i.lz
  %i.mb = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.mc = shl nsw i64 %i.iz, 1
  %i.md = shl nsw i64 %i.id, 1
  %i.me = add nsw i64 %i.mb, %i.md
  %i.mf = mul i64 %i.me, %i.fy                    ; 2 uses
  %i.mg = add i64 %i.hz, %i.mf
  %i.mh = add nsw i32 %i.ff, 1
  %i.mi = mul i32 %i.ea, %i.mh
  %i.mj = add i64 %i.hz, %i.mf
  %i.mk = mul i32 %i.ff, %i.ea
  %i.ml = shl nuw nsw i64 %i.ju, 1                ; 2 uses
  %scevgep694.a = getelementptr i8, ptr %i.ia, i64 %i.ml
  %i.mm = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.mn = shl nsw i64 %i.id, 1
  %i.mo = add nsw i64 %i.mm, %i.mn
  %i.mp = mul i64 %i.mo, %i.fy                    ; 3 uses
  %i.mq = shl nuw nsw i64 %i.ju, 1
  %scevgep737 = getelementptr i8, ptr %i.ia, i64 %i.mp
  %scevgep738 = getelementptr i8, ptr %i.ia, i64 %i.mp
  %i.mr = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.ms = add nsw i64 %i.mr, -2
  %i.mt = shl nsw i64 %i.gt, 1
  %i.mu = shl nsw i64 %i.gt, 1
  %i.mv = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mw = add nsw i64 %i.mv, -2
  %min.iters.check703 = icmp ult i32 %i.ea, 4
  %i.mx = getelementptr i8, ptr %i.ia, i64 %i.mp
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.ml
  %min.iters.check705 = icmp ult i32 %i.ea, 16
  %min.iters.check661 = icmp ult i32 %i.ea, 4
  %min.iters.check663 = icmp ult i32 %i.ea, 16
  %min.iters.check636 = icmp ult i32 %i.ea, 16
  %i.mz = shl nsw i64 %.idx645.i, 1
  %diff.check631 = icmp ugt i64 %i.mz, -16
  %min.iters.check578 = icmp samesign ult i64 %.pre-phi.i, 4
  %min.iters.check580 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.na = and i64 %.pre-phi.i, 12
  %n.vec582 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n593 = icmp eq i64 %.pre-phi.i, %n.vec582
  %min.epilog.iters.check598 = icmp eq i64 %i.na, 0
  %n.vec600 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n609 = icmp eq i64 %.pre-phi.i, %n.vec600
  %xtraiter847 = and i64 %.pre-phi.i, 1
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  %29 = getelementptr i8, ptr %i.ia, i64 %i.la
  %30 = getelementptr i8, ptr %29, i64 %i.kt
  %i.nb = getelementptr i8, ptr %i.ia, i64 %i.kt
  %i.nc = getelementptr i8, ptr %i.ia, i64 %i.la
  %min.iters.check531 = icmp ult i32 %i.ea, 28
  %broadcast.splatinsert534 = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat535 = shufflevector <4 x i32> %broadcast.splatinsert534, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %min.iters.check181 = icmp ult i32 %i.ew, 4
  %i.nd = shl nsw i64 %i.gt, 1
  %diff.check178 = icmp ugt i64 %i.nd, -32
  %min.iters.check183 = icmp ult i32 %i.ew, 16
  %i.ne = and i64 %wide.trip.count351.i, 12
  %n.vec185 = and i64 %wide.trip.count351.i, 4294967280 ; 4 uses
  %broadcast.splatinsert186 = insertelement <8 x i16> poison, i16 %i.jr, i64 0
  %broadcast.splat187 = shufflevector <8 x i16> %broadcast.splatinsert186, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n192 = icmp eq i64 %n.vec185, %wide.trip.count351.i
  %min.epilog.iters.check197 = icmp eq i64 %i.ne, 0
  %n.vec199 = and i64 %wide.trip.count351.i, 4294967292 ; 3 uses
  %broadcast.splatinsert200 = insertelement <4 x i16> poison, i16 %i.jr, i64 0
  %broadcast.splat201 = shufflevector <4 x i16> %broadcast.splatinsert200, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n206 = icmp eq i64 %n.vec199, %wide.trip.count351.i
  %xtraiter850 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod851.not = icmp eq i64 %xtraiter850, 0
  %i.nf = add nsw i64 %wide.trip.count351.i, -1
  %i.ng = icmp ult i32 %i.ea, 4
  br label %bb.bi

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv.i
  store i16 %i.ik, ptr %i.nh, align 2, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader229.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.bi:                                            ; preds = %._crit_edge317.i, %.preheader229.i
  %.0598324.i = phi i32 [ 1, %.preheader229.i ], [ %i.om, %._crit_edge317.i ] ; 4 uses
  %i.ni = icmp eq i32 %.0598324.i, 1              ; 2 uses
  br i1 %i.ni, label %.preheader228.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br label %.preheader228.i

.preheader228.i:                                  ; preds = %bb.bj, %bb.bi
  %.0597.i = phi i32 [ %i.iw, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.0596.i = phi i32 [ %i.iv, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  %.0595.i = phi i32 [ -1, %bb.bj ], [ %i.fb, %bb.bi ] ; 2 uses
  %.0594.i = phi i32 [ -1, %bb.bj ], [ %i.ey, %bb.bi ] ; 2 uses
  %.0592.i = phi i32 [ -1, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kd, i8 0, i64 %i.is, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.it, i8 0, i64 %i.iu, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kg, i8 0, i64 %i.is, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.kh, i8 0, i64 %i.iu, i1 false)
  %.not637313.i = icmp eq i32 %.0596.i, %.0594.i
  br i1 %.not637313.i, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.preheader228.i
  %.not639280.i = icmp eq i32 %.0597.i, %.0595.i
  %i.nj = mul i32 %.0592.i, %i.fw
  %i.nk = sext i32 %i.nj to i64                   ; 2 uses
  %i.nl = sub nsw i64 0, %i.nk
  %i.nm = icmp eq i32 %.0598324.i, %i.fi
  %i.nn = add i32 %i.jw, %.0596.i
  %i.no = sext i32 %.0597.i to i64                ; 4 uses
  %i.np = sext i32 %.0592.i to i64                ; 5 uses
  %i.nq = sext i32 %.0596.i to i64
  %i.nr = mul i64 %i.ku, %i.no                    ; 17 uses
  %i.ns = mul nsw i64 %i.kv, %i.np
  %i.nt = shl nsw i64 %i.no, 4
  %i.nu = or disjoint i64 %i.nt, 2
  %i.nv = mul i64 %i.nu, %i.gf                    ; 6 uses
  %i.nw = add i64 %i.kx, %i.nr
  %i.nx = mul i64 %i.lb, %i.no                    ; 3 uses
  %i.ny = mul nsw i64 %i.lc, %i.np
  %i.nz = add i64 %i.kt, %i.nr
  %i.oa = shl nsw i64 %i.nk, 1                    ; 5 uses
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = add i64 %i.nr, -2
  %i.od = sub i64 %i.oc, %i.oa
  %i.oe = add i64 %i.ld, %i.nr
  %i.of = sub i64 %i.oe, %i.oa
  %i.og = or disjoint i64 %i.nr, 2
  %i.oh = sub i64 %i.og, %i.oa
  %i.oi = add i64 %i.le, %i.nr
  %i.oj = sub i64 %i.oi, %i.oa
  %reass.sub = sub i64 %i.nv, %i.lf
  %reass.sub775 = sub i64 %i.nv, %i.lf
  %31 = getelementptr i8, ptr %30, i64 %i.nx
  %i.ok = getelementptr i8, ptr %i.nb, i64 %i.nx
  %i.ol = getelementptr i8, ptr %i.nc, i64 %i.nx
  br label %bb.bk

._crit_edge317.i:                                 ; preds = %.loopexit223.i, %.preheader228.i
  %i.om = add nuw nsw i32 %.0598324.i, 1
  %exitcond430.not.i = icmp eq i32 %.0598324.i, %i.fi
  br i1 %exitcond430.not.i, label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit, label %bb.bi, !llvm.loop !112

bb.bk:                                            ; preds = %.loopexit223.i, %.lr.ph316.i
  %indvars.iv427.i = phi i64 [ %i.nq, %.lr.ph316.i ], [ %indvars.iv.next428.i, %.loopexit223.i ] ; 7 uses
  %indvars.iv385.i = phi i32 [ %i.nn, %.lr.ph316.i ], [ %indvars.iv.next386.i, %.loopexit223.i ] ; 2 uses
  %i.on = phi ptr [ %i.ki, %.lr.ph316.i ], [ %i.oq, %.loopexit223.i ] ; 3 uses
  %i.oo = phi ptr [ %i.ke, %.lr.ph316.i ], [ %i.op, %.loopexit223.i ] ; 17 uses
  %i.op = phi ptr [ %i.kb, %.lr.ph316.i ], [ %i.oo, %.loopexit223.i ] ; 14 uses
  %i.oq = phi ptr [ %i.kj, %.lr.ph316.i ], [ %i.on, %.loopexit223.i ] ; 7 uses
  %i.or = load ptr, ptr %i.ix, align 8, !tbaa !57 ; 2 uses
  %i.os = ptrtoaddr ptr %i.or to i64              ; 2 uses
  %i.ot = load i64, ptr %i.iy, align 8, !tbaa !62
  %i.ou = mul i64 %i.ot, %indvars.iv427.i         ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ou ; 7 uses
  %i.ow = mul nsw i64 %indvars.iv427.i, %i.fy
  %i.ox = select i1 %.not642.i, i64 %i.ow, i64 0  ; 5 uses
  %i.oy = getelementptr [2 x i8], ptr %i.ia, i64 %i.ox ; 11 uses
  %i.oz = getelementptr [2 x i8], ptr %i.ib, i64 %i.ox ; 3 uses
  br i1 %i.ni, label %bb.bl, label %.loopexit227.i

bb.bl:                                            ; preds = %bb.bk
  %i.pa = icmp ne i64 %indvars.iv427.i, 0         ; 2 uses
  %i.pb = add nsw i64 %indvars.iv427.i, %i.ka     ; 2 uses
  %i.pc = select i1 %i.pa, i64 %i.pb, i64 0       ; 3 uses
  %.not638263.i = icmp sgt i64 %i.pc, %i.pb
  br i1 %.not638263.i, label %.preheader226.i, label %.lr.ph266.i

.lr.ph266.i:                                      ; preds = %bb.bl
  %i.pd = icmp sgt i64 %indvars.iv427.i, 0
  %i.pe = trunc nsw i64 %indvars.iv427.i to i32
  %i.pf = add i32 %i.pe, %.neg.i
  %.sroa.speculated141.i = call i32 @llvm.smax.i32(i32 %i.pf, i32 0)
  %i.pg = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %.idx645.i ; 2 uses
  %brmerge499.i = or i1 %i.ij, %i.pa
  %i.ph = shl i64 %i.ox, 1                        ; 4 uses
  %scevgep571 = getelementptr i8, ptr %scevgep570.a, i64 %i.ph
  %i.pi = add i64 %.idx645.i, %i.ox
  %i.pj = shl i64 %i.pi, 1
  %i.pk = add i64 %i.ly, %i.ph
  %i.pl = mul i64 %i.mt, %i.pc                    ; 2 uses
  %i.pm = add i64 %i.mw, %i.pl
  br label %bb.bm

.preheader226.i:                                  ; preds = %.loopexit217.i, %bb.bl
  br i1 %i.ij, label %.loopexit227.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %.preheader226.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.oz, i8 0, i64 %i.jx, i1 false), !tbaa !59
  br label %.loopexit227.i

bb.bm:                                            ; preds = %.loopexit217.i, %.lr.ph266.i
  %indvar740 = phi i64 [ %indvar.next741, %.loopexit217.i ], [ 0, %.lr.ph266.i ] ; 2 uses
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %.loopexit217.i ], [ %i.pc, %.lr.ph266.i ] ; 5 uses
  %i.pn = mul i64 %i.mu, %indvar740               ; 2 uses
  %i.po = add i64 %i.pl, %i.pn
  %i.pp = add i64 %i.pm, %i.pn
  %i.pq = trunc nsw i64 %indvars.iv382.i to i32
  %.sroa.speculated148.i = call i32 @llvm.smin.i32(i32 %i.iv, i32 %i.pq)
  %i.pr = srem i32 %.sroa.speculated148.i, %i.gi
  %i.ps = sext i32 %i.pr to i64                   ; 5 uses
  %i.pt = mul nsw i64 %i.ps, %i.fy
  %i.pu = getelementptr [2 x i8], ptr %i.ic, i64 %i.pt ; 20 uses
  %i.pv = icmp slt i64 %indvars.iv382.i, %i.jv
  br i1 %i.pv, label %.preheader221.i, label %.loopexit218.i

.preheader221.i:                                  ; preds = %bb.bm
  %i.pw = load i32, ptr %i.cl, align 4, !tbaa !178 ; 6 uses
  %.not233.i = icmp slt i32 %i.pw, 0
  %i.px = mul nsw i64 %indvars.iv382.i, %i.gt
  br i1 %.not233.i, label %._crit_edge237.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader221.i
  %i.py = add nuw i32 %i.pw, 1                    ; 3 uses
  %i.pz = sext i32 %i.py to i64                   ; 3 uses
  %i.qa = zext nneg i32 %i.pw to i64              ; 2 uses
  %wide.trip.count346.i = zext i32 %i.py to i64   ; 8 uses
  %i.qb = mul i64 %i.ms, %i.qa
  %i.qc = shl nuw nsw i64 %wide.trip.count346.i, 1 ; 2 uses
  %i.qd = getelementptr i8, ptr %scevgep738, i64 %i.qb
  %scevgep739 = getelementptr i8, ptr %i.qd, i64 %i.qc
  %i.qe = mul i64 %i.po, %i.pz
  %scevgep742 = getelementptr i8, ptr %.val66, i64 %i.qe
  %i.qf = mul i64 %i.pp, %i.pz
  %i.qg = getelementptr i8, ptr %.val66, i64 %i.qf
  %scevgep743 = getelementptr i8, ptr %i.qg, i64 %i.qc
  %i.qh = zext nneg i32 %i.pw to i64
  %min.iters.check748.a = icmp ult i32 %i.pw, 3
  %bound0744 = icmp ult ptr %scevgep737, %scevgep743
  %bound1745 = icmp ult ptr %scevgep742, %scevgep739
  %found.conflict746 = and i1 %bound0744, %bound1745
  %stride.check = icmp slt i32 %i.py, 0
  %i.qi = or i1 %found.conflict746, %stride.check
  %min.iters.check750 = icmp ult i32 %i.pw, 15
  %i.qj = and i64 %wide.trip.count346.i, 12
  %n.vec752 = and i64 %wide.trip.count346.i, 2147483632 ; 4 uses
  %cmp.n759 = icmp eq i64 %n.vec752, %wide.trip.count346.i
  %min.epilog.iters.check764 = icmp eq i64 %i.qj, 0
  %n.vec766 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %cmp.n772 = icmp eq i64 %n.vec766, %wide.trip.count346.i
  %xtraiter = and i64 %wide.trip.count346.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check761

iter.check761:                                    ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv348.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next349.i, %._crit_edge.i ] ; 3 uses
  %i.qk = add nsw i64 %indvars.iv348.i, %i.px
  %i.ql = mul nsw i64 %i.qk, %i.pz
  %i.qm = mul nuw nsw i64 %indvars.iv348.i, %i.qa
  %i.qn = getelementptr [2 x i8], ptr %.val66, i64 %i.ql ; 7 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.qm ; 7 uses
  %brmerge = select i1 %min.iters.check748.a, i1 true, i1 %i.qi
  br i1 %brmerge, label %vec.epilog.scalar.ph762.preheader, label %vector.main.loop.iter.check749

vector.main.loop.iter.check749:                   ; preds = %iter.check761
  br i1 %min.iters.check750, label %vec.epilog.ph765, label %vector.body753

vector.body753:                                   ; preds = %vector.main.loop.iter.check749, %vector.body753
  %index754 = phi i64 [ %index.next757, %vector.body753 ], [ 0, %vector.main.loop.iter.check749 ] ; 3 uses
  %i.qp = getelementptr [2 x i8], ptr %i.qn, i64 %index754 ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 16
  %wide.load755 = load <8 x i16>, ptr %i.qp, align 2, !tbaa !59, !alias.scope !187
  %wide.load756 = load <8 x i16>, ptr %i.qq, align 2, !tbaa !59, !alias.scope !187
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %index754 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store <8 x i16> %wide.load755, ptr %i.qr, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  store <8 x i16> %wide.load756, ptr %i.qs, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next757 = add nuw i64 %index754, 16      ; 2 uses
  %i.qt = icmp eq i64 %index.next757, %n.vec752
  br i1 %i.qt, label %middle.block758, label %vector.body753, !llvm.loop !116

middle.block758:                                  ; preds = %vector.body753
  br i1 %cmp.n759, label %._crit_edge.i, label %vec.epilog.iter.check763

vec.epilog.iter.check763:                         ; preds = %middle.block758
  br i1 %min.epilog.iters.check764, label %vec.epilog.scalar.ph762.preheader, label %vec.epilog.ph765, !prof !63

vec.epilog.ph765:                                 ; preds = %vector.main.loop.iter.check749, %vec.epilog.iter.check763
  %vec.epilog.resume.val760 = phi i64 [ %n.vec752, %vec.epilog.iter.check763 ], [ 0, %vector.main.loop.iter.check749 ]
  br label %vec.epilog.vector.body767

vec.epilog.vector.body767:                        ; preds = %vec.epilog.vector.body767, %vec.epilog.ph765
  %index768 = phi i64 [ %vec.epilog.resume.val760, %vec.epilog.ph765 ], [ %index.next770, %vec.epilog.vector.body767 ] ; 3 uses
  %i.qu = getelementptr [2 x i8], ptr %i.qn, i64 %index768
  %wide.load769 = load <4 x i16>, ptr %i.qu, align 2, !tbaa !59, !alias.scope !187
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %index768
  store <4 x i16> %wide.load769, ptr %i.qv, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next770 = add nuw i64 %index768, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next770, %n.vec766
  br i1 %i.qw, label %vec.epilog.middle.block771, label %vec.epilog.vector.body767, !llvm.loop !117

vec.epilog.middle.block771:                       ; preds = %vec.epilog.vector.body767
  br i1 %cmp.n772, label %._crit_edge.i, label %vec.epilog.scalar.ph762.preheader

vec.epilog.scalar.ph762.preheader:                ; preds = %iter.check761, %vec.epilog.iter.check763, %vec.epilog.middle.block771
  %indvars.iv343.i.ph = phi i64 [ 0, %iter.check761 ], [ %n.vec766, %vec.epilog.middle.block771 ], [ %n.vec752, %vec.epilog.iter.check763 ] ; 3 uses
  %i.qx = sub nsw i64 %i.qh, %indvars.iv343.i.ph
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph762.prol.loopexit, label %vec.epilog.scalar.ph762.prol

vec.epilog.scalar.ph762.prol:                     ; preds = %vec.epilog.scalar.ph762.preheader, %vec.epilog.scalar.ph762.prol
  %indvars.iv343.i.prol = phi i64 [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph762.prol ], [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph762.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph762.prol ], [ 0, %vec.epilog.scalar.ph762.preheader ]
  %i.qy = getelementptr [2 x i8], ptr %i.qn, i64 %indvars.iv343.i.prol
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !59
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv343.i.prol
  store i16 %i.qz, ptr %i.ra, align 2, !tbaa !59
  %indvars.iv.next344.i.prol = add nuw nsw i64 %indvars.iv343.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph762.prol.loopexit, label %vec.epilog.scalar.ph762.prol, !llvm.loop !118

vec.epilog.scalar.ph762.prol.loopexit:            ; preds = %vec.epilog.scalar.ph762.prol, %vec.epilog.scalar.ph762.preheader
  %indvars.iv343.i.unr = phi i64 [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph762.preheader ], [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph762.prol ]
  %i.rb = icmp ult i64 %i.qx, 3
  br i1 %i.rb, label %._crit_edge.i, label %vec.epilog.scalar.ph762

._crit_edge237.split.i:                           ; preds = %._crit_edge.i, %.preheader221.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.pu, i8 0, i64 %i.ja, i1 false)
  br i1 %brmerge.i, label %._crit_edge246.split.i, label %.lr.ph240.i.preheader

.lr.ph240.i.preheader:                            ; preds = %._crit_edge237.split.i
  %i.rc = shl nsw i64 %i.ps, 1
  %i.rd = add nsw i64 %i.mm, %i.rc
  %i.re = mul i64 %i.rd, %i.fy
  %scevgep695 = getelementptr i8, ptr %scevgep694.a, i64 %i.re
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  br label %iter.check720

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph762.prol.loopexit, %vec.epilog.scalar.ph762, %vec.epilog.middle.block771, %middle.block758
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i64 %indvars.iv.next349.i, %wide.trip.count351.i
  br i1 %exitcond352.not.i, label %._crit_edge237.split.i, label %iter.check761, !llvm.loop !119

vec.epilog.scalar.ph762:                          ; preds = %vec.epilog.scalar.ph762.prol.loopexit, %vec.epilog.scalar.ph762
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i.3, %vec.epilog.scalar.ph762 ], [ %indvars.iv343.i.unr, %vec.epilog.scalar.ph762.prol.loopexit ] ; 6 uses
  %i.rh = getelementptr [2 x i8], ptr %i.qn, i64 %indvars.iv343.i
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !59
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv343.i
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !59
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.rk = getelementptr [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !59
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !59
  %indvars.iv.next344.i.1 = add nuw nsw i64 %indvars.iv343.i, 2 ; 2 uses
  %i.rn = getelementptr [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i.1
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !59
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i.1
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !59
  %indvars.iv.next344.i.2 = add nuw nsw i64 %indvars.iv343.i, 3 ; 2 uses
  %i.rq = getelementptr [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i.2
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !59
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i.2
  store i16 %i.rr, ptr %i.rs, align 2, !tbaa !59
  %indvars.iv.next344.i.3 = add nuw nsw i64 %indvars.iv343.i, 4 ; 2 uses
  %exitcond347.not.i.3 = icmp eq i64 %indvars.iv.next344.i.3, %wide.trip.count346.i
  br i1 %exitcond347.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph762, !llvm.loop !120

iter.check720:                                    ; preds = %.lr.ph240.i.preheader, %._crit_edge241.i
  %indvar696 = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvar.next697, %._crit_edge241.i ] ; 2 uses
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next359.i, %._crit_edge241.i ] ; 3 uses
  %i.rt = icmp eq i64 %indvars.iv358.i, 0
  %i.ru = select i1 %i.rt, i16 %i.je, i16 1       ; 4 uses
  %invariant.gep485.i = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv358.i ; 7 uses
  br i1 %min.iters.check703, label %vec.epilog.scalar.ph721.preheader.new, label %vector.memcheck693

vector.memcheck693:                               ; preds = %iter.check720
  %i.rv = mul i64 %i.mq, %indvar696
  %scevgep698 = getelementptr i8, ptr %i.my, i64 %i.rv
  %bound0699 = icmp ult ptr %i.pu, %scevgep698
  %bound1700 = icmp ult ptr %invariant.gep485.i, %scevgep695
  %found.conflict701 = and i1 %bound0699, %bound1700
  br i1 %found.conflict701, label %vec.epilog.scalar.ph721.preheader.new, label %vector.main.loop.iter.check704

vec.epilog.scalar.ph721.preheader.new:            ; preds = %vector.memcheck693, %iter.check720
  br label %vec.epilog.scalar.ph721

vector.main.loop.iter.check704:                   ; preds = %vector.memcheck693
  br i1 %min.iters.check705, label %vec.epilog.ph724, label %vector.ph706

vector.ph706:                                     ; preds = %vector.main.loop.iter.check704
  %broadcast.splatinsert708 = insertelement <8 x i16> poison, i16 %i.ru, i64 0
  %broadcast.splat709 = shufflevector <8 x i16> %broadcast.splatinsert708, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body710

vector.body710:                                   ; preds = %vector.ph706, %vector.body710
  %index711 = phi i64 [ 0, %vector.ph706 ], [ %index.next716, %vector.body710 ] ; 3 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %index711 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 2 uses
  %wide.load712.a = load <8 x i16>, ptr %i.rw, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load713.a = load <8 x i16>, ptr %i.rx, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %index711 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %wide.load714.a = load <8 x i16>, ptr %i.ry, align 2, !tbaa !59, !alias.scope !190
  %wide.load715 = load <8 x i16>, ptr %i.rz, align 2, !tbaa !59, !alias.scope !190
  %i.sa = mul <8 x i16> %wide.load714.a, %broadcast.splat709
  %i.sb = mul <8 x i16> %wide.load715, %broadcast.splat709
  %i.sc = add <8 x i16> %i.sa, %wide.load712.a
  %i.sd = add <8 x i16> %i.sb, %wide.load713.a
  store <8 x i16> %i.sc, ptr %i.rw, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  store <8 x i16> %i.sd, ptr %i.rx, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %index.next716 = add nuw i64 %index711, 16      ; 2 uses
  %i.se = icmp eq i64 %index.next716, %i.ju
  br i1 %i.se, label %._crit_edge241.i, label %vector.body710, !llvm.loop !124

vec.epilog.ph724:                                 ; preds = %vector.main.loop.iter.check704
  %broadcast.splatinsert726 = insertelement <4 x i16> poison, i16 %i.ru, i64 0
  %broadcast.splat727 = shufflevector <4 x i16> %broadcast.splatinsert726, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  %wide.load730.a = load <4 x i16>, ptr %i.pu, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load731 = load <4 x i16>, ptr %invariant.gep485.i, align 2, !tbaa !59, !alias.scope !190
  %i.sf = mul <4 x i16> %wide.load731, %broadcast.splat727
  %i.sg = add <4 x i16> %i.sf, %wide.load730.a
  store <4 x i16> %i.sg, ptr %i.pu, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load730.1.a = load <4 x i16>, ptr %i.rf, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.sh = getelementptr inbounds nuw i8, ptr %invariant.gep485.i, i64 8
  %wide.load731.1 = load <4 x i16>, ptr %i.sh, align 2, !tbaa !59, !alias.scope !190
  %i.si = mul <4 x i16> %wide.load731.1, %broadcast.splat727
  %i.sj = add <4 x i16> %i.si, %wide.load730.1.a
  store <4 x i16> %i.sj, ptr %i.rf, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load730.2.a = load <4 x i16>, ptr %i.rg, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.sk = getelementptr inbounds nuw i8, ptr %invariant.gep485.i, i64 16
  %wide.load731.2 = load <4 x i16>, ptr %i.sk, align 2, !tbaa !59, !alias.scope !190
  %i.sl = mul <4 x i16> %wide.load731.2, %broadcast.splat727
  %i.sm = add <4 x i16> %i.sl, %wide.load730.2.a
  store <4 x i16> %i.sm, ptr %i.rg, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  br label %._crit_edge241.i

vec.epilog.scalar.ph721:                          ; preds = %vec.epilog.scalar.ph721, %vec.epilog.scalar.ph721.preheader.new
end_hunk_0
begin_hunk_1_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %wide.load686.a = load <4 x i16>, ptr %invariant.gep486.i, align 2, !tbaa !59
  %wide.load687.a = load <4 x i16>, ptr %i.wi, align 2, !tbaa !59
  %i.xu = add <4 x i16> %wide.load687.a, %wide.load686.a
  %wide.load688 = load <4 x i16>, ptr %i.wl, align 2, !tbaa !59
  %i.xv = sub <4 x i16> %i.xu, %wide.load688
  store <4 x i16> %i.xv, ptr %invariant.gep488.i, align 2, !tbaa !59
  %i.xw = getelementptr i8, ptr %invariant.gep486.i, i64 8
  %wide.load686.1.a = load <4 x i16>, ptr %i.xw, align 2, !tbaa !59
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %wide.load687.1.a = load <4 x i16>, ptr %i.xx, align 2, !tbaa !59
  %i.xy = add <4 x i16> %wide.load687.1.a, %wide.load686.1.a
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %wide.load688.1 = load <4 x i16>, ptr %i.xz, align 2, !tbaa !59
  %i.ya = sub <4 x i16> %i.xy, %wide.load688.1
  %i.yb = getelementptr i8, ptr %invariant.gep488.i, i64 8
  store <4 x i16> %i.ya, ptr %i.yb, align 2, !tbaa !59
  %i.yc = getelementptr i8, ptr %invariant.gep486.i, i64 16
  %wide.load686.2.a = load <4 x i16>, ptr %i.yc, align 2, !tbaa !59
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load687.2.a = load <4 x i16>, ptr %i.yd, align 2, !tbaa !59
  %i.ye = add <4 x i16> %wide.load687.2.a, %wide.load686.2.a
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %wide.load688.2 = load <4 x i16>, ptr %i.yf, align 2, !tbaa !59
  %i.yg = sub <4 x i16> %i.ye, %wide.load688.2
  %i.yh = getelementptr i8, ptr %invariant.gep488.i, i64 16
  store <4 x i16> %i.yg, ptr %i.yh, align 2, !tbaa !59
  br label %._crit_edge250.i

vec.epilog.scalar.ph679:                          ; preds = %vec.epilog.scalar.ph679, %vec.epilog.scalar.ph679.preheader.new
  %indvars.iv361.i = phi i64 [ 0, %vec.epilog.scalar.ph679.preheader.new ], [ %indvars.iv.next362.i.1, %vec.epilog.scalar.ph679 ] ; 6 uses
  %niter846 = phi i64 [ 0, %vec.epilog.scalar.ph679.preheader.new ], [ %niter846.next.1, %vec.epilog.scalar.ph679 ]
  %gep487.i = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv361.i
  %i.yi = load i16, ptr %gep487.i, align 2, !tbaa !59
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %indvars.iv361.i
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !59
  %i.yl = add i16 %i.yk, %i.yi
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv361.i
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !59
  %i.yo = sub i16 %i.yl, %i.yn
  %gep489.i = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv361.i
  store i16 %i.yo, ptr %gep489.i, align 2, !tbaa !59
  %indvars.iv.next362.i = or disjoint i64 %indvars.iv361.i, 1 ; 4 uses
  %gep487.i.1 = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv.next362.i
  %i.yp = load i16, ptr %gep487.i.1, align 2, !tbaa !59
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %indvars.iv.next362.i
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !59
  %i.ys = add i16 %i.yr, %i.yp
  %i.yt = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next362.i
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !59
  %i.yv = sub i16 %i.ys, %i.yu
  %gep489.i.1 = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv.next362.i
  store i16 %i.yv, ptr %gep489.i.1, align 2, !tbaa !59
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2
  %niter846.next.1 = add i64 %niter846, 2         ; 2 uses
  %niter846.ncmp.1 = icmp eq i64 %niter846.next.1, %i.ju
  br i1 %niter846.ncmp.1, label %._crit_edge250.i, label %vec.epilog.scalar.ph679, !llvm.loop !131

._crit_edge250.i:                                 ; preds = %vector.body666, %vec.epilog.scalar.ph679, %vec.epilog.vector.body684
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, %i.iz ; 2 uses
  %i.yw = icmp slt i64 %indvars.iv.next367.i, %i.fy
  %indvar.next652 = add i64 %indvar651, 1
  br i1 %i.yw, label %iter.check678, label %.loopexit218.i, !llvm.loop !132

.loopexit218.i:                                   ; preds = %._crit_edge250.i, %._crit_edge256.i, %.preheader219.i, %bb.bm
  br i1 %brmerge499.i, label %.loopexit217.i, label %iter.check595

iter.check595:                                    ; preds = %.loopexit218.i
  %i.yx = icmp eq i64 %indvars.iv382.i, 0
  %i.yy = select i1 %i.yx, i16 %i.je, i16 1       ; 5 uses
  br i1 %min.iters.check578, label %vec.epilog.scalar.ph596.preheader, label %vector.memcheck569

vector.memcheck569:                               ; preds = %iter.check595
  %i.yz = shl nsw i64 %i.ps, 1
  %i.za = add nsw i64 %i.lm, %i.yz
  %i.zb = mul i64 %i.za, %i.fy
  %scevgep573 = getelementptr i8, ptr %scevgep572.a, i64 %i.zb
  %bound0574 = icmp ult ptr %i.oy, %scevgep573
  %bound1575 = icmp ult ptr %i.pu, %scevgep571
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %vec.epilog.scalar.ph596.preheader, label %vector.main.loop.iter.check579

vector.main.loop.iter.check579:                   ; preds = %vector.memcheck569
  br i1 %min.iters.check580, label %vec.epilog.ph599, label %vector.ph581

vector.ph581:                                     ; preds = %vector.main.loop.iter.check579
  %broadcast.splatinsert583 = insertelement <8 x i16> poison, i16 %i.yy, i64 0
  %broadcast.splat584 = shufflevector <8 x i16> %broadcast.splatinsert583, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body585

vector.body585:                                   ; preds = %vector.ph581, %vector.body585
  %index586 = phi i64 [ 0, %vector.ph581 ], [ %index.next591, %vector.body585 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %index586 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load587.a = load <8 x i16>, ptr %i.zc, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load588.a = load <8 x i16>, ptr %i.zd, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %index586 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %wide.load589.a = load <8 x i16>, ptr %i.ze, align 2, !tbaa !59, !alias.scope !192
  %wide.load590 = load <8 x i16>, ptr %i.zf, align 2, !tbaa !59, !alias.scope !192
  %i.zg = mul <8 x i16> %wide.load589.a, %broadcast.splat584
  %i.zh = mul <8 x i16> %wide.load590, %broadcast.splat584
  %i.zi = add <8 x i16> %i.zg, %wide.load587.a
  %i.zj = add <8 x i16> %i.zh, %wide.load588.a
  store <8 x i16> %i.zi, ptr %i.zc, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  store <8 x i16> %i.zj, ptr %i.zd, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next591 = add nuw i64 %index586, 16      ; 2 uses
  %i.zk = icmp eq i64 %index.next591, %n.vec582
  br i1 %i.zk, label %middle.block592, label %vector.body585, !llvm.loop !136

middle.block592:                                  ; preds = %vector.body585
  br i1 %cmp.n593, label %.loopexit217.i, label %vec.epilog.iter.check597

vec.epilog.iter.check597:                         ; preds = %middle.block592
  br i1 %min.epilog.iters.check598, label %vec.epilog.scalar.ph596.preheader, label %vec.epilog.ph599, !prof !63

vec.epilog.ph599:                                 ; preds = %vector.main.loop.iter.check579, %vec.epilog.iter.check597
  %vec.epilog.resume.val594 = phi i64 [ %n.vec582, %vec.epilog.iter.check597 ], [ 0, %vector.main.loop.iter.check579 ]
  %broadcast.splatinsert601 = insertelement <4 x i16> poison, i16 %i.yy, i64 0
  %broadcast.splat602 = shufflevector <4 x i16> %broadcast.splatinsert601, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body603

vec.epilog.vector.body603:                        ; preds = %vec.epilog.vector.body603, %vec.epilog.ph599
  %index604 = phi i64 [ %vec.epilog.resume.val594, %vec.epilog.ph599 ], [ %index.next607, %vec.epilog.vector.body603 ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %index604 ; 2 uses
  %wide.load605.a = load <4 x i16>, ptr %i.zl, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %index604
  %wide.load606 = load <4 x i16>, ptr %i.zm, align 2, !tbaa !59, !alias.scope !192
  %i.zn = mul <4 x i16> %wide.load606, %broadcast.splat602
  %i.zo = add <4 x i16> %i.zn, %wide.load605.a
  store <4 x i16> %i.zo, ptr %i.zl, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next607 = add nuw i64 %index604, 4       ; 2 uses
  %i.zp = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.zp, label %vec.epilog.middle.block608, label %vec.epilog.vector.body603, !llvm.loop !137

vec.epilog.middle.block608:                       ; preds = %vec.epilog.vector.body603
  br i1 %cmp.n609, label %.loopexit217.i, label %vec.epilog.scalar.ph596.preheader

vec.epilog.scalar.ph596.preheader:                ; preds = %iter.check595, %vector.memcheck569, %vec.epilog.iter.check597, %vec.epilog.middle.block608
  %indvars.iv377.i.ph = phi i64 [ 0, %iter.check595 ], [ 0, %vector.memcheck569 ], [ %n.vec582, %vec.epilog.iter.check597 ], [ %n.vec600, %vec.epilog.middle.block608 ] ; 5 uses
  %.neg863 = or disjoint i64 %indvars.iv377.i.ph, 1
  br i1 %lcmp.mod848.not, label %vec.epilog.scalar.ph596.prol.loopexit, label %vec.epilog.scalar.ph596.prol

vec.epilog.scalar.ph596.prol:                     ; preds = %vec.epilog.scalar.ph596.preheader
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv377.i.ph ; 2 uses
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !59
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %indvars.iv377.i.ph
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !59
  %i.zu = mul i16 %i.zt, %i.yy
  %i.zv = add i16 %i.zu, %i.zr
  store i16 %i.zv, ptr %i.zq, align 2, !tbaa !59
  %indvars.iv.next378.i.prol = or disjoint i64 %indvars.iv377.i.ph, 1
  br label %vec.epilog.scalar.ph596.prol.loopexit

vec.epilog.scalar.ph596.prol.loopexit:            ; preds = %vec.epilog.scalar.ph596.prol, %vec.epilog.scalar.ph596.preheader
  %indvars.iv377.i.unr = phi i64 [ %indvars.iv377.i.ph, %vec.epilog.scalar.ph596.preheader ], [ %indvars.iv.next378.i.prol, %vec.epilog.scalar.ph596.prol ]
  %i.zw = icmp eq i64 %.pre-phi.i, %.neg863
  br i1 %i.zw, label %.loopexit217.i, label %vec.epilog.scalar.ph596

vec.epilog.scalar.ph596:                          ; preds = %vec.epilog.scalar.ph596.prol.loopexit, %vec.epilog.scalar.ph596
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i.1, %vec.epilog.scalar.ph596 ], [ %indvars.iv377.i.unr, %vec.epilog.scalar.ph596.prol.loopexit ] ; 4 uses
  %i.zx = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv377.i ; 2 uses
  %i.zy = load i16, ptr %i.zx, align 2, !tbaa !59
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %indvars.iv377.i
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !59
  %i.aab = mul i16 %i.aaa, %i.yy
  %i.aac = add i16 %i.aab, %i.zy
  store i16 %i.aac, ptr %i.zx, align 2, !tbaa !59
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv.next378.i ; 2 uses
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !59
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %indvars.iv.next378.i
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !59
  %i.aah = mul i16 %i.aag, %i.yy
  %i.aai = add i16 %i.aah, %i.aae
  store i16 %i.aai, ptr %i.aad, align 2, !tbaa !59
  %indvars.iv.next378.i.1 = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %exitcond381.not.i.1 = icmp eq i64 %indvars.iv.next378.i.1, %.pre-phi.i
  br i1 %exitcond381.not.i.1, label %.loopexit217.i, label %vec.epilog.scalar.ph596, !llvm.loop !138

.loopexit217.i:                                   ; preds = %vec.epilog.scalar.ph596.prol.loopexit, %vec.epilog.scalar.ph596, %middle.block592, %vec.epilog.middle.block608, %.loopexit218.i, %bb.bn
  %indvars.iv.next383.i = add nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next383.i to i32
  %exitcond387.not.i = icmp eq i32 %indvars.iv385.i, %lftr.wideiv.i
  %indvar.next741 = add i64 %indvar740, 1
  br i1 %exitcond387.not.i, label %.preheader226.i, label %bb.bm, !llvm.loop !139

.loopexit227.i:                                   ; preds = %.lr.ph268.preheader.i, %.preheader226.i, %bb.bk
  %i.aaj = getelementptr inbounds [2 x i8], ptr %i.op, i64 %i.ir
  %i.aak = getelementptr inbounds i8, ptr %i.aaj, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aak, i8 0, i64 %i.ji, i1 false)
  %i.aal = getelementptr inbounds [2 x i8], ptr %i.op, i64 %i.jk
  %i.aam = getelementptr inbounds i8, ptr %i.aal, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aam, i8 0, i64 %i.ji, i1 false)
  %i.aan = getelementptr inbounds i8, ptr %i.oq, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aan, i8 0, i64 16, i1 false)
  %i.aao = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.jl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aao, i8 0, i64 16, i1 false)
  br i1 %.not639280.i, label %._crit_edge284.i, label %.lr.ph283.i.preheader

.lr.ph283.i.preheader:                            ; preds = %.loopexit227.i
  %i.aap = shl i64 %i.ox, 1                       ; 3 uses
  %i.aaq = getelementptr i8, ptr %i.op, i64 %i.kt
  %i.aar = getelementptr i8, ptr %i.aaq, i64 %i.nr
  %i.aas = getelementptr i8, ptr %i.op, i64 %i.kt
  %i.aat = getelementptr i8, ptr %i.aas, i64 %i.nv
  %i.aau = getelementptr i8, ptr %i.op, i64 %i.ky
  %i.aav = getelementptr i8, ptr %i.aau, i64 %i.kt
  %i.aaw = getelementptr i8, ptr %i.aav, i64 %i.nr
  %i.aax = getelementptr i8, ptr %31, i64 %i.aap
  %i.aay = getelementptr i8, ptr %i.ok, i64 %i.aap
  %i.aaz = getelementptr i8, ptr %i.op, i64 %i.ob
  %i.aba = getelementptr i8, ptr %i.op, i64 %i.od
  %i.abb = getelementptr i8, ptr %i.op, i64 %i.of
  %i.abc = getelementptr i8, ptr %i.op, i64 %i.oh
  %i.abd = getelementptr i8, ptr %i.op, i64 %i.oj
  %i.abe = getelementptr i8, ptr %i.oo, i64 %i.lg
  %i.abf = getelementptr i8, ptr %i.abe, i64 %i.nv
  %i.abg = getelementptr i8, ptr %i.oo, i64 %reass.sub
  %i.abh = getelementptr i8, ptr %i.abg, i64 -2
  %i.abi = getelementptr i8, ptr %i.oo, i64 %i.li
  %i.abj = getelementptr i8, ptr %i.abi, i64 %i.nv
  %i.abk = getelementptr i8, ptr %i.oo, i64 %reass.sub775
  %i.abl = getelementptr i8, ptr %i.abk, i64 2
  %i.abm = getelementptr i8, ptr %i.oo, i64 %i.lk
  %i.abn = getelementptr i8, ptr %i.abm, i64 %i.nv
  %i.abo = getelementptr i8, ptr %i.oo, i64 %i.kw
  %i.abp = getelementptr i8, ptr %i.abo, i64 -2
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.nr
  %i.abr = getelementptr i8, ptr %i.oo, i64 %i.kw
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.kt
  %i.abt = getelementptr i8, ptr %i.abs, i64 -2
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.nr
  %i.abv = getelementptr i8, ptr %i.oo, i64 %i.kw
  %i.abw = getelementptr i8, ptr %i.abv, i64 2
  %i.abx = getelementptr i8, ptr %i.abw, i64 %i.nr
  %i.aby = getelementptr i8, ptr %i.oo, i64 %i.kw
  %i.abz = getelementptr i8, ptr %i.aby, i64 %i.kt
  %i.aca = getelementptr i8, ptr %i.abz, i64 2
  %i.acb = getelementptr i8, ptr %i.aca, i64 %i.nr
  %i.acc = getelementptr i8, ptr %i.oo, i64 %i.lf
  %i.acd = getelementptr i8, ptr %i.acc, i64 %i.ky
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.kt
  %i.acf = getelementptr i8, ptr %i.ace, i64 %i.nr
  %i.acg = getelementptr i8, ptr %i.oo, i64 %i.lf
  %i.ach = getelementptr i8, ptr %i.acg, i64 %i.ky
  %i.aci = getelementptr i8, ptr %i.ach, i64 -2
  %i.acj = getelementptr i8, ptr %i.aci, i64 %i.nr
  %i.ack = getelementptr i8, ptr %i.oo, i64 %i.lf
  %i.acl = getelementptr i8, ptr %i.ack, i64 %i.ky
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.kt
  %i.acn = getelementptr i8, ptr %i.acm, i64 -2
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.nr
  %i.acp = getelementptr i8, ptr %i.oo, i64 %i.lf
  %i.acq = getelementptr i8, ptr %i.acp, i64 %i.ky
  %i.acr = getelementptr i8, ptr %i.acq, i64 2
  %i.acs = getelementptr i8, ptr %i.acr, i64 %i.nr
  %i.act = getelementptr i8, ptr %i.oo, i64 %i.lf
  %32 = getelementptr i8, ptr %i.act, i64 %i.ky
  %i.acu = getelementptr i8, ptr %32, i64 %i.kt
  %i.acv = getelementptr i8, ptr %i.acu, i64 2
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.nr
  %i.acx = getelementptr i8, ptr %i.ol, i64 %i.aap
  br label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %.lr.ph283.i.preheader, %._crit_edge276.i
  %indvar = phi i64 [ 0, %.lr.ph283.i.preheader ], [ %indvar.next, %._crit_edge276.i ] ; 3 uses
  %indvars.iv396.i = phi i64 [ %i.no, %.lr.ph283.i.preheader ], [ %indvars.iv.next397.i, %._crit_edge276.i ] ; 4 uses
  %i.acy = mul i64 %i.ns, %indvar                 ; 23 uses
  %scevgep = getelementptr i8, ptr %i.aar, i64 %i.acy ; 17 uses
  %scevgep209 = getelementptr i8, ptr %i.aat, i64 %i.acy ; 10 uses
  %i.acz = add i64 %i.nw, %i.acy                  ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.op, i64 %i.acz ; 10 uses
  %scevgep211 = getelementptr i8, ptr %i.aaw, i64 %i.acy ; 7 uses
  %i.ada = mul i64 %i.ny, %indvar                 ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.aax, i64 %i.ada ; 15 uses
  %scevgep213.a = getelementptr i8, ptr %i.aay, i64 %i.ada ; 3 uses
  %scevgep214.a = getelementptr i8, ptr %i.aaz, i64 %i.acy ; 3 uses
  %scevgep215.a = getelementptr i8, ptr %i.aba, i64 %i.acy ; 3 uses
  %scevgep216.a = getelementptr i8, ptr %i.abb, i64 %i.acy ; 3 uses
  %scevgep217.a = getelementptr i8, ptr %i.abc, i64 %i.acy ; 3 uses
  %scevgep218.a = getelementptr i8, ptr %i.abd, i64 %i.acy ; 3 uses
  %scevgep219.a = getelementptr i8, ptr %i.abf, i64 %i.acy ; 3 uses
  %scevgep220.a = getelementptr i8, ptr %i.abh, i64 %i.acy ; 3 uses
  %scevgep221.a = getelementptr i8, ptr %i.abj, i64 %i.acy ; 3 uses
  %scevgep222.a = getelementptr i8, ptr %i.abl, i64 %i.acy ; 3 uses
  %scevgep223.a = getelementptr i8, ptr %i.abn, i64 %i.acy ; 3 uses
  %scevgep224.a = getelementptr i8, ptr %i.oo, i64 %i.acz ; 5 uses
  %scevgep225.a = getelementptr i8, ptr %i.abq, i64 %i.acy ; 5 uses
  %scevgep226.a = getelementptr i8, ptr %i.abu, i64 %i.acy ; 5 uses
  %scevgep227.a = getelementptr i8, ptr %i.abx, i64 %i.acy ; 5 uses
  %scevgep228.a = getelementptr i8, ptr %i.acb, i64 %i.acy ; 5 uses
  %scevgep229.a = getelementptr i8, ptr %i.acf, i64 %i.acy ; 5 uses
  %scevgep230.a = getelementptr i8, ptr %i.acj, i64 %i.acy ; 5 uses
  %scevgep231.a = getelementptr i8, ptr %i.aco, i64 %i.acy ; 5 uses
  %scevgep232.a = getelementptr i8, ptr %i.acs, i64 %i.acy ; 5 uses
  %scevgep233.a = getelementptr i8, ptr %i.acw, i64 %i.acy ; 5 uses
  %scevgep234 = getelementptr i8, ptr %i.acx, i64 %i.ada ; 14 uses
  %i.adb = shl nsw i64 %indvars.iv396.i, 3        ; 4 uses
  %i.adc = mul nsw i64 %i.adb, %i.gf              ; 2 uses
  %i.add = sub nsw i64 %indvars.iv396.i, %i.np
  %.idx464.i = shl nsw i64 %i.add, 4
  %i.ade = getelementptr inbounds i8, ptr %i.oq, i64 %.idx464.i
  %i.adf = load i16, ptr %i.ade, align 2, !tbaa !59
  %i.adg = sext i16 %i.adf to i32
  %i.adh = add nsw i32 %.sroa.speculated173.i, %i.adg ; 3 uses
  %i.adi = getelementptr [2 x i8], ptr %i.on, i64 %i.adb ; 2 uses
  %i.adj = getelementptr i8, ptr %i.adi, i64 -14
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !59
  %i.adl = sext i16 %i.adk to i32
  %i.adm = add nsw i32 %.sroa.speculated173.i, %i.adl ; 3 uses
  %i.adn = or disjoint i64 %i.adb, 2              ; 2 uses
  %i.ado = getelementptr inbounds [2 x i8], ptr %i.on, i64 %i.adn
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !59
  %i.adq = sext i16 %i.adp to i32
  %i.adr = add nsw i32 %.sroa.speculated173.i, %i.adq ; 3 uses
  %i.ads = getelementptr i8, ptr %i.adi, i64 22
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !59
  %i.adu = sext i16 %i.adt to i32
  %i.adv = add nsw i32 %.sroa.speculated173.i, %i.adu ; 3 uses
  %i.adw = getelementptr inbounds [2 x i8], ptr %i.op, i64 %i.adc ; 23 uses
  %i.adx = getelementptr inbounds [2 x i8], ptr %i.adw, i64 %i.nl ; 11 uses
  %i.ady = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.adc ; 3 uses
  %i.adz = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.ir
  %i.aea = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.gf ; 11 uses
  %i.aeb = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.jn ; 13 uses
  %i.aec = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.iq
  %i.aed = getelementptr inbounds [2 x i8], ptr %i.aec, i64 %i.jp ; 13 uses
  %i.aee = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.iz
  store i16 32767, ptr %i.aee, align 2, !tbaa !59
  %i.aef = getelementptr inbounds i8, ptr %i.aed, i64 -2
  store i16 32767, ptr %i.aef, align 2, !tbaa !59
  %i.aeg = getelementptr inbounds [2 x i8], ptr %i.aeb, i64 %i.iz
  store i16 32767, ptr %i.aeg, align 2, !tbaa !59
  %i.aeh = getelementptr inbounds i8, ptr %i.aeb, i64 -2
  store i16 32767, ptr %i.aeh, align 2, !tbaa !59
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.iz
  store i16 32767, ptr %i.aei, align 2, !tbaa !59
  %i.aej = getelementptr inbounds i8, ptr %i.aea, i64 -2
  store i16 32767, ptr %i.aej, align 2, !tbaa !59
  %i.aek = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.iz
  store i16 32767, ptr %i.aek, align 2, !tbaa !59
  %i.ael = getelementptr inbounds i8, ptr %i.adx, i64 -2
  store i16 32767, ptr %i.ael, align 2, !tbaa !59
  %i.aem = mul i64 %indvars.iv396.i, %i.iz        ; 2 uses
  %i.aen = getelementptr [2 x i8], ptr %i.oy, i64 %i.aem ; 5 uses
  %i.aeo = getelementptr [2 x i8], ptr %i.oz, i64 %i.aem ; 3 uses
  br i1 %i.jq, label %.lr.ph275.i, label %._crit_edge276.i

.lr.ph275.i:                                      ; preds = %.lr.ph283.i
  %invariant.gep492.i = getelementptr [2 x i8], ptr %i.adw, i64 %i.gf ; 12 uses
  %invariant.gep494.i = getelementptr [2 x i8], ptr %i.adw, i64 %i.jn ; 12 uses
  %invariant.gep496.i = getelementptr [2 x i8], ptr %i.adw, i64 %i.jp ; 9 uses
  br i1 %min.iters.check531, label %scalar.ph.preheader, label %vector.memcheck208

scalar.ph.preheader:                              ; preds = %vector.memcheck208, %.lr.ph275.i
  br label %scalar.ph

vector.memcheck208:                               ; preds = %.lr.ph275.i
  %bound0 = icmp ult ptr %i.adw, %scevgep209
  %bound1 = icmp ult ptr %invariant.gep492.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0235 = icmp ult ptr %i.adw, %scevgep210
  %bound1236 = icmp ult ptr %invariant.gep494.i, %scevgep
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0239 = icmp ult ptr %i.adw, %scevgep211
  %bound1240 = icmp ult ptr %invariant.gep496.i, %scevgep
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0243 = icmp ult ptr %i.adw, %scevgep212
  %bound1244 = icmp ult ptr %i.aeo, %scevgep
  %found.conflict245 = and i1 %bound0243, %bound1244
  %bound0247 = icmp ult ptr %i.adw, %scevgep213.a
  %bound1248 = icmp ult ptr %i.aen, %scevgep
  %found.conflict249 = and i1 %bound0247, %bound1248
  %bound0251 = icmp ult ptr %i.adw, %scevgep214.a
  %bound1252 = icmp ult ptr %i.adx, %scevgep
  %found.conflict253 = and i1 %bound0251, %bound1252
  %bound0255 = icmp ult ptr %i.adw, %scevgep216.a
  %bound1256 = icmp ult ptr %scevgep215.a, %scevgep
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %i.adw, %scevgep218.a
  %bound1260 = icmp ult ptr %scevgep217.a, %scevgep
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %i.adw, %scevgep219.a
  %bound1264 = icmp ult ptr %i.aea, %scevgep
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %i.adw, %scevgep221.a
  %bound1268 = icmp ult ptr %scevgep220.a, %scevgep
  %found.conflict269 = and i1 %bound0267, %bound1268
  %bound0271 = icmp ult ptr %i.adw, %scevgep223.a
  %bound1272 = icmp ult ptr %scevgep222.a, %scevgep
  %found.conflict273 = and i1 %bound0271, %bound1272
  %bound0275 = icmp ult ptr %i.adw, %scevgep224.a
  %bound1276 = icmp ult ptr %i.aeb, %scevgep
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0279 = icmp ult ptr %i.adw, %scevgep226.a
  %bound1280 = icmp ult ptr %scevgep225.a, %scevgep
  %found.conflict281 = and i1 %bound0279, %bound1280
  %bound0283 = icmp ult ptr %i.adw, %scevgep228.a
  %bound1284 = icmp ult ptr %scevgep227.a, %scevgep
  %found.conflict285 = and i1 %bound0283, %bound1284
  %bound0287 = icmp ult ptr %i.adw, %scevgep229.a
  %bound1288 = icmp ult ptr %i.aed, %scevgep
  %found.conflict289 = and i1 %bound0287, %bound1288
  %bound0291 = icmp ult ptr %i.adw, %scevgep231.a
  %bound1292 = icmp ult ptr %scevgep230.a, %scevgep
  %found.conflict293 = and i1 %bound0291, %bound1292
  %bound0295 = icmp ult ptr %i.adw, %scevgep233.a
  %bound1296 = icmp ult ptr %scevgep232.a, %scevgep
  %found.conflict297 = and i1 %bound0295, %bound1296
  %bound0299 = icmp ult ptr %invariant.gep492.i, %scevgep210
  %bound1300 = icmp ult ptr %invariant.gep494.i, %scevgep209
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0303 = icmp ult ptr %invariant.gep492.i, %scevgep211
  %bound1304 = icmp ult ptr %invariant.gep496.i, %scevgep209
  %found.conflict305 = and i1 %bound0303, %bound1304
  %i.aep = insertelement <8 x ptr> poison, ptr %invariant.gep492.i, i64 0
  %i.aeq = shufflevector <8 x ptr> %i.aep, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aer = insertelement <8 x ptr> poison, ptr %scevgep212, i64 0
  %i.aes = insertelement <8 x ptr> %i.aer, ptr %scevgep213.a, i64 1
  %i.aet = insertelement <8 x ptr> %i.aes, ptr %scevgep214.a, i64 2
  %i.aeu = insertelement <8 x ptr> %i.aet, ptr %scevgep216.a, i64 3
  %i.aev = insertelement <8 x ptr> %i.aeu, ptr %scevgep218.a, i64 4
  %i.aew = insertelement <8 x ptr> %i.aev, ptr %scevgep219.a, i64 5
  %i.aex = insertelement <8 x ptr> %i.aew, ptr %scevgep221.a, i64 6
  %i.aey = insertelement <8 x ptr> %i.aex, ptr %scevgep223.a, i64 7 ; 3 uses
  %i.aez = icmp ult <8 x ptr> %i.aeq, %i.aey
  %i.afa = insertelement <8 x ptr> poison, ptr %scevgep234, i64 0
  %i.afb = insertelement <8 x ptr> %i.afa, ptr %i.aen, i64 1
  %i.afc = insertelement <8 x ptr> %i.afb, ptr %i.adx, i64 2
  %i.afd = insertelement <8 x ptr> %i.afc, ptr %scevgep215.a, i64 3
  %i.afe = insertelement <8 x ptr> %i.afd, ptr %scevgep217.a, i64 4
  %i.aff = insertelement <8 x ptr> %i.afe, ptr %i.aea, i64 5
  %i.afg = insertelement <8 x ptr> %i.aff, ptr %scevgep220.a, i64 6
  %i.afh = insertelement <8 x ptr> %i.afg, ptr %scevgep222.a, i64 7 ; 3 uses
  %i.afi = insertelement <8 x ptr> poison, ptr %scevgep209, i64 0
  %i.afj = shufflevector <8 x ptr> %i.afi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.afk = icmp ult <8 x ptr> %i.afh, %i.afj
  %i.afl = and <8 x i1> %i.aez, %i.afk
  %bound0339 = icmp ult ptr %invariant.gep492.i, %scevgep224.a
  %bound1340 = icmp ult ptr %i.aeb, %scevgep209
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0343 = icmp ult ptr %invariant.gep492.i, %scevgep226.a
  %bound1344 = icmp ult ptr %scevgep225.a, %scevgep209
  %found.conflict345 = and i1 %bound0343, %bound1344
  %bound0347 = icmp ult ptr %invariant.gep492.i, %scevgep228.a
  %bound1348 = icmp ult ptr %scevgep227.a, %scevgep209
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0351 = icmp ult ptr %invariant.gep492.i, %scevgep229.a
  %bound1352 = icmp ult ptr %i.aed, %scevgep209
  %found.conflict353 = and i1 %bound0351, %bound1352
  %bound0355 = icmp ult ptr %invariant.gep492.i, %scevgep231.a
  %bound1356 = icmp ult ptr %scevgep230.a, %scevgep209
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0359 = icmp ult ptr %invariant.gep492.i, %scevgep233.a
  %bound1360 = icmp ult ptr %scevgep232.a, %scevgep209
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0363 = icmp ult ptr %invariant.gep494.i, %scevgep211
  %bound1364 = icmp ult ptr %invariant.gep496.i, %scevgep210
  %found.conflict365 = and i1 %bound0363, %bound1364
  %i.afm = insertelement <8 x ptr> poison, ptr %invariant.gep494.i, i64 0
  %i.afn = shufflevector <8 x ptr> %i.afm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.afo = icmp ult <8 x ptr> %i.afn, %i.aey
  %i.afp = insertelement <8 x ptr> poison, ptr %scevgep210, i64 0
  %i.afq = shufflevector <8 x ptr> %i.afp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.afr = icmp ult <8 x ptr> %i.afh, %i.afq
  %i.afs = and <8 x i1> %i.afo, %i.afr
  %bound0399 = icmp ult ptr %invariant.gep494.i, %scevgep224.a
  %bound1400 = icmp ult ptr %i.aeb, %scevgep210
  %found.conflict401 = and i1 %bound0399, %bound1400
  %bound0403 = icmp ult ptr %invariant.gep494.i, %scevgep226.a
  %bound1404 = icmp ult ptr %scevgep225.a, %scevgep210
  %found.conflict405 = and i1 %bound0403, %bound1404
  %bound0407 = icmp ult ptr %invariant.gep494.i, %scevgep228.a
  %bound1408 = icmp ult ptr %scevgep227.a, %scevgep210
  %found.conflict409 = and i1 %bound0407, %bound1408
  %bound0411 = icmp ult ptr %invariant.gep494.i, %scevgep229.a
  %bound1412 = icmp ult ptr %i.aed, %scevgep210
  %found.conflict413 = and i1 %bound0411, %bound1412
  %bound0415 = icmp ult ptr %invariant.gep494.i, %scevgep231.a
  %bound1416 = icmp ult ptr %scevgep230.a, %scevgep210
  %found.conflict417 = and i1 %bound0415, %bound1416
  %bound0419 = icmp ult ptr %invariant.gep494.i, %scevgep233.a
  %bound1420 = icmp ult ptr %scevgep232.a, %scevgep210
  %found.conflict421 = and i1 %bound0419, %bound1420
  %i.aft = insertelement <8 x ptr> poison, ptr %invariant.gep496.i, i64 0
  %i.afu = shufflevector <8 x ptr> %i.aft, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.afv = icmp ult <8 x ptr> %i.afu, %i.aey
  %i.afw = insertelement <8 x ptr> poison, ptr %scevgep211, i64 0
  %i.afx = shufflevector <8 x ptr> %i.afw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.afy = icmp ult <8 x ptr> %i.afh, %i.afx
  %i.afz = and <8 x i1> %i.afv, %i.afy
  %i.aga = insertelement <4 x ptr> poison, ptr %invariant.gep496.i, i64 0
  %i.agb = shufflevector <4 x ptr> %i.aga, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.agc = insertelement <4 x ptr> poison, ptr %scevgep224.a, i64 0
  %i.agd = insertelement <4 x ptr> %i.agc, ptr %scevgep226.a, i64 1
  %i.age = insertelement <4 x ptr> %i.agd, ptr %scevgep228.a, i64 2
  %i.agf = insertelement <4 x ptr> %i.age, ptr %scevgep229.a, i64 3
  %i.agg = icmp ult <4 x ptr> %i.agb, %i.agf
  %i.agh = insertelement <4 x ptr> poison, ptr %i.aeb, i64 0
  %i.agi = insertelement <4 x ptr> %i.agh, ptr %scevgep225.a, i64 1
  %i.agj = insertelement <4 x ptr> %i.agi, ptr %scevgep227.a, i64 2
  %i.agk = insertelement <4 x ptr> %i.agj, ptr %i.aed, i64 3
  %i.agl = insertelement <4 x ptr> poison, ptr %scevgep211, i64 0
  %i.agm = shufflevector <4 x ptr> %i.agl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.agn = icmp ult <4 x ptr> %i.agk, %i.agm
  %i.ago = and <4 x i1> %i.agg, %i.agn
  %bound0471 = icmp ult ptr %invariant.gep496.i, %scevgep231.a
  %bound1472 = icmp ult ptr %scevgep230.a, %scevgep211
  %found.conflict473 = and i1 %bound0471, %bound1472
  %bound0475 = icmp ult ptr %invariant.gep496.i, %scevgep233.a
  %bound1476 = icmp ult ptr %scevgep232.a, %scevgep211
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0479 = icmp ult ptr %scevgep234, %scevgep213.a
  %bound1480 = icmp ult ptr %i.aen, %scevgep212
  %found.conflict481 = and i1 %bound0479, %bound1480
  %bound0483 = icmp ult ptr %scevgep234, %scevgep214.a
  %bound1484 = icmp ult ptr %i.adx, %scevgep212
  %found.conflict485 = and i1 %bound0483, %bound1484
  %bound0487 = icmp ult ptr %scevgep234, %scevgep216.a
  %bound1488 = icmp ult ptr %scevgep215.a, %scevgep212
  %found.conflict489 = and i1 %bound0487, %bound1488
  %bound0491 = icmp ult ptr %scevgep234, %scevgep218.a
  %bound1492 = icmp ult ptr %scevgep217.a, %scevgep212
  %found.conflict493 = and i1 %bound0491, %bound1492
  %bound0495 = icmp ult ptr %scevgep234, %scevgep219.a
  %bound1496 = icmp ult ptr %i.aea, %scevgep212
  %found.conflict497 = and i1 %bound0495, %bound1496
  %bound0499 = icmp ult ptr %scevgep234, %scevgep221.a
  %bound1500 = icmp ult ptr %scevgep220.a, %scevgep212
  %found.conflict501 = and i1 %bound0499, %bound1500
  %bound0503 = icmp ult ptr %scevgep234, %scevgep223.a
  %bound1504 = icmp ult ptr %scevgep222.a, %scevgep212
  %found.conflict505 = and i1 %bound0503, %bound1504
  %bound0507 = icmp ult ptr %scevgep234, %scevgep224.a
  %bound1508 = icmp ult ptr %i.aeb, %scevgep212
  %found.conflict509 = and i1 %bound0507, %bound1508
  %bound0511 = icmp ult ptr %scevgep234, %scevgep226.a
  %bound1512 = icmp ult ptr %scevgep225.a, %scevgep212
  %found.conflict513 = and i1 %bound0511, %bound1512
  %bound0515 = icmp ult ptr %scevgep234, %scevgep228.a
  %bound1516 = icmp ult ptr %scevgep227.a, %scevgep212
  %found.conflict517 = and i1 %bound0515, %bound1516
  %bound0519 = icmp ult ptr %scevgep234, %scevgep229.a
  %bound1520 = icmp ult ptr %i.aed, %scevgep212
  %found.conflict521 = and i1 %bound0519, %bound1520
  %bound0523 = icmp ult ptr %scevgep234, %scevgep231.a
  %bound1524 = icmp ult ptr %scevgep230.a, %scevgep212
  %found.conflict525 = and i1 %bound0523, %bound1524
  %bound0527 = icmp ult ptr %scevgep234, %scevgep233.a
  %bound1528 = icmp ult ptr %scevgep232.a, %scevgep212
  %found.conflict529 = and i1 %bound0527, %bound1528
  %rdx.op = or <8 x i1> %i.afl, %i.afs
  %rdx.op776 = or <8 x i1> %rdx.op, %i.afz        ; 2 uses
  %i.agp = shufflevector <4 x i1> %i.ago, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agq = or <8 x i1> %rdx.op776, %i.agp
  %i.agr = shufflevector <8 x i1> %i.agq, <8 x i1> %rdx.op776, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ags = bitcast <8 x i1> %i.agr to i8
  %i.agt = icmp ne i8 %i.ags, 0
  %op.rdx = or i1 %i.agt, %found.conflict
  %op.rdx778.a = or i1 %found.conflict237, %found.conflict241
  %op.rdx779.a = or i1 %found.conflict245, %found.conflict249
  %op.rdx780.a = or i1 %found.conflict253, %found.conflict257
  %op.rdx781.a = or i1 %found.conflict261, %found.conflict265
  %op.rdx782.a = or i1 %found.conflict269, %found.conflict273
  %op.rdx783.a = or i1 %found.conflict277, %found.conflict281
  %op.rdx784.a = or i1 %found.conflict285, %found.conflict289
  %op.rdx785.a = or i1 %found.conflict293, %found.conflict297
  %op.rdx786.a = or i1 %found.conflict301, %found.conflict305
  %op.rdx787.a = or i1 %found.conflict341, %found.conflict345
  %op.rdx788.a = or i1 %found.conflict349, %found.conflict353
  %op.rdx789.a = or i1 %found.conflict357, %found.conflict361
  %op.rdx790.a = or i1 %found.conflict365, %found.conflict401
  %op.rdx791.a = or i1 %found.conflict405, %found.conflict409
  %op.rdx792.a = or i1 %found.conflict413, %found.conflict417
  %op.rdx793.a = or i1 %found.conflict421, %found.conflict473
  %op.rdx794.a = or i1 %found.conflict477, %found.conflict481
  %op.rdx795.a = or i1 %found.conflict485, %found.conflict489
  %op.rdx796.a = or i1 %found.conflict493, %found.conflict497
  %op.rdx797.a = or i1 %found.conflict501, %found.conflict505
  %op.rdx798.a = or i1 %found.conflict509, %found.conflict513
  %op.rdx799.a = or i1 %found.conflict517, %found.conflict521
  %op.rdx800.a = or i1 %found.conflict525, %found.conflict529
  %op.rdx801.a = or i1 %op.rdx, %op.rdx778.a
  %op.rdx802.a = or i1 %op.rdx779.a, %op.rdx780.a
  %op.rdx803.a = or i1 %op.rdx781.a, %op.rdx782.a
  %op.rdx804.a = or i1 %op.rdx783.a, %op.rdx784.a
  %op.rdx805.a = or i1 %op.rdx785.a, %op.rdx786.a
  %op.rdx806.a = or i1 %op.rdx787.a, %op.rdx788.a
  %op.rdx807.a = or i1 %op.rdx789.a, %op.rdx790.a
  %op.rdx808.a = or i1 %op.rdx791.a, %op.rdx792.a
  %op.rdx809.a = or i1 %op.rdx793.a, %op.rdx794.a
  %op.rdx810.a = or i1 %op.rdx795.a, %op.rdx796.a
  %op.rdx811.a = or i1 %op.rdx797.a, %op.rdx798.a
  %op.rdx812.a = or i1 %op.rdx799.a, %op.rdx800.a
  %op.rdx813.a = or i1 %op.rdx801.a, %op.rdx802.a
  %op.rdx814.a = or i1 %op.rdx803.a, %op.rdx804.a
  %op.rdx815.a = or i1 %op.rdx805.a, %op.rdx806.a
  %op.rdx816.a = or i1 %op.rdx807.a, %op.rdx808.a
  %op.rdx817.a = or i1 %op.rdx809.a, %op.rdx810.a
  %op.rdx818.a = or i1 %op.rdx811.a, %op.rdx812.a
  %op.rdx819.a = or i1 %op.rdx813.a, %op.rdx814.a
  %op.rdx820.a = or i1 %op.rdx815.a, %op.rdx816.a
  %op.rdx821.a = or i1 %op.rdx817.a, %op.rdx818.a
  %op.rdx822 = or i1 %op.rdx819.a, %op.rdx820.a
  %op.rdx823 = or i1 %op.rdx822, %op.rdx821.a
  br i1 %op.rdx823, label %scalar.ph.preheader, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck208
  %broadcast.splatinsert536 = insertelement <4 x i32> poison, i32 %i.adh, i64 0
  %broadcast.splat537 = shufflevector <4 x i32> %broadcast.splatinsert536, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.adm, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert540 = insertelement <4 x i32> poison, i32 %i.adr, i64 0
  %broadcast.splat541 = shufflevector <4 x i32> %broadcast.splatinsert540, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert542 = insertelement <4 x i32> poison, i32 %i.adv, i64 0
  %broadcast.splat543 = shufflevector <4 x i32> %broadcast.splatinsert542, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph532
  %index545 = phi i64 [ 0, %vector.ph532 ], [ %index.next562, %vector.body544 ] ; 13 uses
  %vec.phi = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.aja, %vector.body544 ]
  %vec.phi546.a = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.ajd, %vector.body544 ]
  %vec.phi547.a = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.ajg, %vector.body544 ]
  %vec.phi548 = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.ajj, %vector.body544 ]
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %index545
  %wide.load = load <4 x i16>, ptr %i.agu, align 2, !tbaa !59, !alias.scope !193
  %i.agv = sext <4 x i16> %wide.load to <4 x i32> ; 4 uses
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %index545
  %wide.load549.a = load <4 x i16>, ptr %i.agw, align 2, !tbaa !59, !alias.scope !194
  %i.agx = sext <4 x i16> %wide.load549.a to <4 x i32>
  %i.agy = add nsw i64 %index545, -1              ; 4 uses
  %i.agz = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.agy
  %wide.load550.a = load <4 x i16>, ptr %i.agz, align 2, !tbaa !59, !alias.scope !195
  %i.aha = sext <4 x i16> %wide.load550.a to <4 x i32>
  %i.ahb = add nsw <4 x i32> %broadcast.splat535, %i.aha
  %i.ahc = or disjoint i64 %index545, 1           ; 4 uses
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.ahc
  %wide.load551.a = load <4 x i16>, ptr %i.ahd, align 2, !tbaa !59, !alias.scope !196
  %i.ahe = sext <4 x i16> %wide.load551.a to <4 x i32>
  %i.ahf = add nsw <4 x i32> %broadcast.splat535, %i.ahe
  %i.ahg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat537, <4 x i32> %i.ahf)
  %i.ahh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahg, <4 x i32> %i.ahb)
  %i.ahi = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahh, <4 x i32> %i.agx)
  %i.ahj = sub <4 x i32> %i.agv, %broadcast.splat537
  %i.ahk = add <4 x i32> %i.ahi, %i.ahj           ; 3 uses
  %i.ahl = getelementptr inbounds nuw [2 x i8], ptr %i.aea, i64 %index545
  %wide.load552.a = load <4 x i16>, ptr %i.ahl, align 2, !tbaa !59, !alias.scope !197
  %i.ahm = sext <4 x i16> %wide.load552.a to <4 x i32>
  %i.ahn = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.agy
  %wide.load553.a = load <4 x i16>, ptr %i.ahn, align 2, !tbaa !59, !alias.scope !198
  %i.aho = sext <4 x i16> %wide.load553.a to <4 x i32>
  %i.ahp = add nsw <4 x i32> %broadcast.splat535, %i.aho
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.aea, i64 %i.ahc
  %wide.load554.a = load <4 x i16>, ptr %i.ahq, align 2, !tbaa !59, !alias.scope !199
  %i.ahr = sext <4 x i16> %wide.load554.a to <4 x i32>
  %i.ahs = add nsw <4 x i32> %broadcast.splat535, %i.ahr
  %i.aht = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat539, <4 x i32> %i.ahs)
  %i.ahu = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aht, <4 x i32> %i.ahp)
  %i.ahv = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahu, <4 x i32> %i.ahm)
  %i.ahw = sub <4 x i32> %i.agv, %broadcast.splat539
  %i.ahx = add <4 x i32> %i.ahv, %i.ahw           ; 3 uses
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.aeb, i64 %index545
  %wide.load555.a = load <4 x i16>, ptr %i.ahy, align 2, !tbaa !59, !alias.scope !200
  %i.ahz = sext <4 x i16> %wide.load555.a to <4 x i32>
  %i.aia = getelementptr inbounds [2 x i8], ptr %i.aeb, i64 %i.agy
  %wide.load556.a = load <4 x i16>, ptr %i.aia, align 2, !tbaa !59, !alias.scope !201
  %i.aib = sext <4 x i16> %wide.load556.a to <4 x i32>
  %i.aic = add nsw <4 x i32> %broadcast.splat535, %i.aib
  %i.aid = getelementptr inbounds nuw [2 x i8], ptr %i.aeb, i64 %i.ahc
  %wide.load557.a = load <4 x i16>, ptr %i.aid, align 2, !tbaa !59, !alias.scope !202
  %i.aie = sext <4 x i16> %wide.load557.a to <4 x i32>
  %i.aif = add nsw <4 x i32> %broadcast.splat535, %i.aie
  %i.aig = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat541, <4 x i32> %i.aif)
  %i.aih = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aig, <4 x i32> %i.aic)
  %i.aii = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aih, <4 x i32> %i.ahz)
  %i.aij = sub <4 x i32> %i.agv, %broadcast.splat541
  %i.aik = add <4 x i32> %i.aii, %i.aij           ; 3 uses
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %index545
  %wide.load558.a = load <4 x i16>, ptr %i.ail, align 2, !tbaa !59, !alias.scope !203
  %i.aim = sext <4 x i16> %wide.load558.a to <4 x i32>
  %i.ain = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.agy
  %wide.load559.a = load <4 x i16>, ptr %i.ain, align 2, !tbaa !59, !alias.scope !204
  %i.aio = sext <4 x i16> %wide.load559.a to <4 x i32>
  %i.aip = add nsw <4 x i32> %broadcast.splat535, %i.aio
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %i.ahc
  %wide.load560.a = load <4 x i16>, ptr %i.aiq, align 2, !tbaa !59, !alias.scope !205
  %i.air = sext <4 x i16> %wide.load560.a to <4 x i32>
  %i.ais = add nsw <4 x i32> %broadcast.splat535, %i.air
  %i.ait = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat543, <4 x i32> %i.ais)
  %i.aiu = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ait, <4 x i32> %i.aip)
  %i.aiv = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aiu, <4 x i32> %i.aim)
  %i.aiw = sub <4 x i32> %i.agv, %broadcast.splat543
  %i.aix = add <4 x i32> %i.aiv, %i.aiw           ; 3 uses
  %i.aiy = trunc <4 x i32> %i.ahk to <4 x i16>
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.adw, i64 %index545
  store <4 x i16> %i.aiy, ptr %i.aiz, align 2, !tbaa !59, !alias.scope !206, !noalias !207
  %i.aja = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahk, <4 x i32> %vec.phi) ; 2 uses
  %i.ajb = trunc <4 x i32> %i.ahx to <4 x i16>
  %i.ajc = getelementptr [2 x i8], ptr %invariant.gep492.i, i64 %index545
  store <4 x i16> %i.ajb, ptr %i.ajc, align 2, !tbaa !59, !alias.scope !208, !noalias !209
  %i.ajd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahx, <4 x i32> %vec.phi546.a) ; 2 uses
  %i.aje = trunc <4 x i32> %i.aik to <4 x i16>
  %i.ajf = getelementptr [2 x i8], ptr %invariant.gep494.i, i64 %index545
  store <4 x i16> %i.aje, ptr %i.ajf, align 2, !tbaa !59, !alias.scope !210, !noalias !211
  %i.ajg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aik, <4 x i32> %vec.phi547.a) ; 2 uses
  %i.ajh = trunc <4 x i32> %i.aix to <4 x i16>
  %i.aji = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %index545
  store <4 x i16> %i.ajh, ptr %i.aji, align 2, !tbaa !59, !alias.scope !212, !noalias !213
  %i.ajj = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aix, <4 x i32> %vec.phi548) ; 2 uses
  %i.ajk = getelementptr inbounds nuw [2 x i8], ptr %i.aeo, i64 %index545 ; 2 uses
  %wide.load561 = load <4 x i16>, ptr %i.ajk, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %i.ajl = sext <4 x i16> %wide.load561 to <4 x i32>
  %i.ajm = add <4 x i32> %i.ahx, %i.ahk
  %i.ajn = add <4 x i32> %i.ajm, %i.aik
  %i.ajo = add <4 x i32> %i.ajn, %i.aix
  %i.ajp = add <4 x i32> %i.ajo, %i.ajl
  %i.ajq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ajp, <4 x i32> splat (i32 -32768))
  %i.ajr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ajq, <4 x i32> splat (i32 32767))
  %i.ajs = trunc nsw <4 x i32> %i.ajr to <4 x i16>
  store <4 x i16> %i.ajs, ptr %i.ajk, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %index.next562 = add nuw i64 %index545, 4       ; 2 uses
  %i.ajt = icmp eq i64 %index.next562, %i.ju
  br i1 %i.ajt, label %middle.block563, label %vector.body544, !llvm.loop !159

middle.block563:                                  ; preds = %vector.body544
  %i.aju = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aja)
  %i.ajv = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajd)
  %i.ajw = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajg)
  %i.ajx = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajj)
  br label %._crit_edge276.loopexit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 12 uses
  %.0186272.i = phi i32 [ %.sroa.speculated86.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0187271.i = phi i32 [ %.sroa.speculated68.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0188270.i = phi i32 [ %.sroa.speculated50.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0189269.i = phi i32 [ %.sroa.speculated32.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %i.ajy = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %indvars.iv391.i
  %i.ajz = load i16, ptr %i.ajy, align 2, !tbaa !59
  %i.aka = sext i16 %i.ajz to i32                 ; 4 uses
  %i.akb = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %indvars.iv391.i
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !59
  %i.akd = sext i16 %i.akc to i32
  %i.ake = add nsw i64 %indvars.iv391.i, -1       ; 4 uses
  %i.akf = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.ake
  %i.akg = load i16, ptr %i.akf, align 2, !tbaa !59
  %i.akh = sext i16 %i.akg to i32
  %i.aki = add nsw i32 %i.ep, %i.akh
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 6 uses
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %indvars.iv.next392.i
end_hunk_1
