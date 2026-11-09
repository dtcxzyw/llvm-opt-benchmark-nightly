Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.dc, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !56
  store ptr %18, ptr %i.db, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 262800 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !41
  %.sroa.2116.0.insert.ext = zext i32 %i.de to i64 ; 2 uses
  %.sroa.2116.0.insert.shift = shl nuw i64 %.sroa.2116.0.insert.ext, 32
  %.sroa.0115.0.insert.insert = or disjoint i64 %.sroa.2116.0.insert.shift, %.sroa.2116.0.insert.ext
  invoke void @_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 %.sroa.0115.0.insert.insert, i64 -1, i32 noundef 4)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.df, align 8, !tbaa !175
  %i.dg = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.dg, align 4, !tbaa !176
  store i32 16842752, ptr %22, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %12, ptr %i.dh, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.di = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.dj, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !56
  store ptr %21, ptr %i.di, align 8, !tbaa !52
  %i.dk = load i32, ptr %i.dd, align 8, !tbaa !41
  %.sroa.2112.0.insert.ext = zext i32 %i.dk to i64 ; 2 uses
  %.sroa.2112.0.insert.shift = shl nuw i64 %.sroa.2112.0.insert.ext, 32
  %.sroa.0111.0.insert.insert = or disjoint i64 %.sroa.2112.0.insert.shift, %.sroa.2112.0.insert.ext
  invoke void @_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 %.sroa.0111.0.insert.insert, i64 -1, i32 noundef 4)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.dl = load i32, ptr %i.dd, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull align 8 dereferenceable(208) %i.cc, i32 noundef 5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.au

bb.ao:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.as

bb.ap:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

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
  %i.dx = load i32, ptr %i.cj, align 4, !tbaa !178 ; 16 uses
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
  %i.fc = select i1 %i.ea, i32 %i.fb, i32 2       ; 6 uses
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
  %i.fv = sext i32 %i.fu to i64                   ; 22 uses
  %i.fw = select i1 %.not642.i, i32 %i.ev, i32 1
  %i.fx = sext i32 %i.fw to i64                   ; 7 uses
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
  %i.hx = inttoptr i64 %i.hw to ptr               ; 13 uses
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
  %i.it = add nsw i32 %i.ey, -1                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.iw = sext i32 %i.dx to i64                   ; 16 uses
  %i.ix = shl nsw i64 %i.iw, 1
  %i.iy = mul nsw i32 %i.fc, %i.dx                ; 4 uses
  %.not643242.i = icmp slt i32 %i.iy, 0
  %i.iz = icmp slt i32 %i.dx, 1                   ; 2 uses
  %i.ja = trunc i32 %i.fc to i16
  %i.jb = add i16 %i.ja, 1                        ; 2 uses
  %i.jc = icmp sge i32 %i.dx, %i.fu
  %i.jd = mul nsw i32 %i.it, %i.dx                ; 2 uses
  %.neg.i = xor i32 %i.fc, -1                     ; 2 uses
  %.neg644.i = mul i32 %i.dx, %.neg.i             ; 2 uses
  %i.je = sub nsw i64 0, %i.fv
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
  %i.jr = zext i32 %i.dx to i64                   ; 15 uses
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
  %29 = add i64 %i.hw, %.idx.i
  %i.kh = shl nsw i64 %i.fx, 2
  %i.ki = shl nsw i64 %i.ia, 1
  %i.kj = add nsw i64 %i.kh, %i.ki
  %i.kk = or disjoint i64 %i.kj, 2
  %i.kl = mul i64 %i.kk, %i.fv                    ; 2 uses
  %30 = add i64 %29, %i.kl
  %i.km = add i64 %i.hw, %.idx.i
  %i.kn = add i64 %i.km, %i.kl
  %i.ko = shl nsw i64 %i.gq, 1
  %i.kp = add i64 %i.kn, %i.ko
  %i.kq = shl nsw i64 %i.in, 1                    ; 10 uses
  %i.kr = shl nsw i64 %i.jm, 1                    ; 6 uses
  %i.ks = shl nuw nsw i64 %i.jr, 1                ; 16 uses
  %i.kt = shl nsw i64 %i.gc, 4
  %i.ku = shl nsw i64 %i.jk, 1                    ; 5 uses
  %i.kv = or disjoint i64 %i.ks, 2
  %i.kw = sub nsw i64 %i.kv, %i.kq
  %i.kx = add nsw i64 %i.ks, -2
  %i.ky = sub nsw i64 %i.kx, %i.kq
  %i.kz = sub nsw i64 %i.ks, %i.kq
  %i.la = or disjoint i64 %i.ks, 2
  %i.lb = add nsw i64 %i.ks, -2
  %i.lc = shl nsw i64 %i.iw, 1
  %i.ld = shl nsw i64 %i.iw, 1
  %i.le = mul nsw i64 %i.fx, %i.fv
  %i.lf = add i64 %i.le, %i.jr
  %i.lg = shl i64 %i.lf, 1
  %i.lh = add nsw i64 %i.ku, %i.ks
  %i.li = shl nsw i64 %i.gc, 4
  %i.lj = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %i.lk = shl nsw i64 %i.fx, 2                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.hx, i64 %i.lj
  %i.ll = shl nsw i64 %i.iw, 1                    ; 3 uses
  %i.lm = add i64 %i.hw, %i.ll
  %i.ln = shl nsw i64 %i.ia, 1                    ; 2 uses
  %i.lo = add nsw i64 %i.lk, %i.ln
  %i.lp = mul i64 %i.lo, %i.fv
  %31 = add i64 %i.hw, %i.lp                      ; 2 uses
  %i.lq = add i64 %i.hw, %i.ll
  %i.lr = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.ls = add nsw i64 %i.lr, %i.ln
  %i.lt = mul i64 %i.ls, %i.fv
  %32 = add i64 %i.hw, %i.lt                      ; 2 uses
  %i.lu = shl nsw i64 %i.iw, 1                    ; 2 uses
  %i.lv = add i64 %i.hw, %i.lu
  %33 = shl nuw nsw i64 %i.jr, 1                  ; 3 uses
  %i.lw = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.lx = shl nsw i64 %i.ia, 1
  %i.ly = add nsw i64 %i.lw, %i.lx
  %i.lz = mul i64 %i.ly, %i.fv
  %scevgep1034 = getelementptr i8, ptr %i.hx, i64 %33
  %i.ma = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mb = add nsw i64 %i.ma, -2
  %i.mc = shl nsw i64 %i.gq, 1
  %i.md = shl nsw i64 %i.gq, 1
  %i.me = shl nsw i64 %i.fx, 2
  %i.mf = shl nsw i64 %i.ia, 1
  %i.mg = add nsw i64 %i.me, %i.mf
  %i.mh = mul i64 %i.mg, %i.fv
  %scevgep1086 = getelementptr i8, ptr %i.hx, i64 %i.mh
  %i.mi = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mj = add nsw i64 %i.mi, -2
  %i.mk = getelementptr i8, ptr %i.hx, i64 %i.lz
  %i.ml = getelementptr i8, ptr %i.mk, i64 %33
  %min.iters.check877 = icmp samesign ult i64 %.pre-phi.i, 4
  %invariant.gep = getelementptr i8, ptr %i.hx, i64 %i.lj
  %min.iters.check883 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.mm = and i64 %.pre-phi.i, 12
  %n.vec885 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n896 = icmp eq i64 %.pre-phi.i, %n.vec885
  %min.epilog.iters.check900 = icmp eq i64 %i.mm, 0
  %n.vec903 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n912 = icmp eq i64 %.pre-phi.i, %n.vec903
  %xtraiter1181 = and i64 %.pre-phi.i, 1
  %lcmp.mod1182.not = icmp eq i64 %xtraiter1181, 0
  %min.iters.check533 = icmp ult i32 %i.dx, 28
  %i.mn = getelementptr i8, ptr %i.hx, i64 %i.lg
  %i.mo = getelementptr i8, ptr %i.hx, i64 %i.ks
  %broadcast.splatinsert833 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat834 = shufflevector <4 x i32> %broadcast.splatinsert833, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %min.iters.check181 = icmp ult i32 %i.et, 4
  %i.mp = shl nsw i64 %i.gq, 1
  %diff.check182 = icmp ugt i64 %i.mp, -32
  %min.iters.check186 = icmp ult i32 %i.et, 16
  %i.mq = and i64 %wide.trip.count351.i, 12
  %n.vec188 = and i64 %wide.trip.count351.i, 4294967280 ; 4 uses
  %broadcast.splatinsert189 = insertelement <8 x i16> poison, i16 %i.jo, i64 0
  %broadcast.splat190 = shufflevector <8 x i16> %broadcast.splatinsert189, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n195 = icmp eq i64 %n.vec188, %wide.trip.count351.i
  %min.epilog.iters.check199 = icmp eq i64 %i.mq, 0
  %n.vec202 = and i64 %wide.trip.count351.i, 4294967292 ; 3 uses
  %broadcast.splatinsert203 = insertelement <4 x i16> poison, i16 %i.jo, i64 0
  %broadcast.splat204 = shufflevector <4 x i16> %broadcast.splatinsert203, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n209 = icmp eq i64 %n.vec202, %wide.trip.count351.i
  %xtraiter1184 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod1185.not = icmp eq i64 %xtraiter1184, 0
  %i.mr = add nsw i64 %wide.trip.count351.i, -1
  br label %bb.bf

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %indvars.iv.i
  store i16 %i.ih, ptr %i.ms, align 2, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader229.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.bf:                                            ; preds = %._crit_edge317.i, %.preheader229.i
  %.0598324.i = phi i32 [ 1, %.preheader229.i ], [ %i.nx, %._crit_edge317.i ] ; 4 uses
  %i.mt = icmp eq i32 %.0598324.i, 1              ; 2 uses
  br i1 %i.mt, label %.preheader228.i, label %bb.bg

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
  %i.mu = mul i32 %.0592.i, %i.ft
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = icmp eq i32 %.0598324.i, %i.ff
  %i.my = add i32 %i.jt, %.0596.i
  %i.mz = sext i32 %.0597.i to i64                ; 4 uses
  %i.na = sext i32 %.0592.i to i64                ; 5 uses
  %i.nb = sext i32 %.0596.i to i64
  %i.nc = mul i64 %i.kt, %i.mz                    ; 17 uses
  %i.nd = shl nsw i64 %i.mz, 4
  %i.ne = or disjoint i64 %i.nd, 2
  %i.nf = mul i64 %i.ne, %i.gc                    ; 6 uses
  %reass.sub = sub i64 %i.nf, %i.kq
  %reass.sub1119 = sub i64 %i.nf, %i.kq
  %i.ng = add i64 %i.la, %i.nc
  %i.nh = shl nsw i64 %i.mv, 1                    ; 5 uses
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = or disjoint i64 %i.nc, 2
  %i.nk = sub i64 %i.nj, %i.nh
  %i.nl = add i64 %i.lb, %i.nc
  %i.nm = sub i64 %i.nl, %i.nh
  %i.nn = add i64 %i.nc, -2
  %i.no = sub i64 %i.nn, %i.nh
  %i.np = add i64 %i.ks, %i.nc
  %i.nq = sub i64 %i.np, %i.nh
  %i.nr = mul i64 %i.lc, %i.mz                    ; 2 uses
  %i.ns = mul nsw i64 %i.ld, %i.na
  %i.nt = add i64 %i.lh, %i.nc
  %i.nu = mul nsw i64 %i.li, %i.na
  %i.nv = getelementptr i8, ptr %i.mn, i64 %i.nr
  %i.nw = getelementptr i8, ptr %i.mo, i64 %i.nr
  br label %bb.bh

