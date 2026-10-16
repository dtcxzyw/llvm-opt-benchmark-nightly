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
  %i.ia = inttoptr i64 %i.hz to ptr               ; 12 uses
  %i.ib = getelementptr [2 x i8], ptr %i.ia, i64 %i.gb ; 2 uses
  %i.ic = getelementptr [2 x i8], ptr %i.ib, i64 %i.gb ; 3 uses
  %i.id = sext i32 %i.gi to i64                   ; 5 uses
  %i.ie = mul nsw i64 %i.fy, %i.id
  %i.if = getelementptr [2 x i8], ptr %i.ic, i64 %i.ie ; 8 uses
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
  %i.ju = zext i32 %i.ea to i64                   ; 18 uses
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
  %.neg772 = sub i64 %.neg, %i.kq
  %i.kr = add i64 %i.hz, %.idx.i
  %i.ks = add i64 %i.kr, %i.kp
  %i.kt = shl nuw nsw i64 %i.ju, 1                ; 16 uses
  %i.ku = shl nsw i64 %i.gf, 4
  %i.kv = shl nsw i64 %i.gf, 4
  %i.kw = shl nsw i64 %i.jn, 1                    ; 5 uses
  %i.kx = add nsw i64 %i.kw, %i.kt
  %i.ky = shl nsw i64 %i.jp, 1                    ; 6 uses
  %i.kz = mul nsw i64 %i.ga, %i.fy
  %i.la = add i64 %i.kz, %i.ju
  %i.lb = shl i64 %i.la, 1
  %i.lc = shl nsw i64 %i.iz, 1
  %i.ld = shl nsw i64 %i.iz, 1
  %i.le = add nsw i64 %i.kt, -2
  %i.lf = or disjoint i64 %i.kt, 2
  %i.lg = shl nsw i64 %i.iq, 1                    ; 10 uses
  %i.lh = sub nsw i64 %i.kt, %i.lg
  %i.li = add nsw i64 %i.kt, -2
  %i.lj = sub nsw i64 %i.li, %i.lg
  %i.lk = or disjoint i64 %i.kt, 2
  %i.ll = sub nsw i64 %i.lk, %i.lg
  %i.lm = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %scevgep569 = getelementptr i8, ptr %i.ia, i64 %i.lm
  %scevgep571 = getelementptr i8, ptr %i.ia, i64 %i.lm
  %i.ln = shl nsw i64 %i.ga, 2                    ; 4 uses
  %i.lo = shl nsw i64 %i.iz, 1                    ; 2 uses
  %i.lp = add i64 %i.hz, %i.lo
  %i.lq = shl nsw i64 %i.iz, 1
  %i.lr = shl nsw i64 %i.id, 1
  %i.ls = add nsw i64 %i.ln, %i.lr
  %i.lt = mul i64 %i.ls, %i.fy                    ; 2 uses
  %i.lu = add i64 %i.hz, %i.lt
  %i.lv = add nsw i32 %i.ff, 1
  %i.lw = mul i32 %i.ea, %i.lv
  %i.lx = add i64 %i.hz, %i.lt
  %i.ly = mul i32 %i.ff, %i.ea
  %i.lz = add i64 %i.hz, %i.lo
  %i.ma = shl nsw i64 %i.iz, 1
  %i.mb = add i64 %i.hz, %i.ma
  %i.mc = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.md = shl nsw i64 %i.iz, 1
  %i.me = shl nsw i64 %i.id, 1
  %i.mf = add nsw i64 %i.mc, %i.me
  %i.mg = mul i64 %i.mf, %i.fy                    ; 2 uses
  %i.mh = add i64 %i.hz, %i.mg
  %i.mi = add nsw i32 %i.ff, 1
  %i.mj = mul i32 %i.ea, %i.mi
  %i.mk = add i64 %i.hz, %i.mg
  %i.ml = mul i32 %i.ff, %i.ea
  %i.mm = shl nuw nsw i64 %i.ju, 1                ; 2 uses
  %scevgep693 = getelementptr i8, ptr %i.ia, i64 %i.mm
  %i.mn = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.mo = shl nsw i64 %i.id, 1
  %i.mp = add nsw i64 %i.mn, %i.mo
  %i.mq = mul i64 %i.mp, %i.fy                    ; 2 uses
  %i.mr = shl nuw nsw i64 %i.ju, 1
  %scevgep736 = getelementptr i8, ptr %i.ia, i64 %i.mq
  %i.ms = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mt = add nsw i64 %i.ms, -2
  %i.mu = shl nsw i64 %i.gt, 1
  %i.mv = shl nsw i64 %i.gt, 1
  %i.mw = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mx = add nsw i64 %i.mw, -2
  %min.iters.check702 = icmp ult i32 %i.ea, 4
  %i.my = getelementptr i8, ptr %i.ia, i64 %i.mq
  %i.mz = getelementptr i8, ptr %i.my, i64 %i.mm
  %min.iters.check704 = icmp ult i32 %i.ea, 16
  %min.iters.check660 = icmp ult i32 %i.ea, 4
  %min.iters.check662 = icmp ult i32 %i.ea, 16
  %min.iters.check635 = icmp ult i32 %i.ea, 16
  %29 = shl nsw i64 %.idx645.i, 1
  %diff.check630 = icmp ugt i64 %29, -16
  %min.iters.check577 = icmp samesign ult i64 %.pre-phi.i, 4
  %min.iters.check579 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.na = and i64 %.pre-phi.i, 12
  %n.vec581 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n592 = icmp eq i64 %.pre-phi.i, %n.vec581
  %min.epilog.iters.check597 = icmp eq i64 %i.na, 0
  %n.vec599 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n608 = icmp eq i64 %.pre-phi.i, %n.vec599
  %xtraiter845 = and i64 %.pre-phi.i, 1
  %lcmp.mod846.not = icmp eq i64 %xtraiter845, 0
  %i.nb = getelementptr i8, ptr %i.ia, i64 %i.lb
  %i.nc = getelementptr i8, ptr %i.ia, i64 %i.kt
  %min.iters.check530 = icmp ult i32 %i.ea, 28
  %broadcast.splatinsert533 = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat534 = shufflevector <4 x i32> %broadcast.splatinsert533, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
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
  %xtraiter848 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod849.not = icmp eq i64 %xtraiter848, 0
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
  %i.nx = mul i64 %i.lc, %i.no                    ; 2 uses
  %i.ny = mul nsw i64 %i.ld, %i.np
  %i.nz = add i64 %i.kt, %i.nr
  %i.oa = shl nsw i64 %i.nk, 1                    ; 5 uses
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = add i64 %i.nr, -2
  %i.od = sub i64 %i.oc, %i.oa
  %i.oe = add i64 %i.le, %i.nr
  %i.of = sub i64 %i.oe, %i.oa
  %i.og = or disjoint i64 %i.nr, 2
  %i.oh = sub i64 %i.og, %i.oa
  %i.oi = add i64 %i.lf, %i.nr
  %i.oj = sub i64 %i.oi, %i.oa
  %reass.sub = sub i64 %i.nv, %i.lg
  %reass.sub773 = sub i64 %i.nv, %i.lg
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
  %scevgep570 = getelementptr i8, ptr %scevgep569, i64 %i.ph
  %i.pi = add i64 %.idx645.i, %i.ox
  %30 = shl i64 %i.pi, 1
  %i.pj = add i64 %i.lz, %i.ph
  %i.pk = mul i64 %i.mu, %i.pc                    ; 2 uses
  %i.pl = add i64 %i.mx, %i.pk
  br label %bb.bm

