Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv9SIFT_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb:bb.a
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.w
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.v
  %.pn = phi { ptr, i32 } [ %i.y, %bb.v ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.z, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.dh

bb.x:                                             ; preds = %bb.r, %bb.q
  br i1 %5, label %.preheader141, label %bb.ae

.preheader141:                                    ; preds = %bb.x
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !42    ; 11 uses
  %.not149 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not149, label %._crit_edge.thread, label %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader

_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader: ; preds = %.preheader141
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 28                ; 4 uses
  %min.iters.check = icmp ult i64 %i.al, 9
  br i1 %min.iters.check, label %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader
  %i.am = and i64 %i.al, 7                        ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 8, i64 %i.am
  %n.vec = sub nsw i64 %i.al, %i.ao               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi180 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi181 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi182 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi183 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi184 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.ck, %vector.body ]
  %i.ap = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.aq = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.ar = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.au = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.aw = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 188
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  %i.bf = load i32, ptr %i.ax, align 4, !tbaa !231
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !231
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !231
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !231
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3 ; 3 uses
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !231
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !231
  %i.bp = load i32, ptr %i.bd, align 4, !tbaa !231
  %i.bq = load i32, ptr %i.be, align 4, !tbaa !231
  %i.br = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bp, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 3 ; 3 uses
  %i.bv = and <4 x i32> %i.bm, splat (i32 255)    ; 2 uses
  %i.bw = and <4 x i32> %i.bu, splat (i32 255)    ; 2 uses
  %i.bx = lshr <4 x i32> %i.bm, splat (i32 8)
  %i.by = lshr <4 x i32> %i.bu, splat (i32 8)
  %i.bz = and <4 x i32> %i.bx, splat (i32 255)
  %i.ca = and <4 x i32> %i.by, splat (i32 255)
  %i.cb = icmp samesign ult <4 x i32> %i.bv, splat (i32 128)
  %i.cc = icmp samesign ult <4 x i32> %i.bw, splat (i32 128)
  %i.cd = or <4 x i32> %i.bm, splat (i32 -128)
  %i.ce = or <4 x i32> %i.bu, splat (i32 -128)
  %i.cf = select <4 x i1> %i.cb, <4 x i32> %i.bv, <4 x i32> %i.cd ; 2 uses
  %i.cg = select <4 x i1> %i.cc, <4 x i32> %i.bw, <4 x i32> %i.ce ; 2 uses
  %i.ch = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cf, <4 x i32> %vec.phi) ; 2 uses
  %i.ci = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cg, <4 x i32> %vec.phi180) ; 2 uses
  %i.cj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi183, <4 x i32> %i.cf) ; 2 uses
  %i.ck = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi184, <4 x i32> %i.cg) ; 2 uses
  %i.cl = add nsw <4 x i32> %i.bz, splat (i32 -2)
  %i.cm = add nsw <4 x i32> %i.ca, splat (i32 -2)
  %i.cn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi181, <4 x i32> %i.cl) ; 2 uses
  %i.co = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi182, <4 x i32> %i.cm) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ci)
  %i.cq = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  %rdx.minmax185 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cn, <4 x i32> %i.co)
  %i.cr = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax185)
  %rdx.minmax186 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cs = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax186)
  br label %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189

_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189: ; preds = %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader, %middle.block
  %.036145.ph = phi i64 [ 0, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader ], [ %n.vec, %middle.block ]
  %.0137144.ph = phi i32 [ 0, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader ], [ %i.cq, %middle.block ]
  %.0138143.ph = phi i32 [ 0, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader ], [ %i.cr, %middle.block ]
  %.0139142.ph = phi i32 [ -2147483648, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader ], [ %i.cs, %middle.block ]
  br label %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit

._crit_edge:                                      ; preds = %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit
  %i.ct = add i32 %.sroa.speculated112, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated115, i32 0)
  %i.cu = icmp sgt i32 %.sroa.speculated115, -2
  br i1 %i.cu, label %._crit_edge.thread, label %bb.y