._crit_edge317.i:                                 ; preds = %.loopexit223.i, %.preheader228.i
  %i.nx = add nuw nsw i32 %.0598324.i, 1
  %exitcond430.not.i = icmp eq i32 %.0598324.i, %i.ff
  br i1 %exitcond430.not.i, label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit, label %bb.bf, !llvm.loop !112

bb.bh:                                            ; preds = %.loopexit223.i, %.lr.ph316.i
  %indvars.iv427.i = phi i64 [ %i.nb, %.lr.ph316.i ], [ %indvars.iv.next428.i, %.loopexit223.i ] ; 7 uses
  %indvars.iv385.i = phi i32 [ %i.my, %.lr.ph316.i ], [ %indvars.iv.next386.i, %.loopexit223.i ] ; 2 uses
  %i.ny = phi ptr [ %i.kf, %.lr.ph316.i ], [ %i.ob, %.loopexit223.i ] ; 3 uses
  %i.nz = phi ptr [ %i.kb, %.lr.ph316.i ], [ %i.oa, %.loopexit223.i ] ; 17 uses
  %i.oa = phi ptr [ %i.jy, %.lr.ph316.i ], [ %i.nz, %.loopexit223.i ] ; 14 uses
  %i.ob = phi ptr [ %i.kg, %.lr.ph316.i ], [ %i.ny, %.loopexit223.i ] ; 7 uses
  %i.oc = load ptr, ptr %i.iu, align 8, !tbaa !57 ; 2 uses
  %i.od = ptrtoaddr ptr %i.oc to i64
  %i.oe = load i64, ptr %i.iv, align 8, !tbaa !62
  %i.of = mul i64 %i.oe, %indvars.iv427.i         ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of ; 7 uses
  %i.oh = mul nsw i64 %indvars.iv427.i, %i.fv
  %i.oi = select i1 %.not642.i, i64 %i.oh, i64 0  ; 4 uses
  %i.oj = getelementptr [2 x i8], ptr %i.hx, i64 %i.oi ; 11 uses
  %i.ok = getelementptr [2 x i8], ptr %i.hy, i64 %i.oi ; 3 uses
  br i1 %i.mt, label %bb.bi, label %.loopexit227.i

bb.bi:                                            ; preds = %bb.bh
  %i.ol = icmp ne i64 %indvars.iv427.i, 0         ; 2 uses
  %i.om = add nsw i64 %indvars.iv427.i, %i.jx     ; 2 uses
  %i.on = select i1 %i.ol, i64 %i.om, i64 0       ; 3 uses
  %.not638263.i = icmp sgt i64 %i.on, %i.om
  br i1 %.not638263.i, label %.preheader226.i, label %.lr.ph266.i

.lr.ph266.i:                                      ; preds = %bb.bi
  %i.oo = icmp sgt i64 %indvars.iv427.i, 0
  %i.op = trunc nsw i64 %indvars.iv427.i to i32
  %i.oq = add i32 %i.op, %.neg.i
  %.sroa.speculated141.i = call i32 @llvm.smax.i32(i32 %i.oq, i32 0)
  %i.or = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.je
  %i.os = select i1 %.not642.i, ptr %i.or, ptr %i.hx ; 3 uses
  %i.ot = ptrtoaddr ptr %i.os to i64              ; 2 uses
  %brmerge499.i = or i1 %i.ig, %i.ol
  %i.ou = shl i64 %i.oi, 1                        ; 5 uses
  %scevgep875 = getelementptr i8, ptr %scevgep, i64 %i.ou
  %i.ov = add i64 %i.hw, %i.ou
  %i.ow = add i64 %i.lm, %i.ou
  %i.ox = mul i64 %i.mc, %i.on                    ; 2 uses
  %i.oy = add i64 %i.mb, %i.ox
  %invariant.op1198 = sub i64 %i.hw, %i.ot
  %i.oz = sub i64 %i.ot, %i.ov
  %diff.check959 = icmp ugt i64 %i.oz, -16
  br label %bb.bj

.preheader226.i:                                  ; preds = %.loopexit217.i, %bb.bi
  br i1 %i.ig, label %.loopexit227.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %.preheader226.i
  call void @llvm.memset.p0.i64(ptr align 16 %i.ok, i8 0, i64 %i.ju, i1 false), !tbaa !59
  br label %.loopexit227.i

bb.bj:                                            ; preds = %.loopexit217.i, %.lr.ph266.i
  %indvar1082 = phi i64 [ %indvar.next1083, %.loopexit217.i ], [ 0, %.lr.ph266.i ] ; 2 uses
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %.loopexit217.i ], [ %i.on, %.lr.ph266.i ] ; 5 uses
  %i.pa = mul i64 %i.md, %indvar1082              ; 2 uses
  %i.pb = add i64 %i.oy, %i.pa
  %i.pc = add i64 %i.ox, %i.pa
  %i.pd = trunc nsw i64 %indvars.iv382.i to i32
  %.sroa.speculated148.i = call i32 @llvm.smin.i32(i32 %i.is, i32 %i.pd)
  %i.pe = srem i32 %.sroa.speculated148.i, %i.gf
  %i.pf = sext i32 %i.pe to i64                   ; 5 uses
  %i.pg = mul nsw i64 %i.pf, %i.fv
  %i.ph = getelementptr [2 x i8], ptr %i.hz, i64 %i.pg ; 16 uses
  %i.pi = icmp slt i64 %indvars.iv382.i, %i.js
  br i1 %i.pi, label %.preheader221.i, label %.loopexit218.i

.preheader221.i:                                  ; preds = %bb.bj
  %i.pj = load i32, ptr %i.cj, align 4, !tbaa !178 ; 6 uses
  %.not233.i = icmp slt i32 %i.pj, 0
  %i.pk = mul nsw i64 %indvars.iv382.i, %i.gq
  br i1 %.not233.i, label %._crit_edge237.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader221.i
  %i.pl = add nuw i32 %i.pj, 1                    ; 3 uses
  %i.pm = sext i32 %i.pl to i64                   ; 3 uses
  %i.pn = zext nneg i32 %i.pj to i64              ; 2 uses
  %wide.trip.count346.i = zext i32 %i.pl to i64   ; 8 uses
  %i.po = mul i64 %i.pb, %i.pm
  %i.pp = shl nuw nsw i64 %wide.trip.count346.i, 1 ; 2 uses
  %i.pq = getelementptr i8, ptr %.val66, i64 %i.po
  %scevgep1084 = getelementptr i8, ptr %i.pq, i64 %i.pp
  %i.pr = mul i64 %i.pc, %i.pm
  %scevgep1085 = getelementptr i8, ptr %.val66, i64 %i.pr
  %i.ps = mul i64 %i.mj, %i.pn
  %i.pt = getelementptr i8, ptr %scevgep1086, i64 %i.ps
  %scevgep1087 = getelementptr i8, ptr %i.pt, i64 %i.pp
  %i.pu = zext nneg i32 %i.pj to i64
  %min.iters.check1089 = icmp ult i32 %i.pj, 3
  %bound01091 = icmp ult ptr %i.ic, %scevgep1084
  %bound11092 = icmp ult ptr %scevgep1085, %scevgep1087
  %found.conflict1093 = and i1 %bound01091, %bound11092
  %stride.check = icmp slt i32 %i.pl, 0
  %i.pv = or i1 %found.conflict1093, %stride.check
  %min.iters.check1095 = icmp ult i32 %i.pj, 15
  %i.pw = and i64 %wide.trip.count346.i, 12
  %n.vec1097 = and i64 %wide.trip.count346.i, 2147483632 ; 4 uses
  %cmp.n1104 = icmp eq i64 %n.vec1097, %wide.trip.count346.i
  %min.epilog.iters.check1108 = icmp eq i64 %i.pw, 0
  %n.vec1111 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %cmp.n1117 = icmp eq i64 %n.vec1111, %wide.trip.count346.i
  %xtraiter = and i64 %wide.trip.count346.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check1105

iter.check1105:                                   ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv348.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next349.i, %._crit_edge.i ] ; 3 uses
  %i.px = add nsw i64 %indvars.iv348.i, %i.pk
  %i.py = mul nsw i64 %i.px, %i.pm
  %i.pz = mul nuw nsw i64 %indvars.iv348.i, %i.pn
  %i.qa = getelementptr [2 x i8], ptr %.val66, i64 %i.py ; 7 uses
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.pz ; 7 uses
  %brmerge = select i1 %min.iters.check1089, i1 true, i1 %i.pv
  br i1 %brmerge, label %vec.epilog.scalar.ph1107.preheader, label %vector.main.loop.iter.check1094

vector.main.loop.iter.check1094:                  ; preds = %iter.check1105
  br i1 %min.iters.check1095, label %vec.epilog.ph1109, label %vector.body1098

vector.body1098:                                  ; preds = %vector.main.loop.iter.check1094, %vector.body1098
  %index1099 = phi i64 [ %index.next1102, %vector.body1098 ], [ 0, %vector.main.loop.iter.check1094 ] ; 3 uses
  %i.qc = getelementptr [2 x i8], ptr %i.qa, i64 %index1099 ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 16
  %wide.load1100 = load <8 x i16>, ptr %i.qc, align 2, !tbaa !59, !alias.scope !187
  %wide.load1101 = load <8 x i16>, ptr %i.qd, align 2, !tbaa !59, !alias.scope !187
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %index1099 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store <8 x i16> %wide.load1100, ptr %i.qe, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  store <8 x i16> %wide.load1101, ptr %i.qf, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next1102 = add nuw i64 %index1099, 16    ; 2 uses
  %i.qg = icmp eq i64 %index.next1102, %n.vec1097
  br i1 %i.qg, label %middle.block1103, label %vector.body1098, !llvm.loop !116

