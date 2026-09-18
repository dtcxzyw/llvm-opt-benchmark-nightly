Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  ]

.body94:                                          ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.am:                                            ; preds = %.invoke173, %.invoke, %bb.bk, %bb.bh, %bb.be, %bb.bc, %bb.ba, %bb.az, %bb.aj, %bb.ai, %_ZNK2cv11_InputArray6getMatEi.exit100
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.invoke173:                                       ; preds = %bb.ak, %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo15censusTransformERKNS_3MatES3_iRS1_S4_i(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, i32 noundef %i.cu)
          to label %bb.ba unwind label %bb.am

.invoke:                                          ; preds = %bb.ak, %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.db = load i32, ptr %i.da, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo23symetricCensusTransformERKNS_3MatES3_iRS1_S4_i(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, i32 noundef %i.cu)
          to label %bb.ba unwind label %bb.am

bb.an:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #21
  invoke void @_ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, i32 noundef 4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ba

bb.ap:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.body107

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.df, align 8, !tbaa !175
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.dg, align 4, !tbaa !176
  store i32 16842752, ptr %19, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %11, ptr %i.dh, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.dj, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !56
  store ptr %18, ptr %i.di, align 8, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 262800 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !41
  %.sroa.2121.0.insert.ext = zext i32 %i.dl to i64 ; 2 uses
  %.sroa.2121.0.insert.shift = shl nuw i64 %.sroa.2121.0.insert.ext, 32
  %.sroa.0120.0.insert.insert = or disjoint i64 %.sroa.2121.0.insert.shift, %.sroa.2121.0.insert.ext
  invoke void @_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 %.sroa.0120.0.insert.insert, i64 -1, i32 noundef 4)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !175
  %i.dn = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.dn, align 4, !tbaa !176
  store i32 16842752, ptr %22, align 8, !tbaa !56
  %i.do = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %12, ptr %i.do, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.dq, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !56
  store ptr %21, ptr %i.dp, align 8, !tbaa !52
  %i.dr = load i32, ptr %i.dk, align 8, !tbaa !41
  %.sroa.2117.0.insert.ext = zext i32 %i.dr to i64 ; 2 uses
  %.sroa.2117.0.insert.shift = shl nuw i64 %.sroa.2117.0.insert.ext, 32
  %.sroa.0116.0.insert.insert = or disjoint i64 %.sroa.2117.0.insert.shift, %.sroa.2117.0.insert.ext
  invoke void @_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 %.sroa.0116.0.insert.insert, i64 -1, i32 noundef 4)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.ds = load i32, ptr %i.dk, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, i32 noundef 5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ba

bb.au:                                            ; preds = %bb.aq
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ay

bb.av:                                            ; preds = %bb.ar
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn47 = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %i.du, %bb.av ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.ax ], [ %i.dt, %bb.au ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body107

bb.az:                                            ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 262800
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo19starCensusTransformERKNS_3MatES3_iRS1_S4_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci)
          to label %bb.ba unwind label %bb.am

bb.ba:                                            ; preds = %.invoke173, %.invoke, %bb.ak, %bb.at, %bb.az, %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 262800 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !41
  invoke void @_ZN2cv6stereo8Matching28hammingDistanceBlockMatchingERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, ptr noundef nonnull align 8 dereferenceable(208) %i.cl, i32 noundef %i.ea)
          to label %bb.bb unwind label %bb.am

bb.bb:                                            ; preds = %bb.ba
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 262848 ; 4 uses
  %.val65 = load i32, ptr %11, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 263912
  %.val66 = load ptr, ptr %i.ec, align 8          ; 3 uses
  %i.ed = load i32, ptr %i.co, align 8, !tbaa !177 ; 6 uses
  %i.ee = load i32, ptr %i.cp, align 4, !tbaa !178 ; 26 uses
  %i.ef = add nsw i32 %i.ed, %i.ee
  %i.eg = load i32, ptr %i.dz, align 8, !tbaa !179 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 262808
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !180 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  %i.el = sub nsw i32 100, %i.ej
  %i.em = select i1 %i.ek, i32 %i.el, i32 90
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 262828
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !181
  %i.ep = call i32 @llvm.smax.i32(i32 %i.eo, i32 1) ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 262812
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !182 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  %i.et = select i1 %i.es, i32 %i.er, i32 2       ; 12 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 262816
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !183 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %i.ex = select i1 %i.ew, i32 %i.ev, i32 5
  %i.ey = add nuw nsw i32 %i.et, 1
  %.sroa.speculated173.i = call i32 @llvm.smax.i32(i32 %i.ex, i32 %i.ey) ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !54 ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !53 ; 4 uses
  %i.fd = sub nsw i32 0, %i.ef
  %.sroa.speculated165.i = call i32 @llvm.smax.i32(i32 %i.fd, i32 0) ; 3 uses
  %.sroa.speculated159.i = call i32 @llvm.smin.i32(i32 %i.ed, i32 0)
  %i.fe = add nsw i32 %i.fa, %.sroa.speculated159.i ; 3 uses
  %i.ff = sub i32 %i.fe, %.sroa.speculated165.i   ; 6 uses
  %i.fg = shl i32 %i.ed, 4                        ; 2 uses
  %i.fh = add i32 %i.fg, -16                      ; 3 uses
  %i.fi = sdiv i32 %i.eg, 2
  %i.fj = select i1 %i.eh, i32 %i.fi, i32 2       ; 10 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 262832
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !184
  %.not642.i = icmp eq i32 %i.fl, 1               ; 5 uses
  %i.fm = select i1 %.not642.i, i32 2, i32 1      ; 2 uses
  %.not634.i = icmp slt i32 %.sroa.speculated165.i, %i.fe
  br i1 %.not634.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fn = sitofp i32 %i.fh to double
  %i.fo = insertelement <4 x double> poison, double %i.fn, i64 0
  %i.fp = shufflevector <4 x double> %i.fo, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.fp, ptr %4, align 8, !tbaa !185, !alias.scope !186
  %i.fq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc105 unwind label %bb.am ; 0 uses

.noexc105:                                        ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.fr = and i32 %i.ee, 15
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc106 unwind label %bb.am

.noexc106:                                        ; preds = %bb.be
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_, ptr noundef nonnull @.str.21, i32 noundef 181) #22
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.noexc106
  unreachable

bb.bg:                                            ; preds = %.noexc106
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %bb.bg
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !26
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body107

bb.bh:                                            ; preds = %bb.bd
  %i.fz = add i32 %i.ee, 16                       ; 4 uses
  %i.ga = shl i32 %i.fz, 3                        ; 3 uses
  %i.gb = mul i32 %i.ff, %i.ee                    ; 7 uses
  %i.gc = sext i32 %i.gb to i64                   ; 21 uses
  %i.gd = select i1 %.not642.i, i32 %i.fc, i32 1
  %i.ge = sext i32 %i.gd to i64                   ; 6 uses
  %i.gf = mul nsw i64 %i.ge, %i.gc                ; 3 uses
  %i.gg = shl i32 %i.ff, 3                        ; 2 uses
  %i.gh = add i32 %i.gg, 16
  %i.gi = sext i32 %i.gh to i64                   ; 4 uses
  %i.gj = sext i32 %i.fz to i64                   ; 8 uses
  %i.gk = mul nsw i64 %i.gi, %i.gj                ; 3 uses
  %i.gl = shl nsw i32 %i.fj, 1                    ; 2 uses
  %i.gm = add i32 %i.gl, 2                        ; 3 uses
  %i.gn = add i64 %i.gk, %i.gi                    ; 2 uses
  %i.go = add nsw i32 %i.gl, 3
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 1
  %i.gr = mul nsw i64 %i.gq, %i.gc
  %i.gs = lshr i32 %.val65, 1
  %i.gt = and i32 %i.gs, 2032
  %i.gu = add nuw nsw i32 %i.gt, 16
  %i.gv = mul i32 %i.fa, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = sext i32 %i.fa to i64                   ; 7 uses
  %i.gy = add nsw i64 %i.gf, %i.gx
  %reass.add.i = add nsw i64 %i.gy, %i.gn
  %reass.mul.i = shl i64 %reass.add.i, 2
  %i.gz = add nsw i64 %i.gw, 1024
  %i.ha = add nsw i64 %i.gz, %i.gr
  %i.hb = add i64 %i.ha, %reass.mul.i             ; 2 uses
  %i.hc = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.eb)
          to label %.noexc109 unwind label %bb.am