_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit: ; preds = %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit
  %.036145 = phi i64 [ %i.df, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit ], [ %.036145.ph, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189 ] ; 2 uses
  %.0137144 = phi i32 [ %.sroa.speculated115, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit ], [ %.0137144.ph, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189 ]
  %.0138143 = phi i32 [ %.sroa.speculated105, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit ], [ %.0138143.ph, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189 ]
  %.0139142 = phi i32 [ %.sroa.speculated112, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit ], [ %.0139142.ph, %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit.preheader189 ]
  %i.cv = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %.036145
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !231 ; 3 uses
  %i.cy = and i32 %i.cx, 255                      ; 2 uses
  %i.cz = lshr i32 %i.cx, 8
  %i.da = and i32 %i.cz, 255
  %i.db = icmp samesign ult i32 %i.cy, 128
  %i.dc = or i32 %i.cx, -128
  %i.dd = select i1 %i.db, i32 %i.cy, i32 %i.dc   ; 2 uses
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.dd, i32 %.0137144) ; 3 uses
  %.sroa.speculated112 = call i32 @llvm.smax.i32(i32 %.0139142, i32 %i.dd) ; 2 uses
  %i.de = add nsw i32 %i.da, -2
  %.sroa.speculated105 = call i32 @llvm.smax.i32(i32 %.0138143, i32 %i.de) ; 2 uses
  %i.df = add nuw i64 %.036145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %_ZN2cvL12unpackOctaveERKNS_8KeyPointERiS3_Rf.exit, !llvm.loop !219

._crit_edge.thread:                               ; preds = %.preheader141, %._crit_edge
  %.sroa.speculated179 = phi i32 [ %.sroa.speculated, %._crit_edge ], [ 0, %.preheader141 ] ; 2 uses
  %.0138.lcssa178 = phi i32 [ %.sroa.speculated105, %._crit_edge ], [ 0, %.preheader141 ]
  %.0139.lcssa177 = phi i32 [ %i.ct, %._crit_edge ], [ -2147483647, %.preheader141 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !73
  %.not54 = icmp sgt i32 %.0138.lcssa178, %i.dh
  br i1 %.not54, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv9SIFT_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.4, i32 noundef 532) #27
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.ac:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %38, align 8, !tbaa !51   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.ac
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.ab
  %.pn55 = phi { ptr, i32 } [ %i.di, %bb.ab ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.dj, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.dh

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.dp = sub i32 %.0139.lcssa177, %.sroa.speculated179
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %.1 = phi i32 [ %.sroa.speculated179, %bb.ad ], [ -1, %bb.x ] ; 5 uses
  %.049 = phi i32 [ %i.dp, %bb.ad ], [ 0, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.dq = icmp slt i32 %.1, 0                     ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !76
  %i.dt = fptrunc double %i.ds to float           ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !121, !range !53, !noundef !54
  %i.dw = trunc nuw i8 %i.dv to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !232
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL18createInitialImageERKNS_3MatEbfbE25__cv_trace_location_fn178)
          to label %.noexc84 unwind label %bb.ce

.noexc84:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !232
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !232
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #25, !noalias !232
  %i.dx = load i32, ptr %32, align 8, !tbaa !47, !noalias !232
  %i.dy = and i32 %i.dx, 4032
  %switch.i = icmp eq i32 %i.dy, 64
  br i1 %switch.i, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !232
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.dz, align 8, !tbaa !78, !noalias !232
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.ea, align 4, !tbaa !79, !noalias !232
  store i32 16842752, ptr %14, align 8, !tbaa !81, !noalias !232
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %32, ptr %i.eb, align 8, !tbaa !82, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !232
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.ed, align 8, !noalias !232
  store i32 33619968, ptr %15, align 8, !tbaa !81, !noalias !232
  store ptr %12, ptr %i.ec, align 8, !tbaa !82, !noalias !232
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.ag unwind label %bb.ai, !noalias !232

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !232
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.ef, align 8, !noalias !232
  store i32 33619968, ptr %16, align 8, !tbaa !81, !noalias !232
  store ptr %13, ptr %i.ee, align 8, !tbaa !82, !noalias !232
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ah unwind label %bb.aj, !noalias !232

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !232
  br label %bb.an

bb.ai:                                            ; preds = %bb.af
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !232
  br label %bb.bu

bb.aj:                                            ; preds = %bb.ag
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !232
  br label %bb.bu

bb.ak:                                            ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !232
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.ej, align 8, !noalias !232
  store i32 33619968, ptr %17, align 8, !tbaa !81, !noalias !232
  store ptr %13, ptr %i.ei, align 8, !tbaa !82, !noalias !232
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.al unwind label %bb.am, !noalias !232

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !232
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !232
  br label %bb.bu

bb.an:                                            ; preds = %bb.al, %bb.ah
  br i1 %i.dq, label %bb.ao, label %bb.bo

bb.ao:                                            ; preds = %bb.an
  %i.el = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float -1.000000e+00) ; 2 uses
  %i.em = fcmp olt float %i.el, f0x3C23D70A
  %.sroa.speculated75.i = select i1 %i.em, float f0x3C23D70A, float %i.el
  %sqrt.i = call float @llvm.sqrt.f32(float %.sroa.speculated75.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !232
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #25, !noalias !232
  br i1 %i.dw, label %bb.ap, label %bb.bh

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32, !noalias !232
  %i.ep = shl nsw i32 %i.eo, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !33, !noalias !232
  %i.es = shl nsw i32 %i.er, 1
  %i.et = load i32, ptr %13, align 8, !tbaa !47, !noalias !232
  %i.eu = and i32 %i.et, 4095
  %.sroa.272.0.insert.ext.i = zext i32 %i.es to i64
  %.sroa.272.0.insert.shift.i = shl nuw i64 %.sroa.272.0.insert.ext.i, 32
  %.sroa.071.0.insert.ext.i = zext i32 %i.ep to i64
  %.sroa.071.0.insert.insert.i = or disjoint i64 %.sroa.272.0.insert.shift.i, %.sroa.071.0.insert.ext.i
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %18, i64 %.sroa.071.0.insert.insert.i, i32 noundef %i.eu)
          to label %bb.aq unwind label %bb.bb, !noalias !232

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !232
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, i32 noundef 2, i32 noundef 3, i32 noundef 5)
          to label %bb.ar unwind label %bb.bc, !noalias !232

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #25, !noalias !232
  %i.ev = load ptr, ptr %20, align 8, !tbaa !238, !noalias !239 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !59, !noalias !232
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !232
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(688) %20, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef -1)
          to label %bb.as unwind label %.body.i, !noalias !232