middle.block1103:                                 ; preds = %vector.body1098
  br i1 %cmp.n1104, label %._crit_edge.i, label %vec.epilog.iter.check1106

vec.epilog.iter.check1106:                        ; preds = %middle.block1103
  br i1 %min.epilog.iters.check1108, label %vec.epilog.scalar.ph1107.preheader, label %vec.epilog.ph1109, !prof !63

vec.epilog.ph1109:                                ; preds = %vector.main.loop.iter.check1094, %vec.epilog.iter.check1106
  %vec.epilog.resume.val1110 = phi i64 [ %n.vec1097, %vec.epilog.iter.check1106 ], [ 0, %vector.main.loop.iter.check1094 ]
  br label %vec.epilog.vector.body1112

vec.epilog.vector.body1112:                       ; preds = %vec.epilog.vector.body1112, %vec.epilog.ph1109
  %index1113 = phi i64 [ %vec.epilog.resume.val1110, %vec.epilog.ph1109 ], [ %index.next1115, %vec.epilog.vector.body1112 ] ; 3 uses
  %i.qh = getelementptr [2 x i8], ptr %i.qa, i64 %index1113
  %wide.load1114 = load <4 x i16>, ptr %i.qh, align 2, !tbaa !59, !alias.scope !187
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %index1113
  store <4 x i16> %wide.load1114, ptr %i.qi, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next1115 = add nuw i64 %index1113, 4     ; 2 uses
  %i.qj = icmp eq i64 %index.next1115, %n.vec1111
  br i1 %i.qj, label %vec.epilog.middle.block1116, label %vec.epilog.vector.body1112, !llvm.loop !117

vec.epilog.middle.block1116:                      ; preds = %vec.epilog.vector.body1112
  br i1 %cmp.n1117, label %._crit_edge.i, label %vec.epilog.scalar.ph1107.preheader

vec.epilog.scalar.ph1107.preheader:               ; preds = %iter.check1105, %vec.epilog.iter.check1106, %vec.epilog.middle.block1116
  %indvars.iv343.i.ph = phi i64 [ 0, %iter.check1105 ], [ %n.vec1111, %vec.epilog.middle.block1116 ], [ %n.vec1097, %vec.epilog.iter.check1106 ] ; 3 uses
  %i.qk = sub nsw i64 %i.pu, %indvars.iv343.i.ph
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol

vec.epilog.scalar.ph1107.prol:                    ; preds = %vec.epilog.scalar.ph1107.preheader, %vec.epilog.scalar.ph1107.prol
  %indvars.iv343.i.prol = phi i64 [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph1107.prol ], [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph1107.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1107.prol ], [ 0, %vec.epilog.scalar.ph1107.preheader ]
  %i.ql = getelementptr [2 x i8], ptr %i.qa, i64 %indvars.iv343.i.prol
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !59
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv343.i.prol
  store i16 %i.qm, ptr %i.qn, align 2, !tbaa !59
  %indvars.iv.next344.i.prol = add nuw nsw i64 %indvars.iv343.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol, !llvm.loop !118

vec.epilog.scalar.ph1107.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1107.prol, %vec.epilog.scalar.ph1107.preheader
  %indvars.iv343.i.unr = phi i64 [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph1107.preheader ], [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph1107.prol ]
  %i.qo = icmp ult i64 %i.qk, 3
  br i1 %i.qo, label %._crit_edge.i, label %vec.epilog.scalar.ph1107

._crit_edge237.split.i:                           ; preds = %._crit_edge.i, %.preheader221.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.ph, i8 0, i64 %i.ix, i1 false)
  br i1 %brmerge.i, label %._crit_edge246.split.i, label %.lr.ph240.i.preheader

.lr.ph240.i.preheader:                            ; preds = %._crit_edge237.split.i
  %i.qp = shl nsw i64 %i.pf, 1
  %i.qq = add nsw i64 %i.lw, %i.qp
  %i.qr = mul i64 %i.qq, %i.fv
  %scevgep1035 = getelementptr i8, ptr %scevgep1034, i64 %i.qr
  br label %iter.check1055

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph1107.prol.loopexit, %vec.epilog.scalar.ph1107, %vec.epilog.middle.block1116, %middle.block1103
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i64 %indvars.iv.next349.i, %wide.trip.count351.i
  br i1 %exitcond352.not.i, label %._crit_edge237.split.i, label %iter.check1105, !llvm.loop !119

vec.epilog.scalar.ph1107:                         ; preds = %vec.epilog.scalar.ph1107.prol.loopexit, %vec.epilog.scalar.ph1107
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i.3, %vec.epilog.scalar.ph1107 ], [ %indvars.iv343.i.unr, %vec.epilog.scalar.ph1107.prol.loopexit ] ; 6 uses
  %i.qs = getelementptr [2 x i8], ptr %i.qa, i64 %indvars.iv343.i
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !59
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv343.i
  store i16 %i.qt, ptr %i.qu, align 2, !tbaa !59
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.qv = getelementptr [2 x i8], ptr %i.qa, i64 %indvars.iv.next344.i
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !59
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv.next344.i
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !59
  %indvars.iv.next344.i.1 = add nuw nsw i64 %indvars.iv343.i, 2 ; 2 uses
  %i.qy = getelementptr [2 x i8], ptr %i.qa, i64 %indvars.iv.next344.i.1
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !59
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv.next344.i.1
  store i16 %i.qz, ptr %i.ra, align 2, !tbaa !59
  %indvars.iv.next344.i.2 = add nuw nsw i64 %indvars.iv343.i, 3 ; 2 uses
  %i.rb = getelementptr [2 x i8], ptr %i.qa, i64 %indvars.iv.next344.i.2
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !59
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv.next344.i.2
  store i16 %i.rc, ptr %i.rd, align 2, !tbaa !59
  %indvars.iv.next344.i.3 = add nuw nsw i64 %indvars.iv343.i, 4 ; 2 uses
  %exitcond347.not.i.3 = icmp eq i64 %indvars.iv.next344.i.3, %wide.trip.count346.i
  br i1 %exitcond347.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph1107, !llvm.loop !120

iter.check1055:                                   ; preds = %.lr.ph240.i.preheader, %._crit_edge241.i
  %indvar1032 = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvar.next1033, %._crit_edge241.i ] ; 2 uses
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next359.i, %._crit_edge241.i ] ; 3 uses
  %i.re = icmp eq i64 %indvars.iv358.i, 0
  %i.rf = select i1 %i.re, i16 %i.jb, i16 1       ; 3 uses
  %invariant.gep485.i = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv358.i ; 4 uses
  %i.rg = mul i64 %indvar1032, %33
  %i.rh = getelementptr i8, ptr %i.ml, i64 %i.rg
  %bound01038 = icmp ult ptr %i.ph, %i.rh
  %bound11039 = icmp ult ptr %invariant.gep485.i, %scevgep1035
  %found.conflict1040 = and i1 %bound01038, %bound11039
  br i1 %found.conflict1040, label %vec.epilog.scalar.ph1057, label %vector.ph1042

vector.ph1042:                                    ; preds = %iter.check1055
  %broadcast.splatinsert1044 = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat1045 = shufflevector <8 x i16> %broadcast.splatinsert1044, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.ph1042, %vector.body1046
  %index1047 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1052, %vector.body1046 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %index1047 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  %wide.load1048 = load <8 x i16>, ptr %i.ri, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %wide.load1049 = load <8 x i16>, ptr %i.rj, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %index1047 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %wide.load1050 = load <8 x i16>, ptr %i.rk, align 2, !tbaa !59, !alias.scope !190
  %wide.load1051 = load <8 x i16>, ptr %i.rl, align 2, !tbaa !59, !alias.scope !190
  %i.rm = mul <8 x i16> %wide.load1050, %broadcast.splat1045
  %i.rn = mul <8 x i16> %wide.load1051, %broadcast.splat1045
  %i.ro = add <8 x i16> %i.rm, %wide.load1048
  %i.rp = add <8 x i16> %i.rn, %wide.load1049
  store <8 x i16> %i.ro, ptr %i.ri, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  store <8 x i16> %i.rp, ptr %i.rj, align 2, !tbaa !59, !alias.scope !189, !noalias !190
  %index.next1052 = add nuw i64 %index1047, 16    ; 2 uses
  %i.rq = icmp eq i64 %index.next1052, %i.jr
  br i1 %i.rq, label %._crit_edge241.i, label %vector.body1046, !llvm.loop !124

vec.epilog.scalar.ph1057:                         ; preds = %iter.check1055, %vec.epilog.scalar.ph1057
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i.1, %vec.epilog.scalar.ph1057 ], [ 0, %iter.check1055 ] ; 4 uses
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %indvars.iv353.i ; 2 uses
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !59
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv353.i
  %i.rt = load i16, ptr %gep.i, align 2, !tbaa !59
  %i.ru = mul i16 %i.rt, %i.rf
  %i.rv = add i16 %i.ru, %i.rs
  store i16 %i.rv, ptr %i.rr, align 2, !tbaa !59
  %indvars.iv.next354.i = or disjoint i64 %indvars.iv353.i, 1 ; 2 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %indvars.iv.next354.i ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !59
  %gep.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep485.i, i64 %indvars.iv.next354.i
  %i.ry = load i16, ptr %gep.i.1, align 2, !tbaa !59
  %i.rz = mul i16 %i.ry, %i.rf
  %i.sa = add i16 %i.rz, %i.rx
  store i16 %i.sa, ptr %i.rw, align 2, !tbaa !59
  %indvars.iv.next354.i.1 = add nuw nsw i64 %indvars.iv353.i, 2 ; 2 uses
  %exitcond357.not.i.1 = icmp eq i64 %indvars.iv.next354.i.1, %i.jr
  br i1 %exitcond357.not.i.1, label %._crit_edge241.i, label %vec.epilog.scalar.ph1057, !llvm.loop !125

._crit_edge241.i:                                 ; preds = %vector.body1046, %vec.epilog.scalar.ph1057
  %indvars.iv.next359.i = add nuw nsw i64 %indvars.iv358.i, %i.jr ; 2 uses
  %i.sb = trunc nuw i64 %indvars.iv.next359.i to i32
  %.not643.i = icmp slt i32 %i.iy, %i.sb
  %indvar.next1033 = add i64 %indvar1032, 1
  br i1 %.not643.i, label %._crit_edge246.split.i, label %iter.check1055, !llvm.loop !126

._crit_edge246.split.i:                           ; preds = %._crit_edge241.i, %._crit_edge237.split.i
  br i1 %i.oo, label %bb.bk, label %.preheader219.i