.noexc109:                                        ; preds = %bb.bh
  br i1 %i.hc, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.noexc109
  %i.hd = load i32, ptr %i.eb, align 8, !tbaa !21 ; 3 uses
  %i.he = and i32 %i.hd, 16384
  %.not190.i = icmp eq i32 %i.he, 0
  br i1 %.not190.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 262860
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 262856
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !53
  %i.hj = mul nsw i32 %i.hi, %i.hg
  %i.hk = sext i32 %i.hj to i64
  %i.hl = lshr i32 %i.hd, 5
  %i.hm = and i32 %i.hl, 127
  %i.hn = add nuw nsw i32 %i.hm, 1
  %i.ho = shl i32 %i.hd, 2
  %i.hp = and i32 %i.ho, 124
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 1275511473185297, %i.hq
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = and i32 %i.hs, 15
  %i.hu = mul nuw nsw i32 %i.ht, %i.hn
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = mul nsw i64 %i.hk, %i.hv
  %i.hx = icmp ult i64 %i.hw, %i.hb
  br i1 %i.hx, label %bb.bk, label %.noexc110

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.noexc109
  %i.hy = trunc i64 %i.hb to i32
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.eb, i32 noundef 1, i32 noundef %i.hy, i32 noundef 0)
          to label %.noexc110 unwind label %bb.am

.noexc110:                                        ; preds = %bb.bk, %bb.bj
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 262872
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !57
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = add i64 %i.ib, 15
  %i.id = and i64 %i.ic, -16                      ; 12 uses
  %i.ie = inttoptr i64 %i.id to ptr               ; 14 uses
  %i.if = getelementptr [2 x i8], ptr %i.ie, i64 %i.gf ; 2 uses
  %i.ig = getelementptr [2 x i8], ptr %i.if, i64 %i.gf ; 3 uses
  %i.ih = sext i32 %i.gm to i64                   ; 5 uses
  %i.ii = mul nsw i64 %i.gc, %i.ih
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.ii ; 7 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.gc ; 3 uses
  %.idx.i = shl i64 %i.gn, 2                      ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx.i ; 7 uses
  %i.im = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.gx ; 8 uses
  %i.in = icmp slt i32 %i.gb, 1                   ; 3 uses
  br i1 %i.in, label %..preheader229_crit_edge.i, label %iter.check

..preheader229_crit_edge.i:                       ; preds = %.noexc110
  %.pre.i = zext i32 %i.gb to i64
  br label %.preheader229.i

iter.check:                                       ; preds = %.noexc110
  %i.io = trunc i32 %.sroa.speculated173.i to i16 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.gb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.gb, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check175 = icmp ult i32 %i.gb, 16
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.io, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ip, align 16, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.iq, align 16, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ir = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ir, label %.preheader229.i, label %vector.body, !llvm.loop !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert177 = insertelement <4 x i16> poison, i16 %i.io, i64 0
  %broadcast.splat178 = shufflevector <4 x i16> %broadcast.splatinsert177, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index179 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %index179
  store <4 x i16> %broadcast.splat178, ptr %i.is, align 8, !tbaa !59
  %index.next180 = add nuw i64 %index179, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next180, %wide.trip.count.i
  br i1 %i.it, label %.preheader229.i, label %vec.epilog.vector.body, !llvm.loop !110

.preheader229.i:                                  ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph, %..preheader229_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..preheader229_crit_edge.i ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ], [ %wide.trip.count.i, %vec.epilog.vector.body ], [ %wide.trip.count.i, %vector.body ] ; 12 uses
  %i.iu = sext i32 %i.ga to i64                   ; 6 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ik, i64 %i.iu ; 2 uses
  %i.iv = sub nsw i64 0, %i.iu                    ; 4 uses
  %i.iw = shl nsw i64 %i.gk, 1                    ; 3 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.iw ; 3 uses
  %i.iy = shl nsw i64 %i.gi, 1                    ; 2 uses
  %i.iz = add nsw i32 %i.fc, -1                   ; 2 uses
  %i.ja = add i32 %i.ff, -1                       ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.jd = sext i32 %i.ee to i64                   ; 18 uses
  %i.je = shl nsw i64 %i.jd, 1
  %i.jf = mul nsw i32 %i.fj, %i.ee                ; 4 uses
  %.not643242.i = icmp slt i32 %i.jf, 0
  %i.jg = icmp slt i32 %i.ee, 1                   ; 2 uses
  %i.jh = trunc i32 %i.fj to i16
  %i.ji = add i16 %i.jh, 1                        ; 2 uses
  %i.jj = icmp sge i32 %i.ee, %i.gb
  %i.jk = mul i32 %i.ja, %i.ee                    ; 4 uses
  %.neg.i = xor i32 %i.fj, -1                     ; 2 uses
  %.neg644.i = mul i32 %i.ee, %.neg.i             ; 2 uses
  %i.jl = sub nsw i64 0, %i.gc
  %.idx645.i = select i1 %.not642.i, i64 %i.jl, i64 0 ; 3 uses
  %i.jm = shl nsw i64 %i.iu, 1                    ; 2 uses
  %i.jn = mul nsw i32 %i.ff, %i.ga
  %i.jo = sext i32 %i.jn to i64
  %i.jp = sext i32 %i.gg to i64
  %i.jq = shl i32 %i.fz, 1
  %i.jr = sext i32 %i.jq to i64                   ; 3 uses
  %i.js = mul i32 %i.fz, 3
  %i.jt = sext i32 %i.js to i64                   ; 3 uses
  %i.ju = icmp sgt i32 %i.ee, 0                   ; 3 uses
  %i.jv = trunc i32 %i.fh to i16                  ; 9 uses
  %i.jw = add nsw i32 %i.ee, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 262844
  %i.jy = zext i32 %i.ee to i64                   ; 17 uses
  %i.jz = sext i32 %i.fc to i64
  %i.ka = add nsw i32 %i.fj, 1
  %i.kb = shl nuw nsw i64 %.pre-phi.i, 1
  %i.kc = zext nneg i32 %i.ff to i64
  %i.kd = zext nneg i32 %.sroa.speculated165.i to i64 ; 4 uses
  %i.ke = sext i32 %i.fj to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16 ; 2 uses
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.kf, i64 %i.iv
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -16
  %gep.1.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gk
  %i.ki = getelementptr inbounds nuw i8, ptr %gep.1.i, i64 16 ; 2 uses
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ki, i64 %i.iv
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -16
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.gi ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.trip.count351.i = zext i32 %i.fa to i64   ; 11 uses
  %brmerge.i = or i1 %i.jg, %.not643242.i
  %brmerge328.i = or i1 %i.jg, %i.jj              ; 2 uses
  %wide.trip.count425.i = zext nneg i32 %i.fe to i64
  %i.ko = add i64 %i.id, %.idx.i
  %i.kp = shl nsw i64 %i.ge, 2
  %i.kq = shl nsw i64 %i.ih, 1
  %i.kr = add nsw i64 %i.kp, %i.kq
  %i.ks = or disjoint i64 %i.kr, 2
  %i.kt = mul i64 %i.ks, %i.gc                    ; 2 uses
  %i.ku = add i64 %i.ko, %i.kt
  %.neg = mul nsw i64 %i.gx, -2
  %.neg778 = sub i64 %.neg, %i.ku
  %i.kv = add i64 %i.id, %.idx.i
  %i.kw = add i64 %i.kv, %i.kt
  %i.kx = shl nuw nsw i64 %i.jy, 1                ; 17 uses
  %i.ky = shl nsw i64 %i.gj, 4
  %i.kz = shl nsw i64 %i.gj, 4
  %i.la = shl nsw i64 %i.jr, 1                    ; 5 uses
  %i.lb = add nsw i64 %i.la, %i.kx
  %i.lc = shl nsw i64 %i.jt, 1                    ; 6 uses
  %i.ld = mul nsw i64 %i.ge, %i.gc
  %i.le = shl i64 %i.ld, 1                        ; 2 uses
  %i.lf = shl nsw i64 %i.jd, 1
  %i.lg = shl nsw i64 %i.jd, 1
  %i.lh = add nsw i64 %i.kx, -2
  %i.li = or disjoint i64 %i.kx, 2
  %i.lj = shl nsw i64 %i.iu, 1                    ; 10 uses
  %i.lk = sub nsw i64 %i.kx, %i.lj
  %i.ll = add nsw i64 %i.kx, -2
  %i.lm = sub nsw i64 %i.ll, %i.lj
  %i.ln = or disjoint i64 %i.kx, 2
  %i.lo = sub nsw i64 %i.ln, %i.lj
  %i.lp = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %scevgep574 = getelementptr i8, ptr %i.ie, i64 %i.lp
  %scevgep576 = getelementptr i8, ptr %i.ie, i64 %i.lp
  %i.lq = shl nsw i64 %i.ge, 2                    ; 4 uses
  %i.lr = shl nsw i64 %i.jd, 1                    ; 2 uses
  %i.ls = add i64 %i.id, %i.lr
  %i.lt = shl nsw i64 %i.jd, 1
  %i.lu = shl nsw i64 %i.ih, 1
  %i.lv = add nsw i64 %i.lq, %i.lu
  %i.lw = mul i64 %i.lv, %i.gc                    ; 2 uses
  %i.lx = add i64 %i.id, %i.lw
  %i.ly = add nsw i32 %i.fj, 1
  %i.lz = mul i32 %i.ee, %i.ly
  %i.ma = add i64 %i.id, %i.lw
  %i.mb = mul i32 %i.fj, %i.ee
  %i.mc = add i64 %i.id, %i.lr
  %i.md = shl nsw i64 %i.jd, 1
  %i.me = add i64 %i.id, %i.md
  %i.mf = shl nsw i64 %i.ge, 2                    ; 2 uses
  %i.mg = shl nsw i64 %i.jd, 1
  %i.mh = shl nsw i64 %i.ih, 1
  %i.mi = add nsw i64 %i.mf, %i.mh
  %i.mj = mul i64 %i.mi, %i.gc                    ; 2 uses
  %i.mk = add i64 %i.id, %i.mj
  %i.ml = add nsw i32 %i.fj, 1
  %i.mm = mul i32 %i.ee, %i.ml
  %i.mn = add i64 %i.id, %i.mj
  %i.mo = mul i32 %i.fj, %i.ee
  %i.mp = shl nuw nsw i64 %i.jy, 1                ; 2 uses
  %scevgep698 = getelementptr i8, ptr %i.ie, i64 %i.mp
  %i.mq = shl nsw i64 %i.ge, 2                    ; 2 uses
  %i.mr = shl nsw i64 %i.ih, 1
  %i.ms = add nsw i64 %i.mq, %i.mr
  %i.mt = mul i64 %i.ms, %i.gc                    ; 3 uses
  %i.mu = shl nuw nsw i64 %i.jy, 1
  %scevgep741 = getelementptr i8, ptr %i.ie, i64 %i.mt
  %scevgep742 = getelementptr i8, ptr %i.ie, i64 %i.mt
  %i.mv = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mw = add nsw i64 %i.mv, -2
  %i.mx = shl nsw i64 %i.gx, 1
  %i.my = shl nsw i64 %i.gx, 1
  %i.mz = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.na = add nsw i64 %i.mz, -2
  %min.iters.check707 = icmp ult i32 %i.ee, 4
  %i.nb = getelementptr i8, ptr %i.ie, i64 %i.mt
  %i.nc = getelementptr i8, ptr %i.nb, i64 %i.mp
  %min.iters.check709 = icmp ult i32 %i.ee, 16
  %min.iters.check665 = icmp ult i32 %i.ee, 4
  %min.iters.check667 = icmp ult i32 %i.ee, 16
  %min.iters.check640 = icmp ult i32 %i.ee, 16
  %i.nd = shl nsw i64 %.idx645.i, 1
  %diff.check635 = icmp ugt i64 %i.nd, -16
  %min.iters.check582 = icmp samesign ult i64 %.pre-phi.i, 4
  %min.iters.check584 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.ne = and i64 %.pre-phi.i, 12
  %n.vec586 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n597 = icmp eq i64 %.pre-phi.i, %n.vec586
  %min.epilog.iters.check602 = icmp eq i64 %i.ne, 0
  %n.vec604 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n613 = icmp eq i64 %.pre-phi.i, %n.vec604
  %xtraiter852 = and i64 %.pre-phi.i, 1
  %lcmp.mod853.not = icmp eq i64 %xtraiter852, 0
  %i.nf = getelementptr i8, ptr %i.ie, i64 %i.le
  %i.ng = getelementptr i8, ptr %i.nf, i64 %i.kx
  %i.nh = getelementptr i8, ptr %i.ie, i64 %i.kx
  %i.ni = getelementptr i8, ptr %i.ie, i64 %i.le
  %min.iters.check535 = icmp ult i32 %i.ee, 28
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %min.iters.check185 = icmp ult i32 %i.fa, 4
  %i.nj = shl nsw i64 %i.gx, 1
  %diff.check182 = icmp ugt i64 %i.nj, -32
  %min.iters.check187 = icmp ult i32 %i.fa, 16
  %i.nk = and i64 %wide.trip.count351.i, 12
  %n.vec189 = and i64 %wide.trip.count351.i, 4294967280 ; 4 uses
  %broadcast.splatinsert190 = insertelement <8 x i16> poison, i16 %i.jv, i64 0
  %broadcast.splat191 = shufflevector <8 x i16> %broadcast.splatinsert190, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n196 = icmp eq i64 %n.vec189, %wide.trip.count351.i
  %min.epilog.iters.check201 = icmp eq i64 %i.nk, 0
  %n.vec203 = and i64 %wide.trip.count351.i, 4294967292 ; 3 uses
  %broadcast.splatinsert204 = insertelement <4 x i16> poison, i16 %i.jv, i64 0
  %broadcast.splat205 = shufflevector <4 x i16> %broadcast.splatinsert204, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n210 = icmp eq i64 %n.vec203, %wide.trip.count351.i
  %xtraiter855 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod856.not = icmp eq i64 %xtraiter855, 0
  %i.nl = add nsw i64 %wide.trip.count351.i, -1
  %i.nm = icmp ult i32 %i.ee, 4
  br label %bb.bl

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv.i
  store i16 %i.io, ptr %i.nn, align 2, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader229.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.bl:                                            ; preds = %._crit_edge317.i, %.preheader229.i
  %.0598324.i = phi i32 [ 1, %.preheader229.i ], [ %i.ot, %._crit_edge317.i ] ; 4 uses
  %i.no = icmp eq i32 %.0598324.i, 1              ; 2 uses
  br i1 %i.no, label %.preheader228.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br label %.preheader228.i