.body.i:                                          ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25, !noalias !232
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #25, !noalias !232
  br label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fa) #25, !noalias !232
  %i.fb = getelementptr inbounds nuw i8, ptr %20, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fb) #25, !noalias !232
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !232
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31, !noalias !232
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !26, !noalias !232 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 128
  store float 5.000000e-01, ptr %i.fg, align 4, !tbaa !30, !noalias !232
  %i.fi = icmp slt i32 %i.fe, 2
  %i.fj = load i64, ptr %i.fh, align 8, !noalias !232
  %.sink.idx.i.i = select i1 %i.fi, i64 0, i64 %i.fj
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.sink.idx.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4
  store float 5.000000e-01, ptr %i.fk, align 4, !tbaa !30, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !232
  %i.fl = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.fl, align 8, !tbaa !78, !noalias !232
  %i.fm = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.fm, align 4, !tbaa !79, !noalias !232
  store i32 16842752, ptr %21, align 8, !tbaa !81, !noalias !232
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %13, ptr %i.fn, align 8, !tbaa !82, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !232
  %i.fo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.fp, align 8, !noalias !232
  store i32 33619968, ptr %22, align 8, !tbaa !81, !noalias !232
  store ptr %18, ptr %i.fo, align 8, !tbaa !82, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !232
  %i.fq = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.fq, align 8, !tbaa !78, !noalias !232
  %i.fr = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.fr, align 4, !tbaa !79, !noalias !232
  store i32 16842752, ptr %23, align 8, !tbaa !81, !noalias !232
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %19, ptr %i.fs, align 8, !tbaa !82, !noalias !232
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !240, !noalias !232 ; 6 uses
  %i.fv = icmp slt i32 %i.fu, 3
  br i1 %i.fv, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i unwind label %bb.be, !noalias !232