.preheader219.i:                                  ; preds = %._crit_edge246.split.i
  br i1 %brmerge328.i, label %.loopexit218.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %.preheader219.i
  %i.sc = shl nsw i64 %i.pf, 1
  %i.sd = add nsw i64 %i.lr, %i.sc
  %i.se = mul i64 %i.sd, %i.fv                    ; 2 uses
  %i.sf = add i64 %i.hw, %i.se
  %i.sg = add i64 %i.lv, %i.se
  br label %iter.check1007

bb.bk:                                            ; preds = %._crit_edge246.split.i
  %i.sh = srem i32 %.sroa.speculated141.i, %i.gf
  %i.si = zext nneg i32 %i.sh to i64              ; 2 uses
  %i.sj = mul nsw i64 %i.si, %i.fv
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.sj ; 2 uses
  br i1 %brmerge328.i, label %.loopexit217.i, label %.lr.ph255.i.preheader

.lr.ph255.i.preheader:                            ; preds = %bb.bk
  %i.sl = shl nuw nsw i64 %i.si, 1                ; 2 uses
  %i.sm = add nsw i64 %i.lk, %i.sl
  %i.sn = mul i64 %i.sm, %i.fv
  %i.so = shl nsw i64 %i.pf, 1                    ; 2 uses
  %i.sp = sub nsw i64 %i.sl, %i.so
  %i.sq = mul i64 %i.sp, %i.fv
  %i.sr = add nsw i64 %i.lk, %i.so
  %i.ss = mul i64 %i.sr, %i.fv                    ; 4 uses
  %i.st = add i64 %i.hw, %i.ss
  %34 = add i64 %i.lq, %i.ss
  %35 = sub i64 %i.ss, %i.ou
  %diff.check942 = icmp ugt i64 %35, -16
  %.reass = add i64 %i.ss, %invariant.op1198
  %diff.check949 = icmp ugt i64 %.reass, -16
  %i.su = add i64 %i.sq, -1
  %diff.check951 = icmp ult i64 %i.su, 15
  %invariant.op = or i1 %diff.check949, %diff.check951
  %i.sv = sub i64 %i.sn, %i.ou
  %diff.check961 = icmp ugt i64 %i.sv, -16
  %invariant.op1197 = or i1 %diff.check959, %diff.check961
  br label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.lr.ph255.i.preheader, %._crit_edge256.i
  %indvar938 = phi i64 [ 0, %.lr.ph255.i.preheader ], [ %indvar.next939, %._crit_edge256.i ] ; 2 uses
  %indvars.iv374.i = phi i64 [ %i.iw, %.lr.ph255.i.preheader ], [ %indvars.iv.next375.i, %._crit_edge256.i ] ; 4 uses
  %i.sw = trunc i64 %indvars.iv374.i to i32       ; 3 uses
  %i.sx = add i32 %i.iy, %i.sw
  %.sroa.speculated134.i = call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.sx)
  %i.sy = sext i32 %.sroa.speculated134.i to i64  ; 2 uses
  %i.sz = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.sy ; 2 uses
  %i.ta = add i32 %.neg644.i, %i.sw
  %.sroa.speculated127.i = call i32 @llvm.smax.i32(i32 %i.ta, i32 0)
  %i.tb = zext nneg i32 %.sroa.speculated127.i to i64 ; 2 uses
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.tb ; 2 uses
  %i.td = sub i32 %i.sw, %i.dx
  %i.te = sext i32 %i.td to i64                   ; 2 uses
  %invariant.gep490.i = getelementptr [2 x i8], ptr %i.ph, i64 %i.te ; 2 uses
  %i.tf = mul i64 %indvar938, %i.ll               ; 2 uses
  %i.tg = add i64 %34, %i.tf                      ; 3 uses
  %i.th = shl nsw i64 %i.te, 1
  %i.ti = add i64 %i.st, %i.th                    ; 2 uses
  %i.tj = sub i64 %i.ti, %i.tg
  %diff.check943 = icmp ugt i64 %i.tj, -16
  %conflict.rdx944 = or i1 %diff.check942, %diff.check943
  %i.tk = shl nsw i64 %i.sy, 1
  %i.tl = add i64 %31, %i.tk                      ; 2 uses
  %i.tm = sub i64 %i.tl, %i.tg
  %diff.check945 = icmp ugt i64 %i.tm, -16
  %conflict.rdx946 = or i1 %conflict.rdx944, %diff.check945
  %i.tn = shl nuw nsw i64 %i.tb, 1
  %i.to = add i64 %31, %i.tn                      ; 2 uses
  %i.tp = sub i64 %i.to, %i.tg
  %diff.check947 = icmp ugt i64 %i.tp, -16
  %conflict.rdx948 = or i1 %conflict.rdx946, %diff.check947
  %conflict.rdx952.reass = or i1 %conflict.rdx948, %invariant.op
  %i.tq = add i64 %i.ow, %i.tf                    ; 3 uses
  %i.tr = sub i64 %i.ti, %i.tq
  %diff.check953 = icmp ugt i64 %i.tr, -16
  %conflict.rdx954 = or i1 %conflict.rdx952.reass, %diff.check953
  %i.ts = sub i64 %i.tl, %i.tq
  %diff.check955 = icmp ugt i64 %i.ts, -16
  %conflict.rdx956 = or i1 %conflict.rdx954, %diff.check955
  %i.tt = sub i64 %i.to, %i.tq
  %diff.check957 = icmp ugt i64 %i.tt, -16
  %conflict.rdx958 = or i1 %conflict.rdx956, %diff.check957
  %conflict.rdx962.reass = or i1 %conflict.rdx958, %invariant.op1197
  br i1 %conflict.rdx962.reass, label %scalar.ph940, label %vector.body965

vector.body965:                                   ; preds = %.lr.ph255.i, %vector.body965
  %index966 = phi i64 [ %index.next972, %vector.body965 ], [ 0, %.lr.ph255.i ] ; 5 uses
  %i.tu = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %index966
  %wide.load967 = load <8 x i16>, ptr %i.tu, align 2, !tbaa !59
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.sz, i64 %index966
  %wide.load968 = load <8 x i16>, ptr %i.tv, align 2, !tbaa !59
  %i.tw = add <8 x i16> %wide.load968, %wide.load967
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tc, i64 %index966
  %wide.load969 = load <8 x i16>, ptr %i.tx, align 2, !tbaa !59
  %i.ty = sub <8 x i16> %i.tw, %wide.load969      ; 2 uses
  %i.tz = add nuw nsw i64 %index966, %indvars.iv374.i ; 4 uses
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.tz
  store <8 x i16> %i.ty, ptr %i.ua, align 2, !tbaa !59
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.tz
  %wide.load970 = load <8 x i16>, ptr %i.ub, align 2, !tbaa !59
  %i.uc = add <8 x i16> %wide.load970, %i.ty
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %i.tz
  %wide.load971 = load <8 x i16>, ptr %i.ud, align 2, !tbaa !59
  %i.ue = sub <8 x i16> %i.uc, %wide.load971
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %i.tz
  store <8 x i16> %i.ue, ptr %i.uf, align 2, !tbaa !59
  %index.next972 = add nuw i64 %index966, 8       ; 2 uses
  %i.ug = icmp eq i64 %index.next972, %i.jr
  br i1 %i.ug, label %._crit_edge256.i, label %vector.body965, !llvm.loop !127

scalar.ph940:                                     ; preds = %.lr.ph255.i, %scalar.ph940
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %scalar.ph940 ], [ 0, %.lr.ph255.i ] ; 5 uses
  %gep491.i = getelementptr [2 x i8], ptr %invariant.gep490.i, i64 %indvars.iv369.i
  %i.uh = load i16, ptr %gep491.i, align 2, !tbaa !59
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.sz, i64 %indvars.iv369.i
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !59
  %i.uk = add i16 %i.uj, %i.uh
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.tc, i64 %indvars.iv369.i
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !59
  %i.un = sub i16 %i.uk, %i.um                    ; 2 uses
  %i.uo = add nuw nsw i64 %indvars.iv369.i, %indvars.iv374.i ; 4 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.uo
  store i16 %i.un, ptr %i.up, align 2, !tbaa !59
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.uo
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !59
  %i.us = add i16 %i.ur, %i.un
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %i.uo
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !59
  %i.uv = sub i16 %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %i.uo
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !59
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %i.jr
  br i1 %exitcond373.not.i, label %._crit_edge256.i, label %scalar.ph940, !llvm.loop !128

._crit_edge256.i:                                 ; preds = %vector.body965, %scalar.ph940
  %indvars.iv.next375.i = add nuw nsw i64 %indvars.iv374.i, %i.iw ; 2 uses
  %i.ux = icmp slt i64 %indvars.iv.next375.i, %i.fv
  %indvar.next939 = add i64 %indvar938, 1
  br i1 %i.ux, label %.lr.ph255.i, label %.loopexit218.i, !llvm.loop !129

iter.check1007:                                   ; preds = %.lr.ph249.i.preheader, %._crit_edge250.i
  %indvar984 = phi i64 [ 0, %.lr.ph249.i.preheader ], [ %indvar.next985, %._crit_edge250.i ] ; 2 uses
  %indvars.iv366.i = phi i64 [ %i.iw, %.lr.ph249.i.preheader ], [ %indvars.iv.next367.i, %._crit_edge250.i ] ; 3 uses
  %i.uy = trunc i64 %indvars.iv366.i to i32       ; 3 uses
  %i.uz = add i32 %i.iy, %i.uy
  %.sroa.speculated120.i = call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.uz)
  %i.va = sext i32 %.sroa.speculated120.i to i64  ; 2 uses
  %i.vb = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.va ; 3 uses
  %i.vc = add i32 %.neg644.i, %i.uy
  %.sroa.speculated113.i = call i32 @llvm.smax.i32(i32 %i.vc, i32 0)
  %i.vd = zext nneg i32 %.sroa.speculated113.i to i64 ; 2 uses
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.vd ; 3 uses
  %i.vf = sub i32 %i.uy, %i.dx
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %invariant.gep486.i = getelementptr [2 x i8], ptr %i.ph, i64 %i.vg ; 3 uses
  %invariant.gep488.i = getelementptr [2 x i8], ptr %i.ph, i64 %indvars.iv366.i ; 3 uses
  %i.vh = mul i64 %indvar984, %i.lu
  %i.vi = add i64 %i.sg, %i.vh                    ; 3 uses
  %i.vj = shl nsw i64 %i.vg, 1
  %i.vk = add i64 %i.sf, %i.vj
  %i.vl = sub i64 %i.vk, %i.vi
  %diff.check988 = icmp ugt i64 %i.vl, -32
  %i.vm = shl nsw i64 %i.va, 1
  %i.vn = add i64 %32, %i.vm
  %i.vo = sub i64 %i.vn, %i.vi
  %diff.check989 = icmp ugt i64 %i.vo, -32
  %conflict.rdx990 = or i1 %diff.check988, %diff.check989
  %i.vp = shl nuw nsw i64 %i.vd, 1
  %i.vq = add i64 %32, %i.vp
  %i.vr = sub i64 %i.vq, %i.vi
  %diff.check991 = icmp ugt i64 %i.vr, -32
  %conflict.rdx992 = or i1 %conflict.rdx990, %diff.check991
  br i1 %conflict.rdx992, label %vec.epilog.scalar.ph1009, label %vector.body996