.preheader228.i:                                  ; preds = %bb.bm, %bb.bl
  %.0597.i = phi i32 [ %i.ja, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %.0596.i = phi i32 [ %i.iz, %bb.bm ], [ 0, %bb.bl ] ; 3 uses
  %.0595.i = phi i32 [ -1, %bb.bm ], [ %i.ff, %bb.bl ] ; 2 uses
  %.0594.i = phi i32 [ -1, %bb.bm ], [ %i.fc, %bb.bl ] ; 2 uses
  %.0592.i = phi i32 [ -1, %bb.bm ], [ 1, %bb.bl ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kh, i8 0, i64 %i.iw, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.ix, i8 0, i64 %i.iy, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kk, i8 0, i64 %i.iw, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.kl, i8 0, i64 %i.iy, i1 false)
  %.not637313.i = icmp eq i32 %.0596.i, %.0594.i
  br i1 %.not637313.i, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.preheader228.i
  %.not639280.i = icmp eq i32 %.0597.i, %.0595.i
  %i.np = mul i32 %.0592.i, %i.ga
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = icmp eq i32 %.0598324.i, %i.fm
  %i.nt = add i32 %i.ka, %.0596.i
  %i.nu = sext i32 %.0597.i to i64                ; 4 uses
  %i.nv = sext i32 %.0592.i to i64                ; 5 uses
  %i.nw = sext i32 %.0596.i to i64
  %i.nx = mul i64 %i.ky, %i.nu                    ; 17 uses
  %i.ny = mul nsw i64 %i.kz, %i.nv
  %i.nz = shl nsw i64 %i.nu, 4
  %i.oa = or disjoint i64 %i.nz, 2
  %i.ob = mul i64 %i.oa, %i.gj                    ; 6 uses
  %i.oc = add i64 %i.lb, %i.nx
  %i.od = mul i64 %i.lf, %i.nu                    ; 3 uses
  %i.oe = mul nsw i64 %i.lg, %i.nv
  %i.of = add i64 %i.kx, %i.nx
  %i.og = shl nsw i64 %i.nq, 1                    ; 5 uses
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = add i64 %i.nx, -2
  %i.oj = sub i64 %i.oi, %i.og
  %i.ok = add i64 %i.lh, %i.nx
  %i.ol = sub i64 %i.ok, %i.og
  %i.om = or disjoint i64 %i.nx, 2
  %i.on = sub i64 %i.om, %i.og
  %i.oo = add i64 %i.li, %i.nx
  %i.op = sub i64 %i.oo, %i.og
  %reass.sub = sub i64 %i.ob, %i.lj
end_hunk_0
begin_hunk_1_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.ajo = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %index549
  store <4 x i16> %i.ajn, ptr %i.ajo, align 2, !tbaa !59, !alias.scope !212, !noalias !213
  %i.ajp = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ajd, <4 x i32> %vec.phi552) ; 2 uses
  %i.ajq = getelementptr inbounds nuw [2 x i8], ptr %i.aeu, i64 %index549 ; 2 uses
  %wide.load565 = load <4 x i16>, ptr %i.ajq, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %i.ajr = sext <4 x i16> %wide.load565 to <4 x i32>
  %i.ajs = add <4 x i32> %i.aid, %i.ahq
  %i.ajt = add <4 x i32> %i.ajs, %i.aiq
  %i.aju = add <4 x i32> %i.ajt, %i.ajd
  %i.ajv = add <4 x i32> %i.aju, %i.ajr
  %i.ajw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ajv, <4 x i32> splat (i32 -32768))
  %i.ajx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ajw, <4 x i32> splat (i32 32767))
  %i.ajy = trunc nsw <4 x i32> %i.ajx to <4 x i16>
  store <4 x i16> %i.ajy, ptr %i.ajq, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %index.next566 = add nuw i64 %index549, 4       ; 2 uses
  %i.ajz = icmp eq i64 %index.next566, %i.jy
  br i1 %i.ajz, label %middle.block567, label %vector.body548, !llvm.loop !159