.preheader226.i:                                  ; preds = %.loopexit217.i, %bb.bl
  br i1 %i.ij, label %.loopexit227.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %.preheader226.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.oz, i8 0, i64 %i.jx, i1 false), !tbaa !59
  br label %.loopexit227.i

bb.bm:                                            ; preds = %.loopexit217.i, %.lr.ph266.i
  %indvar738 = phi i64 [ %indvar.next739, %.loopexit217.i ], [ 0, %.lr.ph266.i ] ; 2 uses
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %.loopexit217.i ], [ %i.pc, %.lr.ph266.i ] ; 5 uses
  %i.pm = mul i64 %i.mv, %indvar738               ; 2 uses
  %i.pn = add i64 %i.pk, %i.pm
  %i.po = add i64 %i.pl, %i.pm
  %i.pp = trunc nsw i64 %indvars.iv382.i to i32
  %.sroa.speculated148.i = call i32 @llvm.smin.i32(i32 %i.iv, i32 %i.pp)
  %i.pq = srem i32 %.sroa.speculated148.i, %i.gi
  %i.pr = sext i32 %i.pq to i64                   ; 5 uses
  %i.ps = mul nsw i64 %i.pr, %i.fy
  %i.pt = getelementptr [2 x i8], ptr %i.ic, i64 %i.ps ; 20 uses
  %i.pu = icmp slt i64 %indvars.iv382.i, %i.jv
  br i1 %i.pu, label %.preheader221.i, label %.loopexit218.i

.preheader221.i:                                  ; preds = %bb.bm
  %i.pv = load i32, ptr %i.cl, align 4, !tbaa !178 ; 6 uses
  %.not233.i = icmp slt i32 %i.pv, 0
  %i.pw = mul nsw i64 %indvars.iv382.i, %i.gt
  br i1 %.not233.i, label %._crit_edge237.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader221.i
  %i.px = add nuw i32 %i.pv, 1                    ; 3 uses
  %i.py = sext i32 %i.px to i64                   ; 3 uses
  %i.pz = zext nneg i32 %i.pv to i64              ; 2 uses
  %wide.trip.count346.i = zext i32 %i.px to i64   ; 8 uses
  %i.qa = mul i64 %i.mt, %i.pz
  %i.qb = shl nuw nsw i64 %wide.trip.count346.i, 1 ; 2 uses
  %i.qc = getelementptr i8, ptr %scevgep736, i64 %i.qa
  %scevgep737 = getelementptr i8, ptr %i.qc, i64 %i.qb
  %i.qd = mul i64 %i.pn, %i.py
  %scevgep740 = getelementptr i8, ptr %.val66, i64 %i.qd
  %i.qe = mul i64 %i.po, %i.py
  %i.qf = getelementptr i8, ptr %.val66, i64 %i.qe
  %scevgep741 = getelementptr i8, ptr %i.qf, i64 %i.qb
  %i.qg = zext nneg i32 %i.pv to i64
  %min.iters.check746 = icmp ult i32 %i.pv, 3
  %bound0742 = icmp ult ptr %i.if, %scevgep741
  %bound1743 = icmp ult ptr %scevgep740, %scevgep737
  %found.conflict744 = and i1 %bound0742, %bound1743
  %stride.check = icmp slt i32 %i.px, 0
  %i.qh = or i1 %found.conflict744, %stride.check
  %min.iters.check748 = icmp ult i32 %i.pv, 15
  %i.qi = and i64 %wide.trip.count346.i, 12
  %n.vec750 = and i64 %wide.trip.count346.i, 2147483632 ; 4 uses
  %cmp.n757 = icmp eq i64 %n.vec750, %wide.trip.count346.i
  %min.epilog.iters.check762 = icmp eq i64 %i.qi, 0
  %n.vec764 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %cmp.n770 = icmp eq i64 %n.vec764, %wide.trip.count346.i
  %xtraiter = and i64 %wide.trip.count346.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check759

iter.check759:                                    ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv348.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next349.i, %._crit_edge.i ] ; 3 uses
  %i.qj = add nsw i64 %indvars.iv348.i, %i.pw
  %i.qk = mul nsw i64 %i.qj, %i.py
  %i.ql = mul nuw nsw i64 %indvars.iv348.i, %i.pz
  %i.qm = getelementptr [2 x i8], ptr %.val66, i64 %i.qk ; 7 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ql ; 7 uses
  %brmerge = select i1 %min.iters.check746, i1 true, i1 %i.qh
  br i1 %brmerge, label %vec.epilog.scalar.ph760.preheader, label %vector.main.loop.iter.check747