vector.body996:                                   ; preds = %iter.check1007, %vector.body996
  %index997 = phi i64 [ %index.next1004, %vector.body996 ], [ 0, %iter.check1007 ] ; 5 uses
  %i.vs = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %index997 ; 2 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 16
  %wide.load998 = load <8 x i16>, ptr %i.vs, align 2, !tbaa !59
  %wide.load999 = load <8 x i16>, ptr %i.vt, align 2, !tbaa !59
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %index997 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %wide.load1000 = load <8 x i16>, ptr %i.vu, align 2, !tbaa !59
  %wide.load1001 = load <8 x i16>, ptr %i.vv, align 2, !tbaa !59
  %i.vw = add <8 x i16> %wide.load1000, %wide.load998
  %i.vx = add <8 x i16> %wide.load1001, %wide.load999
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %index997 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %wide.load1002 = load <8 x i16>, ptr %i.vy, align 2, !tbaa !59
  %wide.load1003 = load <8 x i16>, ptr %i.vz, align 2, !tbaa !59
  %i.wa = sub <8 x i16> %i.vw, %wide.load1002
  %i.wb = sub <8 x i16> %i.vx, %wide.load1003
  %i.wc = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %index997 ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 16
  store <8 x i16> %i.wa, ptr %i.wc, align 2, !tbaa !59
  store <8 x i16> %i.wb, ptr %i.wd, align 2, !tbaa !59
  %index.next1004 = add nuw i64 %index997, 16     ; 2 uses
  %i.we = icmp eq i64 %index.next1004, %i.jr
  br i1 %i.we, label %._crit_edge250.i, label %vector.body996, !llvm.loop !130

vec.epilog.scalar.ph1009:                         ; preds = %iter.check1007, %vec.epilog.scalar.ph1009
  %indvars.iv361.i = phi i64 [ %indvars.iv.next362.i.1, %vec.epilog.scalar.ph1009 ], [ 0, %iter.check1007 ] ; 6 uses
  %gep487.i = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv361.i
  %i.wf = load i16, ptr %gep487.i, align 2, !tbaa !59
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %indvars.iv361.i
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !59
  %i.wi = add i16 %i.wh, %i.wf
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv361.i
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !59
  %i.wl = sub i16 %i.wi, %i.wk
  %gep489.i = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv361.i
  store i16 %i.wl, ptr %gep489.i, align 2, !tbaa !59
  %indvars.iv.next362.i = or disjoint i64 %indvars.iv361.i, 1 ; 4 uses
  %gep487.i.1 = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv.next362.i
  %i.wm = load i16, ptr %gep487.i.1, align 2, !tbaa !59
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %indvars.iv.next362.i
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !59
  %i.wp = add i16 %i.wo, %i.wm
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next362.i
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !59
  %i.ws = sub i16 %i.wp, %i.wr
  %gep489.i.1 = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv.next362.i
  store i16 %i.ws, ptr %gep489.i.1, align 2, !tbaa !59
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2 ; 2 uses
  %exitcond365.not.i.1 = icmp eq i64 %indvars.iv.next362.i.1, %i.jr
  br i1 %exitcond365.not.i.1, label %._crit_edge250.i, label %vec.epilog.scalar.ph1009, !llvm.loop !131

._crit_edge250.i:                                 ; preds = %vector.body996, %vec.epilog.scalar.ph1009
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, %i.iw ; 2 uses
  %i.wt = icmp slt i64 %indvars.iv.next367.i, %i.fv
  %indvar.next985 = add i64 %indvar984, 1
  br i1 %i.wt, label %iter.check1007, label %.loopexit218.i, !llvm.loop !132

.loopexit218.i:                                   ; preds = %._crit_edge250.i, %._crit_edge256.i, %.preheader219.i, %bb.bj
  br i1 %brmerge499.i, label %.loopexit217.i, label %iter.check897

iter.check897:                                    ; preds = %.loopexit218.i
  %i.wu = icmp eq i64 %indvars.iv382.i, 0
  %i.wv = select i1 %i.wu, i16 %i.jb, i16 1       ; 5 uses
  br i1 %min.iters.check877, label %vec.epilog.scalar.ph899.preheader, label %vector.memcheck878

vector.memcheck878:                               ; preds = %iter.check897
  %i.ww = shl nsw i64 %i.pf, 1
  %i.wx = add nsw i64 %i.lk, %i.ww
  %i.wy = mul i64 %i.wx, %i.fv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.wy
  %bound0879 = icmp ult ptr %i.oj, %gep
  %bound1880 = icmp ult ptr %i.ph, %scevgep875
  %found.conflict881 = and i1 %bound0879, %bound1880
  br i1 %found.conflict881, label %vec.epilog.scalar.ph899.preheader, label %vector.main.loop.iter.check882

vector.main.loop.iter.check882:                   ; preds = %vector.memcheck878
  br i1 %min.iters.check883, label %vec.epilog.ph901, label %vector.ph884

vector.ph884:                                     ; preds = %vector.main.loop.iter.check882
  %broadcast.splatinsert886 = insertelement <8 x i16> poison, i16 %i.wv, i64 0
  %broadcast.splat887 = shufflevector <8 x i16> %broadcast.splatinsert886, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body888

vector.body888:                                   ; preds = %vector.ph884, %vector.body888
  %index889 = phi i64 [ 0, %vector.ph884 ], [ %index.next894, %vector.body888 ] ; 3 uses
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %index889 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %wide.load890 = load <8 x i16>, ptr %i.wz, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load891 = load <8 x i16>, ptr %i.xa, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %index889 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %wide.load892 = load <8 x i16>, ptr %i.xb, align 2, !tbaa !59, !alias.scope !192
  %wide.load893 = load <8 x i16>, ptr %i.xc, align 2, !tbaa !59, !alias.scope !192
  %i.xd = mul <8 x i16> %wide.load892, %broadcast.splat887
  %i.xe = mul <8 x i16> %wide.load893, %broadcast.splat887
  %i.xf = add <8 x i16> %i.xd, %wide.load890
  %i.xg = add <8 x i16> %i.xe, %wide.load891
  store <8 x i16> %i.xf, ptr %i.wz, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  store <8 x i16> %i.xg, ptr %i.xa, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next894 = add nuw i64 %index889, 16      ; 2 uses
  %i.xh = icmp eq i64 %index.next894, %n.vec885
  br i1 %i.xh, label %middle.block895, label %vector.body888, !llvm.loop !136

middle.block895:                                  ; preds = %vector.body888
  br i1 %cmp.n896, label %.loopexit217.i, label %vec.epilog.iter.check898

vec.epilog.iter.check898:                         ; preds = %middle.block895
  br i1 %min.epilog.iters.check900, label %vec.epilog.scalar.ph899.preheader, label %vec.epilog.ph901, !prof !63

vec.epilog.ph901:                                 ; preds = %vector.main.loop.iter.check882, %vec.epilog.iter.check898
  %vec.epilog.resume.val902 = phi i64 [ %n.vec885, %vec.epilog.iter.check898 ], [ 0, %vector.main.loop.iter.check882 ]
  %broadcast.splatinsert904 = insertelement <4 x i16> poison, i16 %i.wv, i64 0
  %broadcast.splat905 = shufflevector <4 x i16> %broadcast.splatinsert904, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body906

vec.epilog.vector.body906:                        ; preds = %vec.epilog.vector.body906, %vec.epilog.ph901
  %index907 = phi i64 [ %vec.epilog.resume.val902, %vec.epilog.ph901 ], [ %index.next910, %vec.epilog.vector.body906 ] ; 3 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %index907 ; 2 uses
  %wide.load908 = load <4 x i16>, ptr %i.xi, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %index907
  %wide.load909 = load <4 x i16>, ptr %i.xj, align 2, !tbaa !59, !alias.scope !192
  %i.xk = mul <4 x i16> %wide.load909, %broadcast.splat905
  %i.xl = add <4 x i16> %i.xk, %wide.load908
  store <4 x i16> %i.xl, ptr %i.xi, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next910 = add nuw i64 %index907, 4       ; 2 uses
  %i.xm = icmp eq i64 %index.next910, %n.vec903
  br i1 %i.xm, label %vec.epilog.middle.block911, label %vec.epilog.vector.body906, !llvm.loop !137

vec.epilog.middle.block911:                       ; preds = %vec.epilog.vector.body906
  br i1 %cmp.n912, label %.loopexit217.i, label %vec.epilog.scalar.ph899.preheader