.noexc.i:                                         ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.32, i32 noundef 109) #27
          to label %bb.au unwind label %bb.av, !noalias !232

bb.au:                                            ; preds = %.noexc.i
  unreachable

end_hunk_0
begin_hunk_1_@_ZN2cv9SIFT_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb:bb.a
  store ptr %18, ptr %i.gv, align 8, !tbaa !82, !noalias !232
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !32, !noalias !232
  %i.gz = shl nsw i32 %i.gy, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !33, !noalias !232
  %i.hc = shl nsw i32 %i.hb, 1
  %.sroa.270.0.insert.ext.i = zext i32 %i.hc to i64
  %.sroa.270.0.insert.shift.i = shl nuw i64 %.sroa.270.0.insert.ext.i, 32
  %.sroa.069.0.insert.ext.i = zext i32 %i.gz to i64
  %.sroa.069.0.insert.insert.i = or disjoint i64 %.sroa.270.0.insert.shift.i, %.sroa.069.0.insert.ext.i
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 %.sroa.069.0.insert.insert.i, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.bi unwind label %bb.bj, !noalias !232

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !232
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !232
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi, %bb.ba
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25, !noalias !232
  %i.he = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.he, align 8, !tbaa !78, !noalias !232
  %i.hf = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.hf, align 4, !tbaa !79, !noalias !232
  store i32 16842752, ptr %27, align 8, !tbaa !81, !noalias !232
  %i.hg = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %18, ptr %i.hg, align 8, !tbaa !82, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25, !noalias !232
  %i.hh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.hi, align 8, !noalias !232
  store i32 33619968, ptr %28, align 8, !tbaa !81, !noalias !232
  store ptr %40, ptr %i.hh, align 8, !tbaa !82, !noalias !232
  %i.hj = fpext float %sqrt.i to double           ; 2 uses
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 0, double noundef %i.hj, double noundef %i.hj, i32 noundef 4, i32 noundef 0)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !232
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !232
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !232
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #25
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj, %bb.bg, %bb.bb
  %.pn58.pn.pn.i = phi { ptr, i32 } [ %i.hk, %bb.bm ], [ %.pn51.pn.pn.pn.pn.pn.i, %bb.bg ], [ %i.go, %bb.bb ], [ %i.hd, %bb.bj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !232
  br label %bb.bu

bb.bo:                                            ; preds = %bb.an
  %i.hl = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float -2.500000e-01) ; 2 uses
  %i.hm = fcmp olt float %i.hl, f0x3C23D70A
  %.sroa.speculated.i = select i1 %i.hm, float f0x3C23D70A, float %i.hl
  %sqrt79.i = call float @llvm.sqrt.f32(float %.sroa.speculated.i)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25, !noalias !232
  %i.hn = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.hn, align 8, !tbaa !78, !noalias !232
  %i.ho = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.ho, align 4, !tbaa !79, !noalias !232
  store i32 16842752, ptr %29, align 8, !tbaa !81, !noalias !232
  %i.hp = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %13, ptr %i.hp, align 8, !tbaa !82, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25, !noalias !232
  %i.hq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.hr, align 8, !noalias !232
  store i32 33619968, ptr %30, align 8, !tbaa !81, !noalias !232
  store ptr %40, ptr %i.hq, align 8, !tbaa !82, !noalias !232
  %i.hs = fpext float %sqrt79.i to double         ; 2 uses
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, i64 0, double noundef %i.hs, double noundef %i.hs, i32 noundef 4, i32 noundef 0)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25, !noalias !232
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25, !noalias !232
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #25
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp, %bb.bl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !232
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !232
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !18, !noalias !232
  %.not.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %bb.bv unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #26
  unreachable