vector.main.loop.iter.check747:                   ; preds = %iter.check759
  br i1 %min.iters.check748, label %vec.epilog.ph763, label %vector.body751

vector.body751:                                   ; preds = %vector.main.loop.iter.check747, %vector.body751
  %index752 = phi i64 [ %index.next755, %vector.body751 ], [ 0, %vector.main.loop.iter.check747 ] ; 3 uses
  %i.qo = getelementptr [2 x i8], ptr %i.qm, i64 %index752 ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 16
  %wide.load753 = load <8 x i16>, ptr %i.qo, align 2, !tbaa !59, !alias.scope !187
  %wide.load754 = load <8 x i16>, ptr %i.qp, align 2, !tbaa !59, !alias.scope !187
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index752 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <8 x i16> %wide.load753, ptr %i.qq, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  store <8 x i16> %wide.load754, ptr %i.qr, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next755 = add nuw i64 %index752, 16      ; 2 uses
  %i.qs = icmp eq i64 %index.next755, %n.vec750
  br i1 %i.qs, label %middle.block756, label %vector.body751, !llvm.loop !116

middle.block756:                                  ; preds = %vector.body751
  br i1 %cmp.n757, label %._crit_edge.i, label %vec.epilog.iter.check761

vec.epilog.iter.check761:                         ; preds = %middle.block756
  br i1 %min.epilog.iters.check762, label %vec.epilog.scalar.ph760.preheader, label %vec.epilog.ph763, !prof !63

vec.epilog.ph763:                                 ; preds = %vector.main.loop.iter.check747, %vec.epilog.iter.check761
  %vec.epilog.resume.val758 = phi i64 [ %n.vec750, %vec.epilog.iter.check761 ], [ 0, %vector.main.loop.iter.check747 ]
  br label %vec.epilog.vector.body765

vec.epilog.vector.body765:                        ; preds = %vec.epilog.vector.body765, %vec.epilog.ph763
  %index766 = phi i64 [ %vec.epilog.resume.val758, %vec.epilog.ph763 ], [ %index.next768, %vec.epilog.vector.body765 ] ; 3 uses
  %i.qt = getelementptr [2 x i8], ptr %i.qm, i64 %index766
  %wide.load767 = load <4 x i16>, ptr %i.qt, align 2, !tbaa !59, !alias.scope !187
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index766
  store <4 x i16> %wide.load767, ptr %i.qu, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next768 = add nuw i64 %index766, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next768, %n.vec764
  br i1 %i.qv, label %vec.epilog.middle.block769, label %vec.epilog.vector.body765, !llvm.loop !117

vec.epilog.middle.block769:                       ; preds = %vec.epilog.vector.body765
  br i1 %cmp.n770, label %._crit_edge.i, label %vec.epilog.scalar.ph760.preheader

vec.epilog.scalar.ph760.preheader:                ; preds = %iter.check759, %vec.epilog.iter.check761, %vec.epilog.middle.block769
  %indvars.iv343.i.ph = phi i64 [ 0, %iter.check759 ], [ %n.vec764, %vec.epilog.middle.block769 ], [ %n.vec750, %vec.epilog.iter.check761 ] ; 3 uses
  %i.qw = sub nsw i64 %i.qg, %indvars.iv343.i.ph
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph760.prol.loopexit, label %vec.epilog.scalar.ph760.prol

vec.epilog.scalar.ph760.prol:                     ; preds = %vec.epilog.scalar.ph760.preheader, %vec.epilog.scalar.ph760.prol
  %indvars.iv343.i.prol = phi i64 [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph760.prol ], [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph760.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph760.prol ], [ 0, %vec.epilog.scalar.ph760.preheader ]
  %i.qx = getelementptr [2 x i8], ptr %i.qm, i64 %indvars.iv343.i.prol
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !59
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv343.i.prol
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !59
  %indvars.iv.next344.i.prol = add nuw nsw i64 %indvars.iv343.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph760.prol.loopexit, label %vec.epilog.scalar.ph760.prol, !llvm.loop !118

vec.epilog.scalar.ph760.prol.loopexit:            ; preds = %vec.epilog.scalar.ph760.prol, %vec.epilog.scalar.ph760.preheader
  %indvars.iv343.i.unr = phi i64 [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph760.preheader ], [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph760.prol ]
  %i.ra = icmp ult i64 %i.qw, 3
  br i1 %i.ra, label %._crit_edge.i, label %vec.epilog.scalar.ph760

._crit_edge237.split.i:                           ; preds = %._crit_edge.i, %.preheader221.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.pt, i8 0, i64 %i.ja, i1 false)
  br i1 %brmerge.i, label %._crit_edge246.split.i, label %.lr.ph240.i.preheader

.lr.ph240.i.preheader:                            ; preds = %._crit_edge237.split.i
  %i.rb = shl nsw i64 %i.pr, 1
  %i.rc = add nsw i64 %i.mn, %i.rb
  %i.rd = mul i64 %i.rc, %i.fy
  %scevgep694 = getelementptr i8, ptr %scevgep693, i64 %i.rd
  %i.re = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  br label %iter.check719

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph760.prol.loopexit, %vec.epilog.scalar.ph760, %vec.epilog.middle.block769, %middle.block756
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i64 %indvars.iv.next349.i, %wide.trip.count351.i
  br i1 %exitcond352.not.i, label %._crit_edge237.split.i, label %iter.check759, !llvm.loop !119