vec.epilog.scalar.ph899.preheader:                ; preds = %iter.check897, %vector.memcheck878, %vec.epilog.iter.check898, %vec.epilog.middle.block911
  %indvars.iv377.i.ph = phi i64 [ 0, %iter.check897 ], [ 0, %vector.memcheck878 ], [ %n.vec885, %vec.epilog.iter.check898 ], [ %n.vec903, %vec.epilog.middle.block911 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv377.i.ph, 1
  br i1 %lcmp.mod1182.not, label %vec.epilog.scalar.ph899.prol.loopexit, label %vec.epilog.scalar.ph899.prol

vec.epilog.scalar.ph899.prol:                     ; preds = %vec.epilog.scalar.ph899.preheader
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %indvars.iv377.i.ph ; 2 uses
  %i.xo = load i16, ptr %i.xn, align 8, !tbaa !59
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %indvars.iv377.i.ph
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !59
  %i.xr = mul i16 %i.xq, %i.wv
  %i.xs = add i16 %i.xr, %i.xo
  store i16 %i.xs, ptr %i.xn, align 8, !tbaa !59
  %indvars.iv.next378.i.prol = or disjoint i64 %indvars.iv377.i.ph, 1
  br label %vec.epilog.scalar.ph899.prol.loopexit

vec.epilog.scalar.ph899.prol.loopexit:            ; preds = %vec.epilog.scalar.ph899.prol, %vec.epilog.scalar.ph899.preheader
  %indvars.iv377.i.unr = phi i64 [ %indvars.iv377.i.ph, %vec.epilog.scalar.ph899.preheader ], [ %indvars.iv.next378.i.prol, %vec.epilog.scalar.ph899.prol ]
  %i.xt = icmp eq i64 %.pre-phi.i, %.neg
  br i1 %i.xt, label %.loopexit217.i, label %vec.epilog.scalar.ph899

vec.epilog.scalar.ph899:                          ; preds = %vec.epilog.scalar.ph899.prol.loopexit, %vec.epilog.scalar.ph899
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i.1, %vec.epilog.scalar.ph899 ], [ %indvars.iv377.i.unr, %vec.epilog.scalar.ph899.prol.loopexit ] ; 4 uses
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %indvars.iv377.i ; 2 uses
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !59
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %indvars.iv377.i
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !59
  %i.xy = mul i16 %i.xx, %i.wv
  %i.xz = add i16 %i.xy, %i.xv
  store i16 %i.xz, ptr %i.xu, align 2, !tbaa !59
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %indvars.iv.next378.i ; 2 uses
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !59
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %indvars.iv.next378.i
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !59
  %i.ye = mul i16 %i.yd, %i.wv
  %i.yf = add i16 %i.ye, %i.yb
  store i16 %i.yf, ptr %i.ya, align 2, !tbaa !59
  %indvars.iv.next378.i.1 = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %exitcond381.not.i.1 = icmp eq i64 %indvars.iv.next378.i.1, %.pre-phi.i
  br i1 %exitcond381.not.i.1, label %.loopexit217.i, label %vec.epilog.scalar.ph899, !llvm.loop !138

.loopexit217.i:                                   ; preds = %vec.epilog.scalar.ph899.prol.loopexit, %vec.epilog.scalar.ph899, %middle.block895, %vec.epilog.middle.block911, %.loopexit218.i, %bb.bk
  %indvars.iv.next383.i = add nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next383.i to i32
  %exitcond387.not.i = icmp eq i32 %indvars.iv385.i, %lftr.wideiv.i
  %indvar.next1083 = add i64 %indvar1082, 1
  br i1 %exitcond387.not.i, label %.preheader226.i, label %bb.bj, !llvm.loop !139

.loopexit227.i:                                   ; preds = %.lr.ph268.preheader.i, %.preheader226.i, %bb.bh
  %i.yg = getelementptr inbounds [2 x i8], ptr %i.oa, i64 %i.io
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.yh, i8 0, i64 %i.jf, i1 false)
  %i.yi = getelementptr inbounds [2 x i8], ptr %i.oa, i64 %i.jh
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.yj, i8 0, i64 %i.jf, i1 false)
  %i.yk = getelementptr inbounds i8, ptr %i.ob, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.yk, i8 0, i64 16, i1 false)
  %i.yl = getelementptr inbounds [2 x i8], ptr %i.ob, i64 %i.ji
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.yl, i8 0, i64 16, i1 false)
  br i1 %.not639280.i, label %._crit_edge284.i, label %.lr.ph283.i.preheader

end_hunk_0
begin_hunk_1_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %index844
  %wide.load857 = load <4 x i16>, ptr %i.ahi, align 2, !tbaa !59, !alias.scope !203
  %i.ahj = sext <4 x i16> %wide.load857 to <4 x i32>
  %i.ahk = getelementptr inbounds [2 x i8], ptr %i.abx, i64 %i.afv
  %wide.load858 = load <4 x i16>, ptr %i.ahk, align 2, !tbaa !59, !alias.scope !204
  %i.ahl = sext <4 x i16> %wide.load858 to <4 x i32>
  %i.ahm = add nsw <4 x i32> %broadcast.splat834, %i.ahl
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %i.afz
  %wide.load859 = load <4 x i16>, ptr %i.ahn, align 2, !tbaa !59, !alias.scope !205
  %i.aho = sext <4 x i16> %wide.load859 to <4 x i32>
  %i.ahp = add nsw <4 x i32> %broadcast.splat834, %i.aho
  %i.ahq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat842, <4 x i32> %i.ahp)
  %i.ahr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahq, <4 x i32> %i.ahm)
  %i.ahs = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahr, <4 x i32> %i.ahj)
  %i.aht = sub <4 x i32> %i.afs, %broadcast.splat842
  %i.ahu = add <4 x i32> %i.ahs, %i.aht           ; 3 uses
  %i.ahv = trunc <4 x i32> %i.agh to <4 x i16>
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %index844
  store <4 x i16> %i.ahv, ptr %i.ahw, align 2, !tbaa !59, !alias.scope !206, !noalias !207
  %i.ahx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agh, <4 x i32> %vec.phi) ; 2 uses
  %i.ahy = trunc <4 x i32> %i.agu to <4 x i16>
  %i.ahz = getelementptr [2 x i8], ptr %invariant.gep492.i, i64 %index844
  store <4 x i16> %i.ahy, ptr %i.ahz, align 2, !tbaa !59, !alias.scope !208, !noalias !209
  %i.aia = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agu, <4 x i32> %vec.phi845) ; 2 uses
  %i.aib = trunc <4 x i32> %i.ahh to <4 x i16>
  %i.aic = getelementptr [2 x i8], ptr %invariant.gep494.i, i64 %index844
  store <4 x i16> %i.aib, ptr %i.aic, align 2, !tbaa !59, !alias.scope !210, !noalias !211
  %i.aid = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahh, <4 x i32> %vec.phi846) ; 2 uses
  %i.aie = trunc <4 x i32> %i.ahu to <4 x i16>
  %i.aif = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %index844
  store <4 x i16> %i.aie, ptr %i.aif, align 2, !tbaa !59, !alias.scope !212, !noalias !213
  %i.aig = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahu, <4 x i32> %vec.phi847) ; 2 uses
  %i.aih = getelementptr inbounds nuw [2 x i8], ptr %i.aci, i64 %index844 ; 2 uses
  %wide.load860 = load <4 x i16>, ptr %i.aih, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %i.aii = sext <4 x i16> %wide.load860 to <4 x i32>
  %i.aij = add <4 x i32> %i.agu, %i.agh
  %i.aik = add <4 x i32> %i.aij, %i.ahh
  %i.ail = add <4 x i32> %i.aik, %i.ahu
  %i.aim = add <4 x i32> %i.ail, %i.aii
  %i.ain = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aim, <4 x i32> splat (i32 -32768))
  %i.aio = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ain, <4 x i32> splat (i32 32767))
  %i.aip = trunc nsw <4 x i32> %i.aio to <4 x i16>
  store <4 x i16> %i.aip, ptr %i.aih, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %index.next861 = add nuw i64 %index844, 4       ; 2 uses
  %i.aiq = icmp eq i64 %index.next861, %i.jr
  br i1 %i.aiq, label %middle.block862, label %vector.body843, !llvm.loop !159