middle.block567:                                  ; preds = %vector.body548
  %i.aka = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajg)
  %i.akb = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajj)
  %i.akc = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajm)
  %i.akd = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ajp)
  br label %._crit_edge276.loopexit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 12 uses
  %.0186272.i = phi i32 [ %.sroa.speculated86.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0187271.i = phi i32 [ %.sroa.speculated68.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0188270.i = phi i32 [ %.sroa.speculated50.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0189269.i = phi i32 [ %.sroa.speculated32.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %i.ake = getelementptr inbounds nuw [2 x i8], ptr %i.aet, i64 %indvars.iv391.i
  %i.akf = load i16, ptr %i.ake, align 2, !tbaa !59
  %i.akg = sext i16 %i.akf to i32                 ; 4 uses
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %indvars.iv391.i
  %i.aki = load i16, ptr %i.akh, align 2, !tbaa !59
  %i.akj = sext i16 %i.aki to i32
  %i.akk = add nsw i64 %indvars.iv391.i, -1       ; 4 uses
  %i.akl = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.akk
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !59
  %i.akn = sext i16 %i.akm to i32
  %i.ako = add nsw i32 %i.et, %i.akn
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 6 uses
  %i.akp = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %indvars.iv.next392.i
  %i.akq = load i16, ptr %i.akp, align 2, !tbaa !59
  %i.akr = sext i16 %i.akq to i32
  %i.aks = add nsw i32 %i.et, %i.akr
  %i.akt = call i32 @llvm.smin.i32(i32 %i.adn, i32 %i.aks)
  %i.aku = call i32 @llvm.smin.i32(i32 %i.akt, i32 %i.ako)
  %.sroa.speculated78.i = call i32 @llvm.smin.i32(i32 %i.aku, i32 %i.akj)
  %i.akv = sub i32 %i.akg, %i.adn
  %i.akw = add i32 %.sroa.speculated78.i, %i.akv  ; 3 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %indvars.iv391.i
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !59
  %i.akz = sext i16 %i.aky to i32
  %i.ala = getelementptr inbounds [2 x i8], ptr %i.aeg, i64 %i.akk
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !59
  %i.alc = sext i16 %i.alb to i32
  %i.ald = add nsw i32 %i.et, %i.alc
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %indvars.iv.next392.i
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !59
  %i.alg = sext i16 %i.alf to i32
  %i.alh = add nsw i32 %i.et, %i.alg
  %i.ali = call i32 @llvm.smin.i32(i32 %i.ads, i32 %i.alh)
  %i.alj = call i32 @llvm.smin.i32(i32 %i.ali, i32 %i.ald)
  %.sroa.speculated60.i = call i32 @llvm.smin.i32(i32 %i.alj, i32 %i.akz)
  %i.alk = sub i32 %i.akg, %i.ads
  %i.all = add i32 %.sroa.speculated60.i, %i.alk  ; 3 uses
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %indvars.iv391.i
  %i.aln = load i16, ptr %i.alm, align 2, !tbaa !59
  %i.alo = sext i16 %i.aln to i32
  %i.alp = getelementptr inbounds [2 x i8], ptr %i.aeh, i64 %i.akk
  %i.alq = load i16, ptr %i.alp, align 2, !tbaa !59
  %i.alr = sext i16 %i.alq to i32
  %i.als = add nsw i32 %i.et, %i.alr
  %i.alt = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %indvars.iv.next392.i
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !59
  %i.alv = sext i16 %i.alu to i32
  %i.alw = add nsw i32 %i.et, %i.alv
  %i.alx = call i32 @llvm.smin.i32(i32 %i.adx, i32 %i.alw)
  %i.aly = call i32 @llvm.smin.i32(i32 %i.alx, i32 %i.als)
  %.sroa.speculated42.i = call i32 @llvm.smin.i32(i32 %i.aly, i32 %i.alo)
  %i.alz = sub i32 %i.akg, %i.adx
  %i.ama = add i32 %.sroa.speculated42.i, %i.alz  ; 3 uses
  %i.amb = getelementptr inbounds nuw [2 x i8], ptr %i.aej, i64 %indvars.iv391.i
  %i.amc = load i16, ptr %i.amb, align 2, !tbaa !59
  %i.amd = sext i16 %i.amc to i32
  %i.ame = getelementptr inbounds [2 x i8], ptr %i.aej, i64 %i.akk
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !59
  %i.amg = sext i16 %i.amf to i32
  %i.amh = add nsw i32 %i.et, %i.amg
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.aej, i64 %indvars.iv.next392.i
  %i.amj = load i16, ptr %i.ami, align 2, !tbaa !59
  %i.amk = sext i16 %i.amj to i32
  %i.aml = add nsw i32 %i.et, %i.amk
  %i.amm = call i32 @llvm.smin.i32(i32 %i.aeb, i32 %i.aml)
  %i.amn = call i32 @llvm.smin.i32(i32 %i.amm, i32 %i.amh)
  %.sroa.speculated25.i = call i32 @llvm.smin.i32(i32 %i.amn, i32 %i.amd)
  %i.amo = sub i32 %i.akg, %i.aeb
  %i.amp = add i32 %.sroa.speculated25.i, %i.amo  ; 3 uses
  %i.amq = trunc i32 %i.akw to i16
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %indvars.iv391.i
  store i16 %i.amq, ptr %i.amr, align 2, !tbaa !59
  %.sroa.speculated86.i = call i32 @llvm.smin.i32(i32 %i.akw, i32 %.0186272.i) ; 2 uses
  %i.ams = trunc i32 %i.all to i16
  %gep493.i = getelementptr [2 x i8], ptr %invariant.gep492.i, i64 %indvars.iv391.i
  store i16 %i.ams, ptr %gep493.i, align 2, !tbaa !59
  %.sroa.speculated68.i = call i32 @llvm.smin.i32(i32 %i.all, i32 %.0187271.i) ; 2 uses
  %i.amt = trunc i32 %i.ama to i16
  %gep495.i = getelementptr [2 x i8], ptr %invariant.gep494.i, i64 %indvars.iv391.i
  store i16 %i.amt, ptr %gep495.i, align 2, !tbaa !59
  %.sroa.speculated50.i = call i32 @llvm.smin.i32(i32 %i.ama, i32 %.0188270.i) ; 2 uses
  %i.amu = trunc i32 %i.amp to i16
  %gep497.i = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %indvars.iv391.i
  store i16 %i.amu, ptr %gep497.i, align 2, !tbaa !59
  %.sroa.speculated32.i = call i32 @llvm.smin.i32(i32 %i.amp, i32 %.0189269.i) ; 2 uses
  %i.amv = getelementptr inbounds nuw [2 x i8], ptr %i.aeu, i64 %indvars.iv391.i ; 2 uses
  %i.amw = load i16, ptr %i.amv, align 2, !tbaa !59
  %i.amx = sext i16 %i.amw to i32
  %i.amy = add i32 %i.all, %i.akw
  %i.amz = add i32 %i.amy, %i.ama
  %i.ana = add i32 %i.amz, %i.amp
  %i.anb = add i32 %i.ana, %i.amx
  %i.anc = call i32 @llvm.smax.i32(i32 %i.anb, i32 -32768)
  %i.and = call i32 @llvm.smin.i32(i32 %i.anc, i32 32767)
  %i.ane = trunc nsw i32 %i.and to i16
  store i16 %i.ane, ptr %i.amv, align 2, !tbaa !59
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next392.i, %i.jy
  br i1 %exitcond395.not.i, label %._crit_edge276.loopexit.i, label %scalar.ph, !llvm.loop !160

._crit_edge276.loopexit.i:                        ; preds = %scalar.ph, %middle.block567
  %.sroa.speculated86.i.lcssa = phi i32 [ %i.aka, %middle.block567 ], [ %.sroa.speculated86.i, %scalar.ph ]
  %.sroa.speculated68.i.lcssa = phi i32 [ %i.akb, %middle.block567 ], [ %.sroa.speculated68.i, %scalar.ph ]
  %.sroa.speculated50.i.lcssa = phi i32 [ %i.akc, %middle.block567 ], [ %.sroa.speculated50.i, %scalar.ph ]
  %.sroa.speculated32.i.lcssa = phi i32 [ %i.akd, %middle.block567 ], [ %.sroa.speculated32.i, %scalar.ph ]
  %i.anf = trunc i32 %.sroa.speculated86.i.lcssa to i16
  %i.ang = trunc i32 %.sroa.speculated68.i.lcssa to i16
  %i.anh = trunc i32 %.sroa.speculated50.i.lcssa to i16
  %i.ani = trunc i32 %.sroa.speculated32.i.lcssa to i16
  br label %._crit_edge276.i

._crit_edge276.i:                                 ; preds = %._crit_edge276.loopexit.i, %.lr.ph283.i
  %.0189.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.ani, %._crit_edge276.loopexit.i ]
  %.0188.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.anh, %._crit_edge276.loopexit.i ]
  %.0187.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.ang, %._crit_edge276.loopexit.i ]
  %.0186.lcssa.i = phi i16 [ 32767, %.lr.ph283.i ], [ %i.anf, %._crit_edge276.loopexit.i ]
  %i.anj = getelementptr inbounds [2 x i8], ptr %i.ox, i64 %i.adh ; 3 uses
  store i16 %.0186.lcssa.i, ptr %i.anj, align 2, !tbaa !59
  %i.ank = getelementptr i8, ptr %i.anj, i64 2
  store i16 %.0187.lcssa.i, ptr %i.ank, align 2, !tbaa !59
  %i.anl = getelementptr inbounds [2 x i8], ptr %i.ox, i64 %i.adt
  store i16 %.0188.lcssa.i, ptr %i.anl, align 2, !tbaa !59
  %i.anm = getelementptr i8, ptr %i.anj, i64 6
  store i16 %.0189.lcssa.i, ptr %i.anm, align 2, !tbaa !59
  %indvars.iv.next397.i = add nsw i64 %indvars.iv396.i, %i.nv ; 2 uses
  %i.ann = trunc nsw i64 %indvars.iv.next397.i to i32
  %.not639.i = icmp eq i32 %.0595.i, %i.ann
  %indvar.next = add i64 %indvar, 1
  br i1 %.not639.i, label %._crit_edge284.i, label %.lr.ph283.i, !llvm.loop !161

._crit_edge284.i:                                 ; preds = %._crit_edge276.i, %.loopexit227.i
  br i1 %i.ns, label %iter.check198, label %.loopexit223.i

iter.check198:                                    ; preds = %._crit_edge284.i
  br i1 %min.iters.check185, label %.lr.ph286.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check198
  %i.ano = add i64 %.neg778, %i.oz
  %i.anp = add i64 %i.ano, %i.pb
  %i.anq = add i64 %i.anp, -1
  %diff.check = icmp ult i64 %i.anq, 31
  %conflict.rdx = or i1 %diff.check, %diff.check182
  %i.anr = add i64 %i.pb, %i.oz
  %i.ans = sub i64 %i.anr, %i.kw
  %diff.check183 = icmp ugt i64 %i.ans, -32
  %conflict.rdx184 = or i1 %conflict.rdx, %diff.check183
  br i1 %conflict.rdx184, label %.lr.ph286.i.preheader, label %vector.main.loop.iter.check186

vector.main.loop.iter.check186:                   ; preds = %vector.memcheck
  br i1 %min.iters.check187, label %vec.epilog.ph202, label %vector.body192

vector.body192:                                   ; preds = %vector.main.loop.iter.check186, %vector.body192
  %index193 = phi i64 [ %index.next194, %vector.body192 ], [ 0, %vector.main.loop.iter.check186 ] ; 4 uses
  %i.ant = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %index193 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 16
  store <8 x i16> %broadcast.splat191, ptr %i.ant, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat191, ptr %i.anu, align 2, !tbaa !59
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %index193 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  store <8 x i16> %broadcast.splat191, ptr %i.anv, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat191, ptr %i.anw, align 2, !tbaa !59
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %index193 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.anx, align 2, !tbaa !59
  store <8 x i16> splat (i16 32767), ptr %i.any, align 2, !tbaa !59
  %index.next194 = add nuw i64 %index193, 16      ; 2 uses
  %i.anz = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.anz, label %middle.block195, label %vector.body192, !llvm.loop !162

middle.block195:                                  ; preds = %vector.body192
  br i1 %cmp.n196, label %.lr.ph308.i.preheader, label %vec.epilog.iter.check200

vec.epilog.iter.check200:                         ; preds = %middle.block195
  br i1 %min.epilog.iters.check201, label %.lr.ph286.i.preheader, label %vec.epilog.ph202, !prof !63

vec.epilog.ph202:                                 ; preds = %vector.main.loop.iter.check186, %vec.epilog.iter.check200
  %vec.epilog.resume.val197 = phi i64 [ %n.vec189, %vec.epilog.iter.check200 ], [ 0, %vector.main.loop.iter.check186 ]
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph202
  %index207 = phi i64 [ %vec.epilog.resume.val197, %vec.epilog.ph202 ], [ %index.next208, %vec.epilog.vector.body206 ] ; 4 uses
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %index207
  store <4 x i16> %broadcast.splat205, ptr %i.aoa, align 2, !tbaa !59
  %i.aob = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %index207
  store <4 x i16> %broadcast.splat205, ptr %i.aob, align 2, !tbaa !59
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %index207
  store <4 x i16> splat (i16 32767), ptr %i.aoc, align 2, !tbaa !59
  %index.next208 = add nuw i64 %index207, 4       ; 2 uses
  %i.aod = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.aod, label %vec.epilog.middle.block209, label %vec.epilog.vector.body206, !llvm.loop !163

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body206
  br i1 %cmp.n210, label %.lr.ph308.i.preheader, label %.lr.ph286.i.preheader

.lr.ph286.i.preheader:                            ; preds = %vector.memcheck, %iter.check198, %vec.epilog.iter.check200, %vec.epilog.middle.block209
  %indvars.iv399.i.ph = phi i64 [ 0, %iter.check198 ], [ 0, %vector.memcheck ], [ %n.vec189, %vec.epilog.iter.check200 ], [ %n.vec203, %vec.epilog.middle.block209 ] ; 6 uses
  br i1 %lcmp.mod856.not, label %.lr.ph286.i.prol.loopexit, label %.lr.ph286.i.prol

.lr.ph286.i.prol:                                 ; preds = %.lr.ph286.i.preheader
  %i.aoe = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %indvars.iv399.i.ph
  store i16 %i.jv, ptr %i.aoe, align 2, !tbaa !59
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %indvars.iv399.i.ph
  store i16 %i.jv, ptr %i.aof, align 2, !tbaa !59
  %i.aog = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv399.i.ph
  store i16 32767, ptr %i.aog, align 2, !tbaa !59
  %indvars.iv.next400.i.prol = or disjoint i64 %indvars.iv399.i.ph, 1
  br label %.lr.ph286.i.prol.loopexit

.lr.ph286.i.prol.loopexit:                        ; preds = %.lr.ph286.i.prol, %.lr.ph286.i.preheader
  %indvars.iv399.i.unr = phi i64 [ %indvars.iv399.i.ph, %.lr.ph286.i.preheader ], [ %indvars.iv.next400.i.prol, %.lr.ph286.i.prol ]
  %i.aoh = icmp eq i64 %indvars.iv399.i.ph, %i.nl
  br i1 %i.aoh, label %.lr.ph308.i.preheader, label %.lr.ph286.i

.lr.ph286.i:                                      ; preds = %.lr.ph286.i.prol.loopexit, %.lr.ph286.i
  %indvars.iv399.i = phi i64 [ %indvars.iv.next400.i.1, %.lr.ph286.i ], [ %indvars.iv399.i.unr, %.lr.ph286.i.prol.loopexit ] ; 5 uses
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %indvars.iv399.i
  store i16 %i.jv, ptr %i.aoi, align 2, !tbaa !59
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %indvars.iv399.i
  store i16 %i.jv, ptr %i.aoj, align 2, !tbaa !59
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv399.i
  store i16 32767, ptr %i.aok, align 2, !tbaa !59
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 3 uses
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %indvars.iv.next400.i
  store i16 %i.jv, ptr %i.aol, align 2, !tbaa !59
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %indvars.iv.next400.i
  store i16 %i.jv, ptr %i.aom, align 2, !tbaa !59
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next400.i
  store i16 32767, ptr %i.aon, align 2, !tbaa !59
  %indvars.iv.next400.i.1 = add nuw nsw i64 %indvars.iv399.i, 2 ; 2 uses
  %exitcond403.not.i.1 = icmp eq i64 %indvars.iv.next400.i.1, %wide.trip.count351.i
  br i1 %exitcond403.not.i.1, label %.lr.ph308.i.preheader, label %.lr.ph286.i, !llvm.loop !164

.lr.ph308.i.preheader:                            ; preds = %.lr.ph286.i.prol.loopexit, %.lr.ph286.i, %vec.epilog.middle.block209, %middle.block195
  br label %.lr.ph308.i

.lr.ph308.i:                                      ; preds = %.lr.ph308.i.preheader, %.loopexit.i
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %.loopexit.i ], [ %i.kc, %.lr.ph308.i.preheader ] ; 2 uses
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -1 ; 6 uses
  %i.aoo = mul nsw i64 %indvars.iv.next420.i, %i.jd ; 2 uses
  %i.aop = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %i.aoo ; 8 uses
  br i1 %.not642.i, label %.preheader215.i, label %bb.br