vec.epilog.scalar.ph760:                          ; preds = %vec.epilog.scalar.ph760.prol.loopexit, %vec.epilog.scalar.ph760
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i.3, %vec.epilog.scalar.ph760 ], [ %indvars.iv343.i.unr, %vec.epilog.scalar.ph760.prol.loopexit ] ; 6 uses
  %i.rg = getelementptr [2 x i8], ptr %i.qm, i64 %indvars.iv343.i
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !59
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv343.i
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !59
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.rj = getelementptr [2 x i8], ptr %i.qm, i64 %indvars.iv.next344.i
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !59
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !59
  %indvars.iv.next344.i.1 = add nuw nsw i64 %indvars.iv343.i, 2 ; 2 uses
  %i.rm = getelementptr [2 x i8], ptr %i.qm, i64 %indvars.iv.next344.i.1
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !59
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i.1
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !59
  %indvars.iv.next344.i.2 = add nuw nsw i64 %indvars.iv343.i, 3 ; 2 uses
  %i.rp = getelementptr [2 x i8], ptr %i.qm, i64 %indvars.iv.next344.i.2
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !59
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv.next344.i.2
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !59
  %indvars.iv.next344.i.3 = add nuw nsw i64 %indvars.iv343.i, 4 ; 2 uses
  %exitcond347.not.i.3 = icmp eq i64 %indvars.iv.next344.i.3, %wide.trip.count346.i
  br i1 %exitcond347.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph760, !llvm.loop !120

iter.check719:                                    ; preds = %.lr.ph240.i.preheader, %._crit_edge241.i
  %indvar695 = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvar.next696, %._crit_edge241.i ] ; 2 uses
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next359.i, %._crit_edge241.i ] ; 3 uses
  %i.rs = icmp eq i64 %indvars.iv358.i, 0
  %i.rt = select i1 %i.rs, i16 %i.je, i16 1       ; 4 uses
  %invariant.gep485.i = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv358.i ; 7 uses
  br i1 %min.iters.check702, label %vec.epilog.scalar.ph720.preheader.new, label %vector.memcheck692

vector.memcheck692:                               ; preds = %iter.check719
  %i.ru = mul i64 %i.mr, %indvar695
  %scevgep697 = getelementptr i8, ptr %i.mz, i64 %i.ru
  %bound0698 = icmp ult ptr %i.pt, %scevgep697
  %bound1699 = icmp ult ptr %invariant.gep485.i, %scevgep694
  %found.conflict700 = and i1 %bound0698, %bound1699
  br i1 %found.conflict700, label %vec.epilog.scalar.ph720.preheader.new, label %vector.main.loop.iter.check703

vec.epilog.scalar.ph720.preheader.new:            ; preds = %vector.memcheck692, %iter.check719
  br label %vec.epilog.scalar.ph720

vector.main.loop.iter.check703:                   ; preds = %vector.memcheck692
  br i1 %min.iters.check704, label %vec.epilog.ph723, label %vector.ph705

vector.ph705:                                     ; preds = %vector.main.loop.iter.check703
  %broadcast.splatinsert707 = insertelement <8 x i16> poison, i16 %i.rt, i64 0
  %broadcast.splat708 = shufflevector <8 x i16> %broadcast.splatinsert707, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body709