bb.bu:                                            ; preds = %bb.bq, %bb.bn, %bb.am, %bb.aj, %bb.ai
  %.pn58.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ek, %bb.am ], [ %i.eh, %bb.aj ], [ %i.eg, %bb.ai ], [ %.pn58.pn.pn.i, %bb.bn ], [ %i.ht, %bb.bq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !232
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !232
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !232
  br label %.body

bb.bv:                                            ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %i.hy = icmp sgt i32 %.049, 0
  br i1 %i.hy, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hz = getelementptr inbounds nuw i8, ptr %40, i64 12
  %i.ia = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !41
  %i.ic = load i32, ptr %i.hz, align 4, !tbaa !41
  %i.id = call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.ic)
  %i.ie = sitofp i32 %i.id to double
  %i.if = call double @log(double noundef %i.ie) #25
  %i.ig = fdiv double %i.if, f0x3FE62E42FEFA39EF
  %i.ih = fadd double %i.ig, -2.000000e+00
  %i.ii = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ij = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ii)
  %i.ik = sub nsw i32 %i.ij, %.1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.il = phi i32 [ %i.ik, %bb.bw ], [ %.049, %bb.bv ]
  invoke void @_ZNK2cv9SIFT_Impl20buildGaussianPyramidERKNS_3MatERSt6vectorIS1_SaIS1_EEi(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %i.il)
          to label %bb.by unwind label %bb.cy

bb.by:                                            ; preds = %bb.bx
  br i1 %5, label %bb.cm, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv9SIFT_Impl15buildDoGPyramidERKSt6vectorINS_3MatESaIS2_EERS4_(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZNK2cv9SIFT_Impl21findScaleSpaceExtremaERKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN2cv15KeyPointsFilter22removeDuplicatedSortedERSt6vectorINS_8KeyPointESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = load i32, ptr %i.im, align 8, !tbaa !118 ; 2 uses
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN2cv15KeyPointsFilter10retainBestERSt6vectorINS_8KeyPointESaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.in)
          to label %bb.cf unwind label %bb.ch

bb.ce:                                            ; preds = %bb.ae
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  br i1 %i.dq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.cf
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !39 ; 2 uses
  %i.is = load ptr, ptr %3, align 8, !tbaa !42    ; 3 uses
  %.not150 = icmp eq ptr %i.ir, %i.is
  br i1 %.not150, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 28
  %i.ix = sub nsw i32 0, %.1
  %i.iy = shl nuw i32 1, %i.ix
  %i.iz = sitofp i32 %i.iy to float
  %i.ja = fdiv float 1.000000e+00, %i.iz          ; 2 uses
  %i.jb = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph, %bb.cg
  %.0148.a = phi i64 [ 0, %.lr.ph ], [ %i.jl, %bb.cg ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [28 x i8], ptr %i.is, i64 %.0148.a ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 20 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !231 ; 2 uses
  %44 = and i32 %i.jf, -256
  %45 = add nsw i32 %i.jf, %.1
  %46 = and i32 %45, 255
  %47 = or disjoint i32 %46, %44
  store i32 %47, ptr %i.je, align 4, !tbaa !231
  %i.jg = load <2 x float>, ptr %i.jd, align 4, !tbaa !30
  %i.jh = fmul <2 x float> %i.jc, %i.jg
  store <2 x float> %i.jh, ptr %i.jd, align 4, !tbaa !30
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !241
  %i.jk = fmul float %i.ja, %i.jj
  store float %i.jk, ptr %i.ji, align 4, !tbaa !241
  %i.jl = add nuw i64 %.0148.a, 1                 ; 2 uses
  %exitcond152.not = icmp eq i64 %i.jl, %i.iw
  br i1 %exitcond152.not, label %.loopexit, label %bb.cg, !llvm.loop !224

bb.ch:                                            ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cd, %.loopexit, %bb.cj
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  br label %bb.dg

.loopexit:                                        ; preds = %bb.cg, %.preheader, %bb.cf
  %i.jn = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.ci unwind label %bb.ch

bb.ci:                                            ; preds = %.loopexit
  br i1 %i.jn, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN2cv15KeyPointsFilter15runByPixelsMaskERSt6vectorINS_8KeyPointESaIS2_EERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.ck unwind label %bb.ch

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.jo = load ptr, ptr %42, align 8, !tbaa !15   ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jo, %i.jq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ck, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i ], [ %i.jo, %bb.ck ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #25
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jr, %i.jq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %42, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ck
  %i.js = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.jo, %bb.ck ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.jt = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !122
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jx) #29
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  br label %bb.cm