.preheader215.i:                                  ; preds = %.lr.ph308.i
  br i1 %i.ju, label %.lr.ph300.i.preheader, label %.thread.i104

.lr.ph300.i.preheader:                            ; preds = %.preheader215.i
  %i.aoq = xor i1 %i.nm, true
  call void @llvm.assume(i1 %i.aoq)
  br label %.lr.ph300.i

.thread.i104:                                     ; preds = %.preheader215.i
  %i.aor = add nuw nsw i64 %indvars.iv.next420.i, %i.kd
  br label %bb.cf

bb.br:                                            ; preds = %.lr.ph308.i
  %i.aos = shl nuw nsw i64 %indvars.iv.next420.i, 3 ; 2 uses
  %i.aot = mul nsw i64 %i.aos, %i.gj
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %i.aos ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 16
  %i.aow = load i16, ptr %i.aov, align 2, !tbaa !59
  %i.aox = sext i16 %i.aow to i32
  %i.aoy = add nsw i32 %.sroa.speculated173.i, %i.aox ; 2 uses
  %i.aoz = getelementptr inbounds [2 x i8], ptr %i.ow, i64 %i.aot ; 2 uses
  %i.apa = getelementptr inbounds [2 x i8], ptr %i.aoz, i64 %i.iu ; 4 uses
  %i.apb = getelementptr inbounds [2 x i8], ptr %i.apa, i64 %i.jd
  store i16 32767, ptr %i.apb, align 2, !tbaa !59
  %i.apc = getelementptr inbounds i8, ptr %i.apa, i64 -2
  store i16 32767, ptr %i.apc, align 2, !tbaa !59
  %i.apd = getelementptr inbounds [2 x i8], ptr %i.pf, i64 %i.aoo
  br i1 %i.ju, label %.lr.ph292.i, label %.thread