vector.body709:                                   ; preds = %vector.ph705, %vector.body709
  %index710 = phi i64 [ 0, %vector.ph705 ], [ %index.next715, %vector.body709 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %index710 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 2 uses
  %wide.load711 = load <8 x i16>, ptr %i.rv, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load712 = load <8 x i16>, ptr %i.rw, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %index710 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %wide.load713 = load <8 x i16>, ptr %i.rx, align 2, !tbaa !59, !alias.scope !190
  %wide.load714 = load <8 x i16>, ptr %i.ry, align 2, !tbaa !59, !alias.scope !190
  %i.rz = mul <8 x i16> %wide.load713, %broadcast.splat708
  %i.sa = mul <8 x i16> %wide.load714, %broadcast.splat708
  %i.sb = add <8 x i16> %i.rz, %wide.load711
  %i.sc = add <8 x i16> %i.sa, %wide.load712
  store <8 x i16> %i.sb, ptr %i.rv, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  store <8 x i16> %i.sc, ptr %i.rw, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %index.next715 = add nuw i64 %index710, 16      ; 2 uses
  %i.sd = icmp eq i64 %index.next715, %i.ju
  br i1 %i.sd, label %._crit_edge241.i, label %vector.body709, !llvm.loop !124

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check703
  %broadcast.splatinsert725 = insertelement <4 x i16> poison, i16 %i.rt, i64 0
  %broadcast.splat726 = shufflevector <4 x i16> %broadcast.splatinsert725, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  %wide.load729 = load <4 x i16>, ptr %i.pt, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load730 = load <4 x i16>, ptr %invariant.gep485.i, align 2, !tbaa !59, !alias.scope !190
  %i.se = mul <4 x i16> %wide.load730, %broadcast.splat726
  %i.sf = add <4 x i16> %i.se, %wide.load729
  store <4 x i16> %i.sf, ptr %i.pt, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load729.1 = load <4 x i16>, ptr %i.re, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.sg = getelementptr inbounds nuw i8, ptr %invariant.gep485.i, i64 8
  %wide.load730.1 = load <4 x i16>, ptr %i.sg, align 2, !tbaa !59, !alias.scope !190
  %i.sh = mul <4 x i16> %wide.load730.1, %broadcast.splat726
  %i.si = add <4 x i16> %i.sh, %wide.load729.1
  store <4 x i16> %i.si, ptr %i.re, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load729.2 = load <4 x i16>, ptr %i.rf, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.sj = getelementptr inbounds nuw i8, ptr %invariant.gep485.i, i64 16
  %wide.load730.2 = load <4 x i16>, ptr %i.sj, align 2, !tbaa !59, !alias.scope !190
  %i.sk = mul <4 x i16> %wide.load730.2, %broadcast.splat726
  %i.sl = add <4 x i16> %i.sk, %wide.load729.2
  store <4 x i16> %i.sl, ptr %i.rf, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  br label %._crit_edge241.i

vec.epilog.scalar.ph720:                          ; preds = %vec.epilog.scalar.ph720, %vec.epilog.scalar.ph720.preheader.new
  %indvars.iv353.i = phi i64 [ 0, %vec.epilog.scalar.ph720.preheader.new ], [ %indvars.iv.next354.i.1, %vec.epilog.scalar.ph720 ] ; 4 uses
  %niter = phi i64 [ 0, %vec.epilog.scalar.ph720.preheader.new ], [ %niter.next.1, %vec.epilog.scalar.ph720 ]
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %indvars.iv353.i ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !59
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv353.i
  %i.so = load i16, ptr %gep.i, align 2, !tbaa !59
  %i.sp = mul i16 %i.so, %i.rt
  %i.sq = add i16 %i.sp, %i.sn
  store i16 %i.sq, ptr %i.sm, align 2, !tbaa !59
  %indvars.iv.next354.i = or disjoint i64 %indvars.iv353.i, 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %indvars.iv.next354.i ; 2 uses
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !59
  %gep.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv.next354.i
  %i.st = load i16, ptr %gep.i.1, align 2, !tbaa !59
  %i.su = mul i16 %i.st, %i.rt
  %i.sv = add i16 %i.su, %i.ss
  store i16 %i.sv, ptr %i.sr, align 2, !tbaa !59
  %indvars.iv.next354.i.1 = add nuw nsw i64 %indvars.iv353.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.ju
  br i1 %niter.ncmp.1, label %._crit_edge241.i, label %vec.epilog.scalar.ph720, !llvm.loop !125

._crit_edge241.i:                                 ; preds = %vector.body709, %vec.epilog.scalar.ph720, %vec.epilog.ph723
  %indvars.iv.next359.i = add nuw nsw i64 %indvars.iv358.i, %i.ju ; 2 uses
  %i.sw = trunc nuw i64 %indvars.iv.next359.i to i32
  %.not643.i = icmp slt i32 %i.jb, %i.sw
  %indvar.next696 = add i64 %indvar695, 1
  br i1 %.not643.i, label %._crit_edge246.split.i, label %iter.check719, !llvm.loop !126

._crit_edge246.split.i:                           ; preds = %._crit_edge241.i, %._crit_edge237.split.i
  br i1 %i.pd, label %bb.bn, label %.preheader219.i

.preheader219.i:                                  ; preds = %._crit_edge246.split.i
  br i1 %brmerge328.i, label %.loopexit218.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %.preheader219.i
  %i.sx = shl nsw i64 %i.pr, 1
  %i.sy = add nsw i64 %i.mc, %i.sx
  %i.sz = mul i64 %i.sy, %i.fy                    ; 2 uses
  %i.ta = add i64 %i.mb, %i.sz
  %i.tb = add i64 %i.hz, %i.sz
  br label %iter.check677

bb.bn:                                            ; preds = %._crit_edge246.split.i
  %i.tc = srem i32 %.sroa.speculated141.i, %i.gi
  %i.td = zext nneg i32 %i.tc to i64              ; 2 uses
  %i.te = mul nsw i64 %i.td, %i.fy
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.te ; 2 uses
  br i1 %brmerge328.i, label %.loopexit217.i, label %.lr.ph255.i.preheader

.lr.ph255.i.preheader:                            ; preds = %bb.bn
  %i.tg = shl nsw i64 %i.pr, 1                    ; 2 uses
  %i.th = add nsw i64 %i.ln, %i.tg
  %i.ti = mul i64 %i.th, %i.fy                    ; 4 uses
  %i.tj = add i64 %i.lp, %i.ti
  %i.tk = add i64 %i.hz, %i.ti
  %i.tl = shl nuw nsw i64 %i.td, 1                ; 2 uses
  %i.tm = sub nsw i64 %i.tl, %i.tg
  %i.tn = mul i64 %i.tm, %i.fy
  %i.to = add nsw i64 %i.ln, %i.tl
  %i.tp = mul i64 %i.to, %i.fy
  %i.tq = sub i64 %i.ti, %i.ph
  %diff.check611 = icmp ugt i64 %i.tq, -16
  %31 = sub i64 %i.ti, %30
  %diff.check620 = icmp ugt i64 %31, -16
  %i.tr = add i64 %i.tn, -1
  %diff.check622 = icmp ult i64 %i.tr, 15
  %invariant.op = or i1 %diff.check620, %diff.check622
  %i.ts = sub i64 %i.tp, %i.ph
  %diff.check632 = icmp ugt i64 %i.ts, -16
  %invariant.op869 = or i1 %diff.check630, %diff.check632
  br label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.lr.ph255.i.preheader, %._crit_edge256.i
  %indvar612 = phi i64 [ 0, %.lr.ph255.i.preheader ], [ %indvar.next613, %._crit_edge256.i ] ; 3 uses
  %indvars.iv374.i = phi i64 [ %i.iz, %.lr.ph255.i.preheader ], [ %indvars.iv.next375.i, %._crit_edge256.i ] ; 4 uses
  %i.tt = trunc i64 %indvars.iv374.i to i32       ; 3 uses
  %i.tu = add i32 %i.jb, %i.tt
  %.sroa.speculated134.i = call i32 @llvm.smin.i32(i32 %i.jg, i32 %i.tu)
  %i.tv = sext i32 %.sroa.speculated134.i to i64
  %i.tw = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.tv ; 2 uses
  %i.tx = add i32 %.neg644.i, %i.tt
  %.sroa.speculated127.i = call i32 @llvm.smax.i32(i32 %i.tx, i32 0)
  %i.ty = zext nneg i32 %.sroa.speculated127.i to i64
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ty ; 2 uses
  %i.ua = sub i32 %i.tt, %i.ea
  %i.ub = sext i32 %i.ua to i64
  %invariant.gep490.i = getelementptr [2 x i8], ptr %i.pt, i64 %i.ub ; 2 uses
  br i1 %min.iters.check635, label %scalar.ph634.preheader, label %vector.memcheck610

scalar.ph634.preheader:                           ; preds = %vector.memcheck610, %.lr.ph255.i
  br label %scalar.ph634

vector.memcheck610:                               ; preds = %.lr.ph255.i
  %i.uc = mul i64 %i.lq, %indvar612               ; 2 uses
  %i.ud = add i64 %i.pj, %i.uc                    ; 3 uses
  %i.ue = mul i64 %indvar612, %i.ju               ; 3 uses
  %i.uf = trunc i64 %i.ue to i32
  %i.ug = sub i32 %i.uf, %i.ly
  %smax = call i32 @llvm.smax.i32(i32 %i.ug, i32 0)
  %i.uh = shl nuw i32 %smax, 1
  %i.ui = zext i32 %i.uh to i64
  %i.uj = add i64 %i.lx, %i.ui                    ; 2 uses
  %i.uk = trunc i64 %i.ue to i32
  %i.ul = add i32 %i.lw, %i.uk
  %i.um = call i32 @llvm.smin.i32(i32 %i.ul, i32 %i.jg)
  %smin = sext i32 %i.um to i64
  %i.un = shl nsw i64 %smin, 1
  %i.uo = add i64 %i.lu, %i.un                    ; 2 uses
  %i.up = shl i64 %i.ue, 32
  %i.uq = ashr exact i64 %i.up, 31
  %i.ur = add i64 %i.tk, %i.uq                    ; 2 uses
  %i.us = add i64 %i.tj, %i.uc                    ; 3 uses
  %i.ut = sub i64 %i.ur, %i.us
  %diff.check614 = icmp ugt i64 %i.ut, -16
  %conflict.rdx615 = or i1 %diff.check611, %diff.check614
  %i.uu = sub i64 %i.uo, %i.us
  %diff.check616 = icmp ugt i64 %i.uu, -16
  %conflict.rdx617 = or i1 %conflict.rdx615, %diff.check616
  %i.uv = sub i64 %i.uj, %i.us
  %diff.check618 = icmp ugt i64 %i.uv, -16
  %conflict.rdx619 = or i1 %conflict.rdx617, %diff.check618
  %conflict.rdx623.reass = or i1 %conflict.rdx619, %invariant.op
  %i.uw = sub i64 %i.ur, %i.ud
  %diff.check624 = icmp ugt i64 %i.uw, -16
  %conflict.rdx625 = or i1 %conflict.rdx623.reass, %diff.check624
  %i.ux = sub i64 %i.uo, %i.ud
  %diff.check626 = icmp ugt i64 %i.ux, -16
  %conflict.rdx627 = or i1 %conflict.rdx625, %diff.check626
  %i.uy = sub i64 %i.uj, %i.ud
  %diff.check628 = icmp ugt i64 %i.uy, -16
  %conflict.rdx629 = or i1 %conflict.rdx627, %diff.check628
  %conflict.rdx633.reass = or i1 %conflict.rdx629, %invariant.op869
  br i1 %conflict.rdx633.reass, label %scalar.ph634.preheader, label %vector.body638

vector.body638:                                   ; preds = %vector.memcheck610, %vector.body638
  %index639 = phi i64 [ %index.next645, %vector.body638 ], [ 0, %vector.memcheck610 ] ; 5 uses
  %i.uz = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %index639
  %wide.load640 = load <8 x i16>, ptr %i.uz, align 2, !tbaa !59
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %index639
  %wide.load641 = load <8 x i16>, ptr %i.va, align 2, !tbaa !59
  %i.vb = add <8 x i16> %wide.load641, %wide.load640
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.tz, i64 %index639
  %wide.load642 = load <8 x i16>, ptr %i.vc, align 2, !tbaa !59
  %i.vd = sub <8 x i16> %i.vb, %wide.load642      ; 2 uses
  %i.ve = add nuw nsw i64 %index639, %indvars.iv374.i ; 4 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %i.ve
  store <8 x i16> %i.vd, ptr %i.vf, align 2, !tbaa !59
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %i.ve
  %wide.load643 = load <8 x i16>, ptr %i.vg, align 2, !tbaa !59
  %i.vh = add <8 x i16> %wide.load643, %i.vd
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.ve
  %wide.load644 = load <8 x i16>, ptr %i.vi, align 2, !tbaa !59
  %i.vj = sub <8 x i16> %i.vh, %wide.load644
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.ve
  store <8 x i16> %i.vj, ptr %i.vk, align 2, !tbaa !59
  %index.next645 = add nuw i64 %index639, 8       ; 2 uses
  %i.vl = icmp eq i64 %index.next645, %i.ju
  br i1 %i.vl, label %._crit_edge256.i, label %vector.body638, !llvm.loop !127

scalar.ph634:                                     ; preds = %scalar.ph634.preheader, %scalar.ph634
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %scalar.ph634 ], [ 0, %scalar.ph634.preheader ] ; 5 uses
  %gep491.i = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %indvars.iv369.i
  %i.vm = load i16, ptr %gep491.i, align 2, !tbaa !59
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %indvars.iv369.i
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !59
  %i.vp = add i16 %i.vo, %i.vm
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.tz, i64 %indvars.iv369.i
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !59
  %i.vs = sub i16 %i.vp, %i.vr                    ; 2 uses
  %i.vt = add nuw nsw i64 %indvars.iv369.i, %indvars.iv374.i ; 4 uses
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %i.vt
  store i16 %i.vs, ptr %i.vu, align 2, !tbaa !59
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %i.vt
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !59
  %i.vx = add i16 %i.vw, %i.vs
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.vt
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !59
  %i.wa = sub i16 %i.vx, %i.vz
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.vt
  store i16 %i.wa, ptr %i.wb, align 2, !tbaa !59
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %i.ju
  br i1 %exitcond373.not.i, label %._crit_edge256.i, label %scalar.ph634, !llvm.loop !128