middle.block862:                                  ; preds = %vector.body843
  %i.air = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ahx)
  %i.ais = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aia)
  %i.ait = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aid)
  %i.aiu = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aig)
  br label %._crit_edge276.loopexit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 12 uses
  %.0186272.i = phi i32 [ %.sroa.speculated86.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0187271.i = phi i32 [ %.sroa.speculated68.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0188270.i = phi i32 [ %.sroa.speculated50.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0189269.i = phi i32 [ %.sroa.speculated32.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %i.ach, i64 %indvars.iv391.i
  %i.aiw = load i16, ptr %i.aiv, align 2, !tbaa !59
  %i.aix = sext i16 %i.aiw to i32                 ; 4 uses
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr %i.abr, i64 %indvars.iv391.i
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !59
  %i.aja = sext i16 %i.aiz to i32
  %i.ajb = add nsw i64 %indvars.iv391.i, -1       ; 4 uses
  %i.ajc = getelementptr inbounds [2 x i8], ptr %i.abr, i64 %i.ajb
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !59
  %i.aje = sext i16 %i.ajd to i32
  %i.ajf = add nsw i32 %i.em, %i.aje
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 6 uses
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.abr, i64 %indvars.iv.next392.i
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !59
  %i.aji = sext i16 %i.ajh to i32
  %i.ajj = add nsw i32 %i.em, %i.aji
  %i.ajk = call i32 @llvm.smin.i32(i32 %i.abb, i32 %i.ajj)
  %i.ajl = call i32 @llvm.smin.i32(i32 %i.ajk, i32 %i.ajf)
  %.sroa.speculated78.i = call i32 @llvm.smin.i32(i32 %i.ajl, i32 %i.aja)
  %i.ajm = sub i32 %i.aix, %i.abb
  %i.ajn = add i32 %.sroa.speculated78.i, %i.ajm  ; 3 uses
  %i.ajo = getelementptr inbounds nuw [2 x i8], ptr %i.abu, i64 %indvars.iv391.i
  %i.ajp = load i16, ptr %i.ajo, align 2, !tbaa !59
  %i.ajq = sext i16 %i.ajp to i32
  %i.ajr = getelementptr inbounds [2 x i8], ptr %i.abu, i64 %i.ajb
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !59
  %i.ajt = sext i16 %i.ajs to i32
  %i.aju = add nsw i32 %i.em, %i.ajt
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %i.abu, i64 %indvars.iv.next392.i
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !59
  %i.ajx = sext i16 %i.ajw to i32
  %i.ajy = add nsw i32 %i.em, %i.ajx
  %i.ajz = call i32 @llvm.smin.i32(i32 %i.abg, i32 %i.ajy)
  %i.aka = call i32 @llvm.smin.i32(i32 %i.ajz, i32 %i.aju)
  %.sroa.speculated60.i = call i32 @llvm.smin.i32(i32 %i.aka, i32 %i.ajq)
  %i.akb = sub i32 %i.aix, %i.abg
  %i.akc = add i32 %.sroa.speculated60.i, %i.akb  ; 3 uses
  %i.akd = getelementptr inbounds nuw [2 x i8], ptr %i.abv, i64 %indvars.iv391.i
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !59
  %i.akf = sext i16 %i.ake to i32
  %i.akg = getelementptr inbounds [2 x i8], ptr %i.abv, i64 %i.ajb
  %i.akh = load i16, ptr %i.akg, align 2, !tbaa !59
  %i.aki = sext i16 %i.akh to i32
  %i.akj = add nsw i32 %i.em, %i.aki
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr %i.abv, i64 %indvars.iv.next392.i
  %i.akl = load i16, ptr %i.akk, align 2, !tbaa !59
  %i.akm = sext i16 %i.akl to i32
  %i.akn = add nsw i32 %i.em, %i.akm
  %i.ako = call i32 @llvm.smin.i32(i32 %i.abl, i32 %i.akn)
  %i.akp = call i32 @llvm.smin.i32(i32 %i.ako, i32 %i.akj)
  %.sroa.speculated42.i = call i32 @llvm.smin.i32(i32 %i.akp, i32 %i.akf)
  %i.akq = sub i32 %i.aix, %i.abl
  %i.akr = add i32 %.sroa.speculated42.i, %i.akq  ; 3 uses
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %indvars.iv391.i
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !59
  %i.aku = sext i16 %i.akt to i32
  %i.akv = getelementptr inbounds [2 x i8], ptr %i.abx, i64 %i.ajb
  %i.akw = load i16, ptr %i.akv, align 2, !tbaa !59
  %i.akx = sext i16 %i.akw to i32
  %i.aky = add nsw i32 %i.em, %i.akx
  %i.akz = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %indvars.iv.next392.i
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !59
  %i.alb = sext i16 %i.ala to i32
  %i.alc = add nsw i32 %i.em, %i.alb
  %i.ald = call i32 @llvm.smin.i32(i32 %i.abp, i32 %i.alc)
  %i.ale = call i32 @llvm.smin.i32(i32 %i.ald, i32 %i.aky)
  %.sroa.speculated25.i = call i32 @llvm.smin.i32(i32 %i.ale, i32 %i.aku)
  %i.alf = sub i32 %i.aix, %i.abp
  %i.alg = add i32 %.sroa.speculated25.i, %i.alf  ; 3 uses
  %i.alh = trunc i32 %i.ajn to i16
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %indvars.iv391.i
  store i16 %i.alh, ptr %i.ali, align 2, !tbaa !59
  %.sroa.speculated86.i = call i32 @llvm.smin.i32(i32 %i.ajn, i32 %.0186272.i) ; 2 uses
  %i.alj = trunc i32 %i.akc to i16
  %gep493.i = getelementptr [2 x i8], ptr %invariant.gep492.i, i64 %indvars.iv391.i
  store i16 %i.alj, ptr %gep493.i, align 2, !tbaa !59
  %.sroa.speculated68.i = call i32 @llvm.smin.i32(i32 %i.akc, i32 %.0187271.i) ; 2 uses
  %i.alk = trunc i32 %i.akr to i16
  %gep495.i = getelementptr [2 x i8], ptr %invariant.gep494.i, i64 %indvars.iv391.i
  store i16 %i.alk, ptr %gep495.i, align 2, !tbaa !59
  %.sroa.speculated50.i = call i32 @llvm.smin.i32(i32 %i.akr, i32 %.0188270.i) ; 2 uses
  %i.all = trunc i32 %i.alg to i16
  %gep497.i = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %indvars.iv391.i
  store i16 %i.all, ptr %gep497.i, align 2, !tbaa !59
  %.sroa.speculated32.i = call i32 @llvm.smin.i32(i32 %i.alg, i32 %.0189269.i) ; 2 uses
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.aci, i64 %indvars.iv391.i ; 2 uses
  %i.aln = load i16, ptr %i.alm, align 2, !tbaa !59
  %i.alo = sext i16 %i.aln to i32
  %i.alp = add i32 %i.akc, %i.ajn
  %i.alq = add i32 %i.alp, %i.akr
  %i.alr = add i32 %i.alq, %i.alg
  %i.als = add i32 %i.alr, %i.alo
  %i.alt = call i32 @llvm.smax.i32(i32 %i.als, i32 -32768)
  %i.alu = call i32 @llvm.smin.i32(i32 %i.alt, i32 32767)
  %i.alv = trunc nsw i32 %i.alu to i16
  store i16 %i.alv, ptr %i.alm, align 2, !tbaa !59
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next392.i, %i.jr
  br i1 %exitcond395.not.i, label %._crit_edge276.loopexit.i, label %scalar.ph, !llvm.loop !160

._crit_edge276.loopexit.i:                        ; preds = %scalar.ph, %middle.block862
  %.sroa.speculated86.i.lcssa = phi i32 [ %i.air, %middle.block862 ], [ %.sroa.speculated86.i, %scalar.ph ]
  %.sroa.speculated68.i.lcssa = phi i32 [ %i.ais, %middle.block862 ], [ %.sroa.speculated68.i, %scalar.ph ]
  %.sroa.speculated50.i.lcssa = phi i32 [ %i.ait, %middle.block862 ], [ %.sroa.speculated50.i, %scalar.ph ]
  %.sroa.speculated32.i.lcssa = phi i32 [ %i.aiu, %middle.block862 ], [ %.sroa.speculated32.i, %scalar.ph ]
  %i.alw = trunc i32 %.sroa.speculated86.i.lcssa to i16
  %i.alx = trunc i32 %.sroa.speculated68.i.lcssa to i16
  %i.aly = trunc i32 %.sroa.speculated50.i.lcssa to i16
  %i.alz = trunc i32 %.sroa.speculated32.i.lcssa to i16
  br label %._crit_edge276.i

._crit_edge276.i:                                 ; preds = %._crit_edge276.loopexit.i, %.lr.ph283.i
  %.0189.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.alz, %._crit_edge276.loopexit.i ]
  %.0188.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.aly, %._crit_edge276.loopexit.i ]
  %.0187.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.alx, %._crit_edge276.loopexit.i ]
  %.0186.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.alw, %._crit_edge276.loopexit.i ]
  %i.ama = getelementptr inbounds [2 x i8], ptr %i.ob, i64 %i.aav ; 3 uses
  store i16 %.0186.lcssa.i, ptr %i.ama, align 2, !tbaa !59
  %i.amb = getelementptr i8, ptr %i.ama, i64 2
  store i16 %.0187.lcssa.i, ptr %i.amb, align 2, !tbaa !59
  %i.amc = getelementptr inbounds [2 x i8], ptr %i.ob, i64 %i.abh
  store i16 %.0188.lcssa.i, ptr %i.amc, align 2, !tbaa !59
  %i.amd = getelementptr i8, ptr %i.ama, i64 6
  store i16 %.0189.lcssa.i, ptr %i.amd, align 2, !tbaa !59
  %indvars.iv.next397.i = add nsw i64 %indvars.iv396.i, %i.na ; 2 uses
  %i.ame = trunc nsw i64 %indvars.iv.next397.i to i32
  %.not639.i = icmp eq i32 %.0595.i, %i.ame
  %indvar.next = add i64 %indvar, 1
  br i1 %.not639.i, label %._crit_edge284.i, label %.lr.ph283.i, !llvm.loop !161

._crit_edge284.i:                                 ; preds = %._crit_edge276.i, %.loopexit227.i
  br i1 %i.mx, label %iter.check196, label %.loopexit223.i

iter.check196:                                    ; preds = %._crit_edge284.i
  br i1 %min.iters.check181, label %.lr.ph286.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check196
  %i.amf = add i64 %i.of, %i.od                   ; 2 uses
  %i.amg = sub i64 %i.kp, %i.amf
  %diff.check = icmp ugt i64 %i.amg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check182
  %i.amh = sub i64 %i.amf, %30
  %diff.check183 = icmp ugt i64 %i.amh, -32
  %conflict.rdx184 = or i1 %conflict.rdx, %diff.check183
  br i1 %conflict.rdx184, label %.lr.ph286.i.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %vector.memcheck
  br i1 %min.iters.check186, label %vec.epilog.ph200, label %vector.body191

vector.body191:                                   ; preds = %vector.main.loop.iter.check185, %vector.body191
  %index192 = phi i64 [ %index.next193, %vector.body191 ], [ 0, %vector.main.loop.iter.check185 ] ; 4 uses
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %index192 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  store <8 x i16> %broadcast.splat190, ptr %i.ami, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat190, ptr %i.amj, align 2, !tbaa !59
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %index192 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  store <8 x i16> %broadcast.splat190, ptr %i.amk, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat190, ptr %i.aml, align 2, !tbaa !59
  %i.amm = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %index192 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.amm, align 2, !tbaa !59
  store <8 x i16> splat (i16 32767), ptr %i.amn, align 2, !tbaa !59
  %index.next193 = add nuw i64 %index192, 16      ; 2 uses
  %i.amo = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.amo, label %middle.block194, label %vector.body191, !llvm.loop !162

middle.block194:                                  ; preds = %vector.body191
  br i1 %cmp.n195, label %.lr.ph308.i.preheader, label %vec.epilog.iter.check197

vec.epilog.iter.check197:                         ; preds = %middle.block194
  br i1 %min.epilog.iters.check199, label %.lr.ph286.i.preheader, label %vec.epilog.ph200, !prof !63

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check197
  %vec.epilog.resume.val201 = phi i64 [ %n.vec188, %vec.epilog.iter.check197 ], [ 0, %vector.main.loop.iter.check185 ]
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph200
  %index206 = phi i64 [ %vec.epilog.resume.val201, %vec.epilog.ph200 ], [ %index.next207, %vec.epilog.vector.body205 ] ; 4 uses
  %i.amp = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %index206
  store <4 x i16> %broadcast.splat204, ptr %i.amp, align 2, !tbaa !59
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %index206
  store <4 x i16> %broadcast.splat204, ptr %i.amq, align 2, !tbaa !59
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %index206
  store <4 x i16> splat (i16 32767), ptr %i.amr, align 2, !tbaa !59
  %index.next207 = add nuw i64 %index206, 4       ; 2 uses
  %i.ams = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.ams, label %vec.epilog.middle.block208, label %vec.epilog.vector.body205, !llvm.loop !163

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body205
  br i1 %cmp.n209, label %.lr.ph308.i.preheader, label %.lr.ph286.i.preheader

.lr.ph286.i.preheader:                            ; preds = %iter.check196, %vector.memcheck, %vec.epilog.iter.check197, %vec.epilog.middle.block208
  %indvars.iv399.i.ph = phi i64 [ 0, %iter.check196 ], [ 0, %vector.memcheck ], [ %n.vec188, %vec.epilog.iter.check197 ], [ %n.vec202, %vec.epilog.middle.block208 ] ; 6 uses
  br i1 %lcmp.mod1185.not, label %.lr.ph286.i.prol.loopexit, label %.lr.ph286.i.prol

.lr.ph286.i.prol:                                 ; preds = %.lr.ph286.i.preheader
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv399.i.ph
  store i16 %i.jo, ptr %i.amt, align 2, !tbaa !59
  %i.amu = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv399.i.ph
  store i16 %i.jo, ptr %i.amu, align 2, !tbaa !59
  %i.amv = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv399.i.ph
  store i16 32767, ptr %i.amv, align 2, !tbaa !59
  %indvars.iv.next400.i.prol = or disjoint i64 %indvars.iv399.i.ph, 1
  br label %.lr.ph286.i.prol.loopexit