.lr.ph292.i:                                      ; preds = %bb.br, %.lr.ph292.i
  %indvars.iv404.i = phi i64 [ %indvars.iv.next405.i, %.lr.ph292.i ], [ 0, %bb.br ] ; 6 uses
  %.0568290.i = phi i32 [ %spec.select649.i, %.lr.ph292.i ], [ -1, %bb.br ]
  %.0569289.i = phi i32 [ %spec.select648.i, %.lr.ph292.i ], [ 32767, %bb.br ] ; 2 uses
  %.0185287.i = phi i32 [ %.sroa.speculated12.i, %.lr.ph292.i ], [ 32767, %bb.br ]
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %i.apd, i64 %indvars.iv404.i
  %i.apf = load i16, ptr %i.ape, align 2, !tbaa !59
  %i.apg = sext i16 %i.apf to i32
  %i.aph = getelementptr inbounds nuw [2 x i8], ptr %i.apa, i64 %indvars.iv404.i ; 2 uses
  %i.api = load i16, ptr %i.aph, align 2, !tbaa !59
  %i.apj = sext i16 %i.api to i32
  %i.apk = getelementptr i8, ptr %i.aph, i64 -2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !59
  %i.apm = sext i16 %i.apl to i32
  %i.apn = add nsw i32 %i.et, %i.apm
  %indvars.iv.next405.i = add nuw nsw i64 %indvars.iv404.i, 1 ; 3 uses
  %i.apo = getelementptr inbounds nuw [2 x i8], ptr %i.apa, i64 %indvars.iv.next405.i
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !59
  %i.apq = sext i16 %i.app to i32
  %i.apr = add nsw i32 %i.et, %i.apq
  %i.aps = call i32 @llvm.smin.i32(i32 %i.aoy, i32 %i.apr)
  %i.apt = call i32 @llvm.smin.i32(i32 %i.aps, i32 %i.apn)
  %.sroa.speculated6.i = call i32 @llvm.smin.i32(i32 %i.apt, i32 %i.apj)
  %i.apu = sub i32 %i.apg, %i.aoy
  %i.apv = add i32 %.sroa.speculated6.i, %i.apu   ; 3 uses
  %i.apw = trunc i32 %i.apv to i16
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %indvars.iv404.i
  store i16 %i.apw, ptr %i.apx, align 2, !tbaa !59
  %.sroa.speculated12.i = call i32 @llvm.smin.i32(i32 %i.apv, i32 %.0185287.i) ; 2 uses
  %i.apy = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv404.i ; 2 uses
  %i.apz = load i16, ptr %i.apy, align 2, !tbaa !59
  %i.aqa = sext i16 %i.apz to i32
  %i.aqb = add nsw i32 %i.apv, %i.aqa
  %i.aqc = call i32 @llvm.smax.i32(i32 %i.aqb, i32 -32768)
  %i.aqd = call i32 @llvm.smin.i32(i32 %i.aqc, i32 32767) ; 3 uses
  %i.aqe = trunc nsw i32 %i.aqd to i16
  store i16 %i.aqe, ptr %i.apy, align 2, !tbaa !59
  %i.aqf = icmp sgt i32 %.0569289.i, %i.aqd
  %spec.select648.i = call i32 @llvm.smin.i32(i32 %.0569289.i, i32 %i.aqd) ; 2 uses
  %i.aqg = trunc nuw nsw i64 %indvars.iv404.i to i32
  %spec.select649.i = select i1 %i.aqf, i32 %i.aqg, i32 %.0568290.i ; 2 uses
  %exitcond408.not.i = icmp eq i64 %indvars.iv.next405.i, %i.jy
  br i1 %exitcond408.not.i, label %.loopexit216.thread474.i, label %.lr.ph292.i, !llvm.loop !165

.loopexit216.thread474.i:                         ; preds = %.lr.ph292.i
  %i.aqh = trunc i32 %.sroa.speculated12.i to i16
  store i16 %i.aqh, ptr %i.aou, align 2, !tbaa !59
  br label %.lr.ph305.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %.lr.ph300.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i.3, %.lr.ph300.i ], [ 0, %.lr.ph300.i.preheader ] ; 6 uses
  %.2299.i = phi i32 [ %spec.select651.i.3, %.lr.ph300.i ], [ -1, %.lr.ph300.i.preheader ]
  %.2571298.i = phi i32 [ %spec.select650.i.3, %.lr.ph300.i ], [ 32767, %.lr.ph300.i.preheader ] ; 2 uses
  %niter864 = phi i64 [ %niter864.next.3, %.lr.ph300.i ], [ 0, %.lr.ph300.i.preheader ]
  %i.aqi = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv409.i
  %i.aqj = load i16, ptr %i.aqi, align 2, !tbaa !59
  %i.aqk = sext i16 %i.aqj to i32                 ; 2 uses
  %i.aql = icmp sgt i32 %.2571298.i, %i.aqk
  %spec.select650.i = call i32 @llvm.smin.i32(i32 %.2571298.i, i32 %i.aqk) ; 2 uses
  %i.aqm = trunc nuw nsw i64 %indvars.iv409.i to i32
  %spec.select651.i = select i1 %i.aql, i32 %i.aqm, i32 %.2299.i
  %indvars.iv.next410.i = or disjoint i64 %indvars.iv409.i, 1 ; 2 uses
  %i.aqn = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv.next410.i
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !59
  %i.aqp = sext i16 %i.aqo to i32                 ; 2 uses
  %i.aqq = icmp sgt i32 %spec.select650.i, %i.aqp
  %spec.select650.i.1 = call i32 @llvm.smin.i32(i32 %spec.select650.i, i32 %i.aqp) ; 2 uses
  %i.aqr = trunc nuw nsw i64 %indvars.iv.next410.i to i32
  %spec.select651.i.1 = select i1 %i.aqq, i32 %i.aqr, i32 %spec.select651.i
  %indvars.iv.next410.i.1 = or disjoint i64 %indvars.iv409.i, 2 ; 2 uses
  %i.aqs = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv.next410.i.1
  %i.aqt = load i16, ptr %i.aqs, align 2, !tbaa !59
  %i.aqu = sext i16 %i.aqt to i32                 ; 2 uses
  %i.aqv = icmp sgt i32 %spec.select650.i.1, %i.aqu
  %spec.select650.i.2 = call i32 @llvm.smin.i32(i32 %spec.select650.i.1, i32 %i.aqu) ; 2 uses
  %i.aqw = trunc nuw nsw i64 %indvars.iv.next410.i.1 to i32
  %spec.select651.i.2 = select i1 %i.aqv, i32 %i.aqw, i32 %spec.select651.i.1
  %indvars.iv.next410.i.2 = or disjoint i64 %indvars.iv409.i, 3 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv.next410.i.2
  %i.aqy = load i16, ptr %i.aqx, align 2, !tbaa !59
  %i.aqz = sext i16 %i.aqy to i32                 ; 2 uses
  %i.ara = icmp sgt i32 %spec.select650.i.2, %i.aqz
  %spec.select650.i.3 = call i32 @llvm.smin.i32(i32 %spec.select650.i.2, i32 %i.aqz) ; 2 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv.next410.i.2 to i32
  %spec.select651.i.3 = select i1 %i.ara, i32 %i.arb, i32 %spec.select651.i.2 ; 2 uses
  %indvars.iv.next410.i.3 = add nuw nsw i64 %indvars.iv409.i, 4
  %niter864.next.3 = add i64 %niter864, 4         ; 2 uses
  %niter864.ncmp.3 = icmp eq i64 %niter864.next.3, %i.jy
  br i1 %niter864.ncmp.3, label %.lr.ph305.i, label %.lr.ph300.i, !llvm.loop !166