._crit_edge256.i:                                 ; preds = %vector.body638, %scalar.ph634
  %indvars.iv.next375.i = add nuw nsw i64 %indvars.iv374.i, %i.iz ; 2 uses
  %i.wc = icmp slt i64 %indvars.iv.next375.i, %i.fy
  %indvar.next613 = add i64 %indvar612, 1
  br i1 %i.wc, label %.lr.ph255.i, label %.loopexit218.i, !llvm.loop !129

iter.check677:                                    ; preds = %.lr.ph249.i.preheader, %._crit_edge250.i
  %indvar650 = phi i64 [ 0, %.lr.ph249.i.preheader ], [ %indvar.next651, %._crit_edge250.i ] ; 3 uses
  %indvars.iv366.i = phi i64 [ %i.iz, %.lr.ph249.i.preheader ], [ %indvars.iv.next367.i, %._crit_edge250.i ] ; 3 uses
  %i.wd = trunc i64 %indvars.iv366.i to i32       ; 3 uses
  %i.we = add i32 %i.jb, %i.wd
  %.sroa.speculated120.i = call i32 @llvm.smin.i32(i32 %i.jg, i32 %i.we)
  %i.wf = sext i32 %.sroa.speculated120.i to i64
  %i.wg = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.wf ; 6 uses
  %i.wh = add i32 %.neg644.i, %i.wd
  %.sroa.speculated113.i = call i32 @llvm.smax.i32(i32 %i.wh, i32 0)
  %i.wi = zext nneg i32 %.sroa.speculated113.i to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.wi ; 6 uses
  %i.wk = sub i32 %i.wd, %i.ea
  %i.wl = sext i32 %i.wk to i64
  %invariant.gep486.i = getelementptr [2 x i8], ptr %i.pt, i64 %i.wl ; 6 uses
  %invariant.gep488.i = getelementptr [2 x i8], ptr %i.pt, i64 %indvars.iv366.i ; 6 uses
  br i1 %min.iters.check660, label %vec.epilog.scalar.ph678.preheader.new, label %vector.memcheck649