.lr.ph286.i.prol.loopexit:                        ; preds = %.lr.ph286.i.prol, %.lr.ph286.i.preheader
  %indvars.iv399.i.unr = phi i64 [ %indvars.iv399.i.ph, %.lr.ph286.i.preheader ], [ %indvars.iv.next400.i.prol, %.lr.ph286.i.prol ]
  %i.amw = icmp eq i64 %indvars.iv399.i.ph, %i.mr
  br i1 %i.amw, label %.lr.ph308.i.preheader, label %.lr.ph286.i

.lr.ph286.i:                                      ; preds = %.lr.ph286.i.prol.loopexit, %.lr.ph286.i
  %indvars.iv399.i = phi i64 [ %indvars.iv.next400.i.1, %.lr.ph286.i ], [ %indvars.iv399.i.unr, %.lr.ph286.i.prol.loopexit ] ; 5 uses
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv399.i
  store i16 %i.jo, ptr %i.amx, align 2, !tbaa !59
  %i.amy = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv399.i
  store i16 %i.jo, ptr %i.amy, align 2, !tbaa !59
  %i.amz = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv399.i
  store i16 32767, ptr %i.amz, align 2, !tbaa !59
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 3 uses
  %i.ana = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.next400.i
  store i16 %i.jo, ptr %i.ana, align 2, !tbaa !59
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv.next400.i
  store i16 %i.jo, ptr %i.anb, align 2, !tbaa !59
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv.next400.i
  store i16 32767, ptr %i.anc, align 2, !tbaa !59
  %indvars.iv.next400.i.1 = add nuw nsw i64 %indvars.iv399.i, 2 ; 2 uses
  %exitcond403.not.i.1 = icmp eq i64 %indvars.iv.next400.i.1, %wide.trip.count351.i
  br i1 %exitcond403.not.i.1, label %.lr.ph308.i.preheader, label %.lr.ph286.i, !llvm.loop !164

.lr.ph308.i.preheader:                            ; preds = %.lr.ph286.i.prol.loopexit, %.lr.ph286.i, %vec.epilog.middle.block208, %middle.block194
  br label %.lr.ph308.i

.lr.ph308.i:                                      ; preds = %.lr.ph308.i.preheader, %.loopexit.i
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %.loopexit.i ], [ %i.jv, %.lr.ph308.i.preheader ] ; 2 uses
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -1 ; 6 uses
  %i.and = mul nsw i64 %indvars.iv.next420.i, %i.iw ; 2 uses
  %i.ane = getelementptr inbounds [2 x i8], ptr %i.ok, i64 %i.and ; 9 uses
  br i1 %.not642.i, label %.preheader215.i, label %bb.bl

.preheader215.i:                                  ; preds = %.lr.ph308.i
  br i1 %i.jn, label %.lr.ph300.i, label %.thread.i

.thread.i:                                        ; preds = %.preheader215.i
  %i.anf = add nuw nsw i64 %indvars.iv.next420.i, %i.jw
  br label %bb.ca

bb.bl:                                            ; preds = %.lr.ph308.i
  %i.ang = shl nuw nsw i64 %indvars.iv.next420.i, 3 ; 2 uses
  %i.anh = mul nsw i64 %i.ang, %i.gc
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.ob, i64 %i.ang ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  %i.ank = load i16, ptr %i.anj, align 2, !tbaa !59
  %i.anl = sext i16 %i.ank to i32
  %i.anm = add nsw i32 %.sroa.speculated173.i, %i.anl ; 2 uses
  %i.ann = getelementptr inbounds [2 x i8], ptr %i.oa, i64 %i.anh ; 2 uses
  %i.ano = getelementptr inbounds [2 x i8], ptr %i.ann, i64 %i.in ; 4 uses
  %i.anp = getelementptr inbounds [2 x i8], ptr %i.ano, i64 %i.iw
  store i16 32767, ptr %i.anp, align 2, !tbaa !59
  %i.anq = getelementptr inbounds i8, ptr %i.ano, i64 -2
  store i16 32767, ptr %i.anq, align 2, !tbaa !59
  %i.anr = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.and
  br i1 %i.jn, label %.lr.ph292.i, label %.thread

.lr.ph292.i:                                      ; preds = %bb.bl, %.lr.ph292.i
  %indvars.iv404.i = phi i64 [ %indvars.iv.next405.i, %.lr.ph292.i ], [ 0, %bb.bl ] ; 6 uses
  %.0568290.i = phi i32 [ %spec.select648.i, %.lr.ph292.i ], [ -1, %bb.bl ]
  %.0569289.i = phi i32 [ %spec.select647.i, %.lr.ph292.i ], [ 32767, %bb.bl ] ; 2 uses
  %.0185287.i = phi i32 [ %.sroa.speculated12.i, %.lr.ph292.i ], [ 32767, %bb.bl ]
  %i.ans = getelementptr inbounds nuw [2 x i8], ptr %i.anr, i64 %indvars.iv404.i
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !59
  %i.anu = sext i16 %i.ant to i32
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.ano, i64 %indvars.iv404.i ; 2 uses
  %i.anw = load i16, ptr %i.anv, align 2, !tbaa !59
  %i.anx = sext i16 %i.anw to i32
  %i.any = getelementptr i8, ptr %i.anv, i64 -2
  %i.anz = load i16, ptr %i.any, align 2, !tbaa !59
  %i.aoa = sext i16 %i.anz to i32
  %i.aob = add nsw i32 %i.em, %i.aoa
  %indvars.iv.next405.i = add nuw nsw i64 %indvars.iv404.i, 1 ; 3 uses
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %i.ano, i64 %indvars.iv.next405.i
  %i.aod = load i16, ptr %i.aoc, align 2, !tbaa !59
  %i.aoe = sext i16 %i.aod to i32
  %i.aof = add nsw i32 %i.em, %i.aoe
  %i.aog = call i32 @llvm.smin.i32(i32 %i.anm, i32 %i.aof)
  %i.aoh = call i32 @llvm.smin.i32(i32 %i.aog, i32 %i.aob)
  %.sroa.speculated6.i = call i32 @llvm.smin.i32(i32 %i.aoh, i32 %i.anx)
  %i.aoi = sub i32 %i.anu, %i.anm
  %i.aoj = add i32 %.sroa.speculated6.i, %i.aoi   ; 3 uses
  %i.aok = trunc i32 %i.aoj to i16
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.ann, i64 %indvars.iv404.i
  store i16 %i.aok, ptr %i.aol, align 2, !tbaa !59
  %.sroa.speculated12.i = call i32 @llvm.smin.i32(i32 %i.aoj, i32 %.0185287.i) ; 2 uses
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %indvars.iv404.i ; 2 uses
  %i.aon = load i16, ptr %i.aom, align 2, !tbaa !59
  %i.aoo = sext i16 %i.aon to i32
  %i.aop = add nsw i32 %i.aoj, %i.aoo
  %i.aoq = call i32 @llvm.smax.i32(i32 %i.aop, i32 -32768)
  %i.aor = call i32 @llvm.smin.i32(i32 %i.aoq, i32 32767) ; 3 uses
  %i.aos = trunc nsw i32 %i.aor to i16
  store i16 %i.aos, ptr %i.aom, align 2, !tbaa !59
  %i.aot = icmp sgt i32 %.0569289.i, %i.aor
  %spec.select647.i = call i32 @llvm.smin.i32(i32 %.0569289.i, i32 %i.aor) ; 2 uses
  %i.aou = trunc nuw nsw i64 %indvars.iv404.i to i32
  %spec.select648.i = select i1 %i.aot, i32 %i.aou, i32 %.0568290.i ; 2 uses
  %exitcond408.not.i = icmp eq i64 %indvars.iv.next405.i, %i.jr
  br i1 %exitcond408.not.i, label %.loopexit216.thread474.i, label %.lr.ph292.i, !llvm.loop !165

.loopexit216.thread474.i:                         ; preds = %.lr.ph292.i
  %i.aov = trunc i32 %.sroa.speculated12.i to i16
  store i16 %i.aov, ptr %i.ani, align 2, !tbaa !59
  br label %.lr.ph305.i

.lr.ph300.i:                                      ; preds = %.preheader215.i, %.lr.ph300.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i.3, %.lr.ph300.i ], [ 0, %.preheader215.i ] ; 6 uses
  %.2299.i = phi i32 [ %spec.select650.i.3, %.lr.ph300.i ], [ -1, %.preheader215.i ]
  %.2571298.i = phi i32 [ %spec.select649.i.3, %.lr.ph300.i ], [ 32767, %.preheader215.i ] ; 2 uses
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %indvars.iv409.i
  %i.aox = load i16, ptr %i.aow, align 2, !tbaa !59
  %i.aoy = sext i16 %i.aox to i32                 ; 2 uses
  %i.aoz = icmp sgt i32 %.2571298.i, %i.aoy
  %spec.select649.i = call i32 @llvm.smin.i32(i32 %.2571298.i, i32 %i.aoy) ; 2 uses
  %i.apa = trunc nuw nsw i64 %indvars.iv409.i to i32
  %spec.select650.i = select i1 %i.aoz, i32 %i.apa, i32 %.2299.i
  %indvars.iv.next410.i = or disjoint i64 %indvars.iv409.i, 1 ; 2 uses
  %i.apb = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %indvars.iv.next410.i
  %i.apc = load i16, ptr %i.apb, align 2, !tbaa !59
  %i.apd = sext i16 %i.apc to i32                 ; 2 uses
  %i.ape = icmp sgt i32 %spec.select649.i, %i.apd
  %spec.select649.i.1 = call i32 @llvm.smin.i32(i32 %spec.select649.i, i32 %i.apd) ; 2 uses
  %i.apf = trunc nuw nsw i64 %indvars.iv.next410.i to i32
  %spec.select650.i.1 = select i1 %i.ape, i32 %i.apf, i32 %spec.select650.i
  %indvars.iv.next410.i.1 = or disjoint i64 %indvars.iv409.i, 2 ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %indvars.iv.next410.i.1
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !59
  %i.api = sext i16 %i.aph to i32                 ; 2 uses
  %i.apj = icmp sgt i32 %spec.select649.i.1, %i.api
  %spec.select649.i.2 = call i32 @llvm.smin.i32(i32 %spec.select649.i.1, i32 %i.api) ; 2 uses
  %i.apk = trunc nuw nsw i64 %indvars.iv.next410.i.1 to i32
  %spec.select650.i.2 = select i1 %i.apj, i32 %i.apk, i32 %spec.select650.i.1
  %indvars.iv.next410.i.2 = or disjoint i64 %indvars.iv409.i, 3 ; 2 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %indvars.iv.next410.i.2
end_hunk_1