bb.cm:                                            ; preds = %bb.by, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.jy = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cn unwind label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.jy, label %bb.co, label %bb.dc

bb.co:                                            ; preds = %bb.cn
  %i.jz = load ptr, ptr %0, align 8, !tbaa !59
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 104
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %bb.cp unwind label %bb.cy

bb.cp:                                            ; preds = %bb.co
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !39
  %i.kf = load ptr, ptr %3, align 8, !tbaa !42
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = sdiv exact i64 %i.ki, 28
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !120
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.kk, i32 noundef %i.kc, i32 noundef %i.km, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.cq unwind label %bb.cy

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  %i.kn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc86 unwind label %bb.cz

.noexc86:                                         ; preds = %bb.cq
  %i.ko = icmp eq i32 %i.kn, 65536
  br i1 %i.ko, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.noexc86
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !82, !noalias !242
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %i.kq)
          to label %_ZNK2cv11_InputArray6getMatEi.exit89 unwind label %bb.cz

bb.cs:                                            ; preds = %.noexc86
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit89 unwind label %bb.cz

_ZNK2cv11_InputArray6getMatEi.exit89:             ; preds = %bb.cr, %bb.cs
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL15calcDescriptorsERKSt6vectorINS_3MatESaIS1_EERKS0_INS_8KeyPointESaIS6_EERS1_iiE25__cv_trace_location_fn468)
          to label %.noexc91 unwind label %bb.da

.noexc91:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.kt = load ptr, ptr %i.kd, align 8, !tbaa !39
  %i.ku = load ptr, ptr %3, align 8, !tbaa !42
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 28
  %i.kz = trunc i64 %i.ky to i32
  store i32 0, ptr %7, align 4, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv23calcDescriptorsComputerE, i64 16), ptr %8, align 8, !tbaa !59
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %41, ptr %i.lb, align 8, !tbaa !87
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.lc, align 8, !tbaa !106
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %43, ptr %i.ld, align 8, !tbaa !243
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %i.ks, ptr %i.le, align 8, !tbaa !124
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 %.1, ptr %i.lf, align 4, !tbaa !125
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, double noundef -1.000000e+00)
          to label %bb.ct unwind label %bb.cw

bb.ct:                                            ; preds = %.noexc91
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !18
  %.not.i.i90 = icmp eq i32 %i.lh, 0
  br i1 %.not.i.i90, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.cx unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #26
  unreachable

bb.cw:                                            ; preds = %.noexc91
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body92

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  br label %bb.dc

bb.cy:                                            ; preds = %bb.bx, %bb.cm, %bb.cp, %bb.co
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit89
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body92

.body92:                                          ; preds = %bb.cw, %bb.da
  %eh.lpad-body93 = phi { ptr, i32 } [ %i.ln, %bb.da ], [ %i.lk, %bb.cw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #25
  br label %bb.db

bb.db:                                            ; preds = %.body92, %bb.cz
  %.pn59 = phi { ptr, i32 } [ %eh.lpad-body93, %.body92 ], [ %i.lm, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  br label %bb.dg

bb.dc:                                            ; preds = %bb.cx, %bb.cn
  %i.lo = load ptr, ptr %41, align 8, !tbaa !15   ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i94 = icmp eq ptr %i.lo, %i.lq
  br i1 %.not4.i.i.i94, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i100, label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %bb.dc, %.lr.ph.i.i.i95
  %.05.i.i.i96 = phi ptr [ %i.lr, %.lr.ph.i.i.i95 ], [ %i.lo, %bb.dc ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i96) #25
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i96, i64 208 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.lr, %i.lq
end_hunk_1