vector.memcheck649:                               ; preds = %iter.check677
  %i.wm = mul i64 %i.md, %indvar650
  %i.wn = add i64 %i.ta, %i.wm                    ; 3 uses
  %i.wo = mul i64 %indvar650, %i.ju               ; 3 uses
  %i.wp = trunc i64 %i.wo to i32
  %i.wq = sub i32 %i.wp, %i.ml
  %smax656 = call i32 @llvm.smax.i32(i32 %i.wq, i32 0)
  %i.wr = shl nuw i32 %smax656, 1
  %i.ws = zext i32 %i.wr to i64
  %i.wt = add i64 %i.mk, %i.ws
  %i.wu = trunc i64 %i.wo to i32
  %i.wv = add i32 %i.mj, %i.wu
  %i.ww = call i32 @llvm.smin.i32(i32 %i.wv, i32 %i.jg)
  %smin653 = sext i32 %i.ww to i64
  %i.wx = shl nsw i64 %smin653, 1
  %i.wy = add i64 %i.mh, %i.wx
  %i.wz = shl i64 %i.wo, 32
  %i.xa = ashr exact i64 %i.wz, 31
  %i.xb = add i64 %i.tb, %i.xa
  %i.xc = sub i64 %i.xb, %i.wn
  %diff.check652 = icmp ugt i64 %i.xc, -32
  %i.xd = sub i64 %i.wy, %i.wn
  %diff.check654 = icmp ugt i64 %i.xd, -32
  %conflict.rdx655 = or i1 %diff.check652, %diff.check654
  %i.xe = sub i64 %i.wt, %i.wn
  %diff.check657 = icmp ugt i64 %i.xe, -32
  %conflict.rdx658 = or i1 %conflict.rdx655, %diff.check657
  br i1 %conflict.rdx658, label %vec.epilog.scalar.ph678.preheader.new, label %vector.main.loop.iter.check661

vec.epilog.scalar.ph678.preheader.new:            ; preds = %vector.memcheck649, %iter.check677
  br label %vec.epilog.scalar.ph678

vector.main.loop.iter.check661:                   ; preds = %vector.memcheck649
  br i1 %min.iters.check662, label %vec.epilog.vector.body683, label %vector.body665

vector.body665:                                   ; preds = %vector.main.loop.iter.check661, %vector.body665
  %index666 = phi i64 [ %index.next673, %vector.body665 ], [ 0, %vector.main.loop.iter.check661 ] ; 5 uses
  %i.xf = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %index666 ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 16
  %wide.load667 = load <8 x i16>, ptr %i.xf, align 2, !tbaa !59
  %wide.load668 = load <8 x i16>, ptr %i.xg, align 2, !tbaa !59
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %index666 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %wide.load669 = load <8 x i16>, ptr %i.xh, align 2, !tbaa !59
  %wide.load670 = load <8 x i16>, ptr %i.xi, align 2, !tbaa !59
  %i.xj = add <8 x i16> %wide.load669, %wide.load667
  %i.xk = add <8 x i16> %wide.load670, %wide.load668
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %index666 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %wide.load671 = load <8 x i16>, ptr %i.xl, align 2, !tbaa !59
  %wide.load672 = load <8 x i16>, ptr %i.xm, align 2, !tbaa !59
  %i.xn = sub <8 x i16> %i.xj, %wide.load671
  %i.xo = sub <8 x i16> %i.xk, %wide.load672
  %i.xp = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %index666 ; 2 uses
  %i.xq = getelementptr i8, ptr %i.xp, i64 16
  store <8 x i16> %i.xn, ptr %i.xp, align 2, !tbaa !59
  store <8 x i16> %i.xo, ptr %i.xq, align 2, !tbaa !59
  %index.next673 = add nuw i64 %index666, 16      ; 2 uses
  %i.xr = icmp eq i64 %index.next673, %i.ju
  br i1 %i.xr, label %._crit_edge250.i, label %vector.body665, !llvm.loop !130