.thread:                                          ; preds = %bb.br
  store i16 32767, ptr %i.aou, align 2, !tbaa !59
  %i.arc = add nuw nsw i64 %indvars.iv.next420.i, %i.kd
  br label %bb.cf

.lr.ph305.i:                                      ; preds = %.lr.ph300.i, %.loopexit216.thread474.i
  %.4470.i = phi i32 [ %spec.select649.i, %.loopexit216.thread474.i ], [ %spec.select651.i.3, %.lr.ph300.i ] ; 12 uses
  %.4573467.i = phi i32 [ %spec.select648.i, %.loopexit216.thread474.i ], [ %spec.select650.i.3, %.lr.ph300.i ] ; 3 uses
  %i.ard = mul nsw i32 %.4573467.i, 100
  %i.are = add i32 %.4470.i, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph305.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph305.i ], [ %indvars.iv.next415.i, %bb.bt ] ; 3 uses
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv414.i
  %i.arg = load i16, ptr %i.arf, align 2, !tbaa !59
  %i.arh = sext i16 %i.arg to i32
  %i.ari = mul nsw i32 %i.em, %i.arh
  %i.arj = icmp slt i32 %i.ari, %i.ard
  %indvars416.i = trunc i64 %indvars.iv414.i to i32
  %i.ark = sub i32 %i.are, %indvars416.i
  %i.arl = icmp ult i32 %i.ark, -3
  %or.cond501.i = select i1 %i.arj, i1 %i.arl, i1 false
  br i1 %or.cond501.i, label %.loopexit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next415.i, %i.jy
  br i1 %exitcond418.not.i, label %.critedge.i, label %bb.bs, !llvm.loop !167

.critedge.i:                                      ; preds = %bb.bt
  %i.arm = add nuw nsw i64 %indvars.iv.next420.i, %i.kd ; 7 uses
  %i.arn = add i32 %.4470.i, %i.ed                ; 2 uses
  %i.aro = trunc nsw i64 %i.arm to i32
  %i.arp = sub i32 %i.aro, %i.arn
  %i.arq = sext i32 %i.arp to i64                 ; 2 uses
  %i.arr = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.arq ; 2 uses
  %i.ars = load i16, ptr %i.arr, align 2, !tbaa !59
  %i.art = sext i16 %i.ars to i32
  %i.aru = icmp slt i32 %.4573467.i, %i.art
  br i1 %i.aru, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge.i
  %i.arv = trunc nsw i32 %.4573467.i to i16
  store i16 %i.arv, ptr %i.arr, align 2, !tbaa !59
  %i.arw = trunc i32 %i.arn to i16
  %i.arx = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.arq
  store i16 %i.arw, ptr %i.arx, align 2, !tbaa !59
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.critedge.i
  %i.ary = icmp sgt i32 %.4470.i, 0
  %i.arz = icmp slt i32 %.4470.i, %i.jw
  %or.cond.i = select i1 %i.ary, i1 %i.arz, i1 false
  br i1 %or.cond.i, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.asa = load i32, ptr %i.jx, align 4, !tbaa !216
  switch i32 %i.asa, label %bb.cg [
    i32 1, label %bb.bx
    i32 0, label %bb.ce
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.asb = zext nneg i32 %.4470.i to i64
  %i.asc = getelementptr [2 x i8], ptr %i.aop, i64 %i.asb ; 2 uses
  %i.asd = getelementptr i8, ptr %i.asc, i64 -2
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !59
  %i.asf = sitofp i16 %i.ase to double            ; 2 uses
  %i.asg = load <2 x i16>, ptr %i.asc, align 2, !tbaa !59
  %i.ash = sitofp <2 x i16> %i.asg to <2 x double> ; 2 uses
  %i.asi = extractelement <2 x double> %i.ash, i64 0 ; 2 uses
  %i.asj = fsub double %i.asf, %i.asi             ; 7 uses
  %i.ask = extractelement <2 x double> %i.ash, i64 1 ; 2 uses
  %i.asl = fsub double %i.ask, %i.asi             ; 7 uses
  %i.asm = fcmp oeq double %i.asj, 0.000000e+00
  %i.asn = fcmp oeq double %i.asl, 0.000000e+00
  %or.cond3.i = select i1 %i.asm, i1 true, i1 %i.asn
  br i1 %or.cond3.i, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aso = fcmp olt double %i.ask, %i.asf
  br i1 %i.aso, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.asp = fmul nnan double %i.asl, %i.asl
  %i.asq = fmul nnan double %i.asj, %i.asj
  %i.asr = fdiv double %i.asp, %i.asq
  %i.ass = fdiv double %i.asl, %i.asj
  %i.ast = fadd double %i.ass, %i.asr
  %i.asu = call double @llvm.fmuladd.f64(double %i.ast, double -2.500000e-01, double 5.000000e-01)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.asv = fmul nnan double %i.asj, %i.asj
  %i.asw = fmul nnan double %i.asl, %i.asl
  %i.asx = fdiv double %i.asv, %i.asw
  %i.asy = fdiv double %i.asj, %i.asl
  %i.asz = fadd double %i.asy, %i.asx
  %i.ata = call double @llvm.fmuladd.f64(double %i.asz, double -2.500000e-01, double 5.000000e-01)
  %i.atb = fneg double %i.ata
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0.i = phi double [ %i.asu, %bb.bz ], [ %i.atb, %bb.ca ] ; 2 uses
  %i.atc = call double @llvm.fabs.f64(double %.0.i)
  %or.cond5.i = fcmp ugt double %i.atc, 5.000000e-01
  br i1 %or.cond5.i, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.atd = shl nuw nsw i32 %.4470.i, 4
  %i.ate = uitofp nneg i32 %i.atd to double
  %i.atf = call double @llvm.fmuladd.f64(double %.0.i, double 1.600000e+01, double %i.ate)
  %i.atg = fptosi double %i.atf to i32
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bx
  %i.ath = shl nuw nsw i32 %.4470.i, 4
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bw
  %i.ati = zext nneg i32 %.4470.i to i64
  %i.atj = getelementptr [2 x i8], ptr %i.aop, i64 %i.ati ; 3 uses
  %i.atk = getelementptr i8, ptr %i.atj, i64 -2
  %i.atl = load i16, ptr %i.atk, align 2, !tbaa !59
  %i.atm = sext i16 %i.atl to i32                 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atj, i64 2
  %i.ato = load i16, ptr %i.atn, align 2, !tbaa !59
  %i.atp = sext i16 %i.ato to i32                 ; 2 uses
  %i.atq = add nsw i32 %i.atp, %i.atm
  %i.atr = load i16, ptr %i.atj, align 2, !tbaa !59
  %i.ats = sext i16 %i.atr to i32
  %i.att = shl nsw i32 %i.ats, 1
  %i.atu = sub nsw i32 %i.atq, %i.att
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.atu, i32 1) ; 2 uses
  %i.atv = shl nuw nsw i32 %.4470.i, 4
  %i.atw = sub nsw i32 %i.atm, %i.atp
  %i.atx = shl nsw i32 %i.atw, 4
  %i.aty = add nsw i32 %.sroa.speculated.i, %i.atx
  %i.atz = shl nuw nsw i32 %.sroa.speculated.i, 1
  %i.aua = sdiv i32 %i.aty, %i.atz
  %i.aub = add nsw i32 %i.aua, %i.atv
  br label %bb.cg

bb.cf:                                            ; preds = %.thread, %bb.bv, %.thread.i104
  %.4469480483.i = phi i32 [ -1, %.thread.i104 ], [ %.4470.i, %bb.bv ], [ -1, %.thread ]
  %i.auc = phi i64 [ %i.aor, %.thread.i104 ], [ %i.arm, %bb.bv ], [ %i.arc, %.thread ]
  %i.aud = shl nsw i32 %.4469480483.i, 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bw
  %i.aue = phi i64 [ %i.auc, %bb.cf ], [ %i.arm, %bb.ce ], [ %i.arm, %bb.bw ], [ %i.arm, %bb.cd ], [ %i.arm, %bb.cc ], [ %i.arm, %bb.cb ]
  %.9.i = phi i32 [ %i.aud, %bb.cf ], [ %i.aub, %bb.ce ], [ %.4470.i, %bb.bw ], [ %i.ath, %bb.cd ], [ %i.atg, %bb.cc ], [ %.4470.i, %bb.cb ]
  %i.auf = add nsw i32 %.9.i, %i.fg
  %i.aug = trunc i32 %i.auf to i16
  %i.auh = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.aue
  store i16 %i.aug, ptr %i.auh, align 2, !tbaa !59
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bs, %bb.cg
  %i.aui = icmp sgt i64 %indvars.iv419.i, 1
  br i1 %i.aui, label %.lr.ph308.i, label %.lr.ph310.i, !llvm.loop !168

.lr.ph310.i:                                      ; preds = %.loopexit.i, %bb.cn
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %bb.cn ], [ %i.kd, %.loopexit.i ] ; 3 uses
  %i.auj = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %indvars.iv422.i ; 2 uses
  %i.auk = load i16, ptr %i.auj, align 2, !tbaa !59
  %i.aul = sext i16 %i.auk to i32                 ; 3 uses
  %i.aum = icmp eq i32 %i.fh, %i.aul
  br i1 %i.aum, label %bb.cn, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph310.i
  %i.aun = ashr i32 %i.aul, 4                     ; 2 uses
  %i.auo = add nsw i32 %i.aul, 15
  %i.aup = ashr i32 %i.auo, 4                     ; 2 uses
  %i.auq = trunc nuw nsw i64 %indvars.iv422.i to i32 ; 2 uses
  %i.aur = sub nsw i32 %i.auq, %i.aun             ; 3 uses
  %i.aus = sub nsw i32 %i.auq, %i.aup             ; 3 uses
  %i.aut = icmp sgt i32 %i.aur, -1
  %i.auu = icmp slt i32 %i.aur, %i.fa
  %or.cond653.i = and i1 %i.aut, %i.auu
  br i1 %or.cond653.i, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.auv = zext nneg i32 %i.aur to i64
  %i.auw = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.auv
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !59
  %i.auy = sext i16 %i.aux to i32                 ; 2 uses
  %.not640.i = icmp sgt i32 %i.ed, %i.auy
  br i1 %.not640.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.auz = sub nsw i32 %i.auy, %i.aun
  %i.ava = call i32 @llvm.abs.i32(i32 %i.auz, i1 true)
  %i.avb = icmp samesign ugt i32 %i.ava, %i.ep
  %i.avc = icmp sgt i32 %i.aus, -1
  %i.avd = icmp slt i32 %i.aus, %i.fa
  %i.ave = and i1 %i.avc, %i.avd
  %or.cond654.i = select i1 %i.avb, i1 %i.ave, i1 false
  br i1 %or.cond654.i, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.avf = zext nneg i32 %i.aus to i64
  %i.avg = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.avf
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !59
  %i.avi = sext i16 %i.avh to i32                 ; 2 uses
  %.not641.i = icmp sgt i32 %i.ed, %i.avi
  br i1 %.not641.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.avj = sub nsw i32 %i.avi, %i.aup
  %i.avk = call i32 @llvm.abs.i32(i32 %i.avj, i1 true)
  %i.avl = icmp samesign ugt i32 %i.avk, %i.ep
  br i1 %i.avl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i16 %i.jv, ptr %i.auj, align 2, !tbaa !59
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %.lr.ph310.i
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %exitcond426.not.i = icmp eq i64 %indvars.iv.next423.i, %wide.trip.count425.i
  br i1 %exitcond426.not.i, label %.loopexit223.i, label %.lr.ph310.i, !llvm.loop !169

.loopexit223.i:                                   ; preds = %bb.cn, %._crit_edge284.i
  %indvars.iv.next428.i = add nsw i64 %indvars.iv427.i, %i.nv ; 2 uses
  %i.avm = trunc nsw i64 %indvars.iv.next428.i to i32
  %.not637.i = icmp eq i32 %.0594.i, %i.avm
  %indvars.iv.next386.i = add i32 %indvars.iv385.i, %.0592.i
  br i1 %.not637.i, label %._crit_edge317.i, label %bb.bn, !llvm.loop !170

_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit: ; preds = %._crit_edge317.i, %.noexc105
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 262836
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !65
  switch i32 %i.avo, label %bb.dm [
    i32 1, label %bb.co
    i32 0, label %bb.dc
  ]

bb.co:                                            ; preds = %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit
  %i.avp = load i32, ptr %i.cg, align 4, !tbaa !54 ; 5 uses
  %i.avq = load i32, ptr %i.ce, align 8, !tbaa !53 ; 5 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 262584 ; 2 uses
  %i.avs = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.avr)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.avt = sext i32 %i.avp to i64
  %i.avu = sext i32 %i.avq to i64
  %i.avv = mul nsw i64 %i.avu, %i.avt
  %.not = icmp eq i64 %i.avs, %i.avv
  br i1 %.not, label %_ZN2cv4Mat_IiE6createEii.exit115, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 262376
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avw, i32 noundef %i.avq, i32 noundef %i.avp, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit unwind label %bb.cr

_ZN2cv4Mat_IiE6createEii.exit:                    ; preds = %bb.cq
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 262168
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avx, i32 noundef %i.avq, i32 noundef %i.avp, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit113 unwind label %bb.cr

_ZN2cv4Mat_IiE6createEii.exit113:                 ; preds = %_ZN2cv4Mat_IiE6createEii.exit
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avr, i32 noundef %i.avq, i32 noundef %i.avp, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit115 unwind label %bb.cr

bb.cr:                                            ; preds = %_ZN2cv4Mat_IiE6createEii.exit113, %_ZN2cv4Mat_IiE6createEii.exit, %bb.cq, %bb.co
  %i.avy = landingpad { ptr, i32 }
          cleanup
  br label %.body107

_ZN2cv4Mat_IiE6createEii.exit115:                 ; preds = %_ZN2cv4Mat_IiE6createEii.exit113, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #21
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef %i.avq, i32 noundef %i.avp, i32 noundef 3)
          to label %bb.cs unwind label %bb.cx

bb.cs:                                            ; preds = %_ZN2cv4Mat_IiE6createEii.exit115
  invoke void @_ZN2cv6stereo8Matching15Median1x9FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN2cv6stereo8Matching15Median9x1FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 262820
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !42
  invoke void @_ZN2cv6stereo8Matching18smallRegionRemovalIsEEvRKNS_3MatEiRS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef %i.awa, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.dm

bb.cx:                                            ; preds = %bb.ct, %bb.cs, %_ZN2cv4Mat_IiE6createEii.exit115
  %i.awb = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cy:                                            ; preds = %bb.cu
  %i.awc = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cv
  %i.awd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #21
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn54 = phi { ptr, i32 } [ %i.awd, %bb.cz ], [ %i.awc, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.da ], [ %i.awb, %bb.cx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.body107

bb.dc:                                            ; preds = %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit
  %i.awe = load i32, ptr %i.cg, align 4, !tbaa !54
  %i.awf = load i32, ptr %i.ce, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #21
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef %i.awf, i32 noundef %i.awe, i32 noundef 3)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN2cv6stereo8Matching15Median1x9FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN2cv6stereo8Matching15Median9x1FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 262820
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !42 ; 2 uses
  %i.awi = icmp sgt i32 %i.awh, 0
  br i1 %i.awi, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.awj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.awk = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.awk, align 8
  store i32 50397184, ptr %27, align 8, !tbaa !56
  store ptr %15, ptr %i.awj, align 8, !tbaa !52
  %i.awl = load i32, ptr %i.co, align 8, !tbaa !39
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 262824
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  %i.awo = getelementptr inbounds nuw i8, ptr %28, i64 8
end_hunk_1