vec.epilog.vector.body683:                        ; preds = %vector.main.loop.iter.check661
  %wide.load685 = load <4 x i16>, ptr %invariant.gep486.i, align 2, !tbaa !59
  %wide.load686 = load <4 x i16>, ptr %i.wg, align 2, !tbaa !59
  %i.xs = add <4 x i16> %wide.load686, %wide.load685
  %wide.load687 = load <4 x i16>, ptr %i.wj, align 2, !tbaa !59
  %i.xt = sub <4 x i16> %i.xs, %wide.load687
  store <4 x i16> %i.xt, ptr %invariant.gep488.i, align 2, !tbaa !59
  %i.xu = getelementptr i8, ptr %invariant.gep486.i, i64 8
  %wide.load685.1 = load <4 x i16>, ptr %i.xu, align 2, !tbaa !59
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %wide.load686.1 = load <4 x i16>, ptr %i.xv, align 2, !tbaa !59
  %i.xw = add <4 x i16> %wide.load686.1, %wide.load685.1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %wide.load687.1 = load <4 x i16>, ptr %i.xx, align 2, !tbaa !59
  %i.xy = sub <4 x i16> %i.xw, %wide.load687.1
  %i.xz = getelementptr i8, ptr %invariant.gep488.i, i64 8
  store <4 x i16> %i.xy, ptr %i.xz, align 2, !tbaa !59
  %i.ya = getelementptr i8, ptr %invariant.gep486.i, i64 16
  %wide.load685.2 = load <4 x i16>, ptr %i.ya, align 2, !tbaa !59
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %wide.load686.2 = load <4 x i16>, ptr %i.yb, align 2, !tbaa !59
  %i.yc = add <4 x i16> %wide.load686.2, %wide.load685.2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %wide.load687.2 = load <4 x i16>, ptr %i.yd, align 2, !tbaa !59
  %i.ye = sub <4 x i16> %i.yc, %wide.load687.2
  %i.yf = getelementptr i8, ptr %invariant.gep488.i, i64 16
  store <4 x i16> %i.ye, ptr %i.yf, align 2, !tbaa !59
  br label %._crit_edge250.i

vec.epilog.scalar.ph678:                          ; preds = %vec.epilog.scalar.ph678, %vec.epilog.scalar.ph678.preheader.new
  %indvars.iv361.i = phi i64 [ 0, %vec.epilog.scalar.ph678.preheader.new ], [ %indvars.iv.next362.i.1, %vec.epilog.scalar.ph678 ] ; 6 uses
  %niter844 = phi i64 [ 0, %vec.epilog.scalar.ph678.preheader.new ], [ %niter844.next.1, %vec.epilog.scalar.ph678 ]
  %gep487.i = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv361.i
  %i.yg = load i16, ptr %gep487.i, align 2, !tbaa !59
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %indvars.iv361.i
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !59
  %i.yj = add i16 %i.yi, %i.yg
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %indvars.iv361.i
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !59
  %i.ym = sub i16 %i.yj, %i.yl
  %gep489.i = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv361.i
  store i16 %i.ym, ptr %gep489.i, align 2, !tbaa !59
  %indvars.iv.next362.i = or disjoint i64 %indvars.iv361.i, 1 ; 4 uses
  %gep487.i.1 = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv.next362.i
  %i.yn = load i16, ptr %gep487.i.1, align 2, !tbaa !59
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %indvars.iv.next362.i
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !59
  %i.yq = add i16 %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %indvars.iv.next362.i
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !59
  %i.yt = sub i16 %i.yq, %i.ys
  %gep489.i.1 = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv.next362.i
  store i16 %i.yt, ptr %gep489.i.1, align 2, !tbaa !59
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2
  %niter844.next.1 = add i64 %niter844, 2         ; 2 uses
  %niter844.ncmp.1 = icmp eq i64 %niter844.next.1, %i.ju
  br i1 %niter844.ncmp.1, label %._crit_edge250.i, label %vec.epilog.scalar.ph678, !llvm.loop !131

._crit_edge250.i:                                 ; preds = %vector.body665, %vec.epilog.scalar.ph678, %vec.epilog.vector.body683
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, %i.iz ; 2 uses
  %i.yu = icmp slt i64 %indvars.iv.next367.i, %i.fy
  %indvar.next651 = add i64 %indvar650, 1
  br i1 %i.yu, label %iter.check677, label %.loopexit218.i, !llvm.loop !132

.loopexit218.i:                                   ; preds = %._crit_edge250.i, %._crit_edge256.i, %.preheader219.i, %bb.bm
  br i1 %brmerge499.i, label %.loopexit217.i, label %iter.check594

iter.check594:                                    ; preds = %.loopexit218.i
  %i.yv = icmp eq i64 %indvars.iv382.i, 0
  %i.yw = select i1 %i.yv, i16 %i.je, i16 1       ; 5 uses
  br i1 %min.iters.check577, label %vec.epilog.scalar.ph595.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check594
  %i.yx = shl nsw i64 %i.pr, 1
  %i.yy = add nsw i64 %i.ln, %i.yx
  %i.yz = mul i64 %i.yy, %i.fy
  %scevgep572 = getelementptr i8, ptr %scevgep571, i64 %i.yz
  %bound0573 = icmp ult ptr %i.oy, %scevgep572
  %bound1574 = icmp ult ptr %i.pt, %scevgep570
  %found.conflict575 = and i1 %bound0573, %bound1574
  br i1 %found.conflict575, label %vec.epilog.scalar.ph595.preheader, label %vector.main.loop.iter.check578

vector.main.loop.iter.check578:                   ; preds = %vector.memcheck568
  br i1 %min.iters.check579, label %vec.epilog.ph598, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check578
  %broadcast.splatinsert582 = insertelement <8 x i16> poison, i16 %i.yw, i64 0
  %broadcast.splat583 = shufflevector <8 x i16> %broadcast.splatinsert582, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.ph580, %vector.body584
  %index585 = phi i64 [ 0, %vector.ph580 ], [ %index.next590, %vector.body584 ] ; 3 uses
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %index585 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16 ; 2 uses
  %wide.load586 = load <8 x i16>, ptr %i.za, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load587 = load <8 x i16>, ptr %i.zb, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %index585 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %wide.load588 = load <8 x i16>, ptr %i.zc, align 2, !tbaa !59, !alias.scope !192
  %wide.load589 = load <8 x i16>, ptr %i.zd, align 2, !tbaa !59, !alias.scope !192
  %i.ze = mul <8 x i16> %wide.load588, %broadcast.splat583
  %i.zf = mul <8 x i16> %wide.load589, %broadcast.splat583
  %i.zg = add <8 x i16> %i.ze, %wide.load586
  %i.zh = add <8 x i16> %i.zf, %wide.load587
end_hunk_0
