Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_site_packages-463e41f0b954c590.ty_site_packages.59c11f672dda2eba-cgu.00?download=true
inline.NumInlined: 656
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment16real_stdlib_path:bb.a
    i8 2, label %bb.l
  ], !prof !61

bb.k:                                             ; preds = %bb.j
  %i.bo = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE)
          to label %bb.m unwind label %bb.h, !noalias !722 ; 2 uses

bb.l:                                             ; preds = %bb.j, %bb.m, %bb.j
  %.sroa.027.0.i = phi i8 [ %i.bo, %bb.m ], [ %i.bn, %bb.j ], [ %i.bn, %bb.j ]
  %i.bp = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !720, !nonnull !43, !align !49, !noundef !43
  %i.bq = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, i8 noundef %.sroa.027.0.i)
          to label %bb.n unwind label %bb.h, !noalias !722

bb.m:                                             ; preds = %bb.k
  %i.br = icmp eq i8 %i.bo, 0
  br i1 %i.br, label %bb.t, label %bb.l

bb.n:                                             ; preds = %bb.l
  br i1 %i.bq, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !720
  %i.bs = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !720, !nonnull !43, !align !49, !noundef !43 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !720
  store ptr %i.ba, ptr %i.av, align 8, !noalias !720
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !720
  store ptr @93, ptr %i.aw, align 8, !noalias !720
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.bu, align 8, !noalias !720
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !720
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @11, ptr %i.bv, align 8, !noalias !720
  store i64 1, ptr %i.ay, align 8, !noalias !720
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 8, !noalias !720
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx.i, align 8, !noalias !720
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.bt, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !720
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %.noexc.i unwind label %bb.h, !noalias !722

.noexc.i:                                         ; preds = %bb.o
  %i.bw = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !723
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

bb.p:                                             ; preds = %.noexc.i
  %i.by = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !723 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 6
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i64 %i.by, 3
  br i1 %i.ca, label %bb.q, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !723, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !723
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !722, !nonnull !43, !noundef !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !722, !noundef !43
  store i64 4, ptr %i.ap, align 8, !noalias !723
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.cd, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !723
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.cf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !723
  %i.cg = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc67.i unwind label %bb.h, !noalias !722 ; 2 uses

.noexc67.i:                                       ; preds = %bb.q
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0      ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !43, !noalias !722, !nonnull !43
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc68.i unwind label %bb.h, !noalias !722, !inline_history !695

.noexc68.i:                                       ; preds = %.noexc67.i
  br i1 %i.cl, label %bb.r, label %.noexc69.i

bb.r:                                             ; preds = %.noexc68.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cb, ptr noundef nonnull %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %.noexc69.i unwind label %bb.h, !noalias !722

.noexc69.i:                                       ; preds = %bb.r, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !723
  br label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i: ; preds = %.noexc69.i, %bb.p, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !720
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %bb.u, %bb.t, %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !721
  store i64 -1, ptr %0, align 8, !alias.scope !718
  br label %_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment21real_stdlib_directory.exit

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.cn = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !720
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.cp = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !720 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !720, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !720
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !722, !nonnull !43, !noundef !43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !722, !noundef !43
  store i64 4, ptr %i.au, align 8, !noalias !720
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.cu, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !720
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.cw, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !720
  %i.cx = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.w unwind label %bb.h, !noalias !722 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !43, !noalias !722, !nonnull !43
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.x unwind label %bb.h, !noalias !722

bb.x:                                             ; preds = %bb.w
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !720
  %i.dd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !720, !nonnull !43, !align !49, !noundef !43
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !720
  store ptr %i.ba, ptr %i.aq, align 8, !noalias !720
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !720
  store ptr @93, ptr %i.ar, align 8, !noalias !720
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.df, align 8, !noalias !720
  store ptr %i.ar, ptr %i.as, align 8, !noalias !720
  %i.dg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @11, ptr %i.dg, align 8, !noalias !720
  store i64 1, ptr %i.at, align 8, !noalias !720
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !720
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 1, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !720
  %i.dh = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.de, ptr %i.dh, align 8, !noalias !720
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cs, ptr noundef nonnull %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %bb.aa unwind label %bb.h, !noalias !722

bb.z:                                             ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !720
  br label %bb.s

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !720
  br label %bb.z

bb.ab:                                            ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !722
  unreachable

common.resume:                                    ; preds = %.body86.i.i, %bb.bz, %bb.cd, %bb.du, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %.pn34.i.i, %.body86.i.i ], [ %i.gg, %bb.bz ], [ %.pn.i, %bb.cd ], [ %i.kf, %bb.du ]
  resume { ptr, i32 } %common.resume.op

_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment21real_stdlib_directory.exit: ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !720
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment21real_stdlib_directory.exit

bb.ac:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dk = load i32, ptr %i.dj, align 8, !range !46, !alias.scope !725, !noundef !43
  %.not.i1 = icmp ne i32 %i.dk, -1                ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %4 = load i8, ptr %i.dl, align 8, !alias.scope !725
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 113
  %6 = load i8, ptr %5, align 1, !alias.scope !725
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.dn = load i8, ptr %i.dm, align 1, !range !64, !alias.scope !725, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !44, !alias.scope !725, !noundef !43
  %.not90.i = icmp eq i64 %i.dp, -1
  br i1 %.not90.i, label %bb.dv, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.dq, align 8, !alias.scope !726
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 168
  %.val95.i = load ptr, ptr %i.dr, align 8, !alias.scope !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !727
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do), !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !727
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !727, !nonnull !43, !noundef !43
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !727, !noundef !43
  invoke void %.val95.i(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.dv)
          to label %bb.af unwind label %bb.ae, !noalias !728

.body86.i.i:                                      ; preds = %bb.an, %bb.am, %.body81.i.i, %bb.ae
  %.pn34.i.i = phi { ptr, i32 } [ %i.dw, %bb.ae ], [ %.pn29.i.i, %.body81.i.i ], [ %i.ep, %bb.am ], [ %i.ep, %bb.an ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #26
          to label %common.resume unwind label %bb.bt, !noalias !728

bb.ae:                                            ; preds = %bb.bx, %bb.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i, %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = load ptr, ptr %i.k, align 8, !noalias !727, !noundef !43 ; 6 uses
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val40.i.i = load ptr, ptr %i.dz, align 8, !noalias !727, !nonnull !43, !noundef !43 ; 8 uses
  br i1 %i.dy, label %bb.bv, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !43, !noalias !728, !nonnull !43
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !727
  invoke void %i.eb(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull %i.dx)
          to label %bb.ai unwind label %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

.body81.i.i:                                      ; preds = %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bc, %.body57.i.i, %bb.aq
  %.pn29.i.i = phi { ptr, i32 } [ %i.fy, %bb.br ], [ %.pn24.i.i, %.body57.i.i ], [ %i.ex, %bb.aq ], [ %i.fi, %bb.bc ], [ %lpad.loopexit.split-lp46, %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %i.dx, ptr nonnull %.val40.i.i) #26
          to label %.body86.i.i unwind label %bb.bt, !noalias !728

bb.ai:                                            ; preds = %bb.ah
  %i.ei = load i64, ptr %i.j, align 8, !range !42, !noalias !727, !noundef !43
  switch i64 %i.ei, label %bb.ao [
    i64 -2, label %.loopexit1.i.i
    i64 -1, label %.thread.i.i
  ]

.loopexit1.i.i:                                   ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !727
  %i.ej = load ptr, ptr %.val40.i.i, align 8, !invariant.load !43, !noalias !728 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit1.i.i
  invoke void %i.ej(ptr noundef nonnull %i.dx)
          to label %bb.ak unwind label %bb.am, !noalias !728

bb.ak:                                            ; preds = %bb.aj, %.loopexit1.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !50, !invariant.load !43, !noalias !728 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !51, !invariant.load !43, !noalias !728
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef range(i64 1, 0) %i.el, i64 noundef range(i64 1, 536870913) %i.eo) #25, !noalias !728
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i

bb.am:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !range !50, !invariant.load !43, !noalias !728 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.body86.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !range !51, !invariant.load !43, !noalias !728
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef range(i64 1, 0) %i.er, i64 noundef range(i64 1, 536870913) %i.eu) #25, !noalias !728
  br label %.body86.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !727
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !727
  %i.ev = load i8, ptr %i.ec, align 8, !range !58, !noalias !727, !noundef !43
  %i.ew = icmp eq i8 %i.ev, 1
  br i1 %i.ew, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i unwind label %bb.aq, !noalias !728

bb.aq:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body81.i.i unwind label %bb.ar, !noalias !728

bb.ar:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i unwind label %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !727
  %i.ez = load ptr, ptr %i.ed, align 8, !noalias !727, !nonnull !43, !noundef !43
  %i.fa = load i64, ptr %i.ee, align 8, !noalias !727, !noundef !43
  %i.fb = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fa)
          to label %bb.at unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728 ; 2 uses

.body57.i.i:                                      ; preds = %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp, %bb.bj, %.body52.loopexit.split-lp.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body52.loopexit.split-lp.i.i ], [ %i.fw, %bb.bp ], [ %i.fr, %bb.bj ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %.body81.i.i unwind label %bb.bt, !noalias !728

.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i, %bb.az, %bb.ay, %bb.au, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i, %bb.av
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i.i

bb.at:                                            ; preds = %bb.as
  %i.fc = extractvalue { ptr, i64 } %i.fb, 0      ; 3 uses
  %i.fd = extractvalue { ptr, i64 } %i.fb, 1      ; 2 uses
  %.not21.i.i = icmp eq ptr %i.fc, null
  br i1 %.not21.i.i, label %bb.av, label %bb.au, !prof !56

bb.au:                                            ; preds = %bb.at
  %i.fe = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.fd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 8)
          to label %bb.ax unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
          to label %bb.aw unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  br i1 %i.fe, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.fd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6)
          to label %bb.ba unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.az:                                            ; preds = %bb.ba, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !727
  %i.fg = load ptr, ptr %i.ed, align 8, !noalias !727, !nonnull !43, !noundef !43
  %i.fh = load i64, ptr %i.ee, align 8, !noalias !727, !noundef !43
  invoke void %.val.i(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %i.fh)
          to label %bb.be unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.ff, label %bb.az, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit97.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit60.i.i, %bb.ba
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i unwind label %bb.bc, !noalias !728

bb.bc:                                            ; preds = %bb.bb
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body81.i.i unwind label %bb.bd, !noalias !728

bb.bd:                                            ; preds = %bb.bc
  %i.fj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment16real_stdlib_path:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !727
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq)
          to label %bb.bl unwind label %.body52.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i unwind label %bb.bj, !noalias !728

bb.bj:                                            ; preds = %bb.bi
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i.i unwind label %bb.bk, !noalias !728

bb.bk:                                            ; preds = %bb.bj
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit60.i.i unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit60.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !727
  br label %bb.bb

bb.bl:                                            ; preds = %bb.bh
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i unwind label %bb.bm, !noalias !728

bb.bm:                                            ; preds = %bb.bl
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body63.i.i unwind label %bb.bn, !noalias !728

bb.bn:                                            ; preds = %bb.bm
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i unwind label %bb.bo, !noalias !728

bb.bo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i.i

.body63.i.i:                                      ; preds = %bb.bo, %bb.bm
  %eh.lpad-body64.i.i = phi { ptr, i32 } [ %i.fv, %bb.bo ], [ %i.ft, %bb.bm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !727
  br label %.body52.loopexit.split-lp.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !727
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i unwind label %bb.bp, !noalias !728

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i.i unwind label %bb.bq, !noalias !728

bb.bq:                                            ; preds = %bb.bp
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !727
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i unwind label %bb.br, !noalias !728

bb.br:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body81.i.i unwind label %bb.bs, !noalias !728

bb.bs:                                            ; preds = %bb.br
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i unwind label %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !727
  br label %.loopexit1.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i: ; preds = %bb.bv, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  %i.ga = load ptr, ptr %i.ds, align 8, !noalias !727, !nonnull !43, !noundef !43
  %i.gb = load i64, ptr %i.du, align 8, !noalias !727, !noundef !43
  %i.gc = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gb)
          to label %bb.bw unwind label %bb.ae, !noalias !728 ; 2 uses

bb.bt:                                            ; preds = %.body52.loopexit.split-lp.i.i, %.body57.i.i, %.body81.i.i, %.body86.i.i
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

bb.bu:                                            ; preds = %bb.be
  %.val.i92.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !729, !noalias !727, !nonnull !43, !noundef !43
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.val.i92.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit97.i.i unwind label %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit97.i.i: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !727
  br label %bb.bb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !727
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i

.thread.i.i:                                      ; preds = %bb.ai
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !727, !nonnull !43, !noundef !43
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.sroa.5.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i unwind label %.loopexit.split-lp11.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i: ; preds = %.thread.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !727
  br label %bb.ah

bb.bv:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.val40.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i unwind label %bb.ae, !noalias !728

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i
  %i.ge = extractvalue { ptr, i64 } %i.gc, 0      ; 2 uses
  %.not33.i.i = icmp eq ptr %i.ge, null
  br i1 %.not33.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gf = extractvalue { ptr, i64 } %i.gc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !727
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ge, i64 noundef %i.gf)
          to label %bb.cb unwind label %bb.ae, !noalias !728

bb.by:                                            ; preds = %bb.cb, %bb.bw
  %.sroa.0.0115.i = phi i64 [ %.sroa.0.0.copyload111.i, %bb.cb ], [ -1, %bb.bw ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i unwind label %bb.bz, !noalias !728

bb.bz:                                            ; preds = %bb.by
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ca, !noalias !728

bb.ca:                                            ; preds = %bb.bz
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !728
  unreachable

bb.cb:                                            ; preds = %bb.bx
  %.sroa.0.0.copyload111.i = load i64, ptr %i.d, align 8, !noalias !730
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx112.i, i64 16, i1 false), !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !727
  br label %bb.by

_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i: ; preds = %bb.by
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  %.not91.i = icmp eq i64 %.sroa.0.0115.i, -1
  br i1 %.not91.i, label %bb.dv, label %bb.cc

bb.cc:                                            ; preds = %_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !731
  store i64 %.sroa.0.0115.i, ptr %i.ao, align 8, !noalias !731
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !731
  %.sroa.7113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 6, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !731
  %.sroa.087.0.insert.ext.i = zext i1 %.not.i1 to i40
  %7 = zext i8 %4 to i40
  %8 = shl nuw nsw i40 %7, 8
  %.sroa.087.1.insert.shift.i = select i1 %.not.i1, i40 %8, i40 0
  %.sroa.087.1.insert.insert.i = or disjoint i40 %.sroa.087.1.insert.shift.i, %.sroa.087.0.insert.ext.i
  %9 = zext i8 %6 to i40
  %10 = shl nuw nsw i40 %9, 16
  %.sroa.087.2.insert.shift.i = select i1 %.not.i1, i40 %10, i40 0
  %.sroa.087.2.insert.insert.i = or disjoint i40 %.sroa.087.1.insert.insert.i, %.sroa.087.2.insert.shift.i
  %.sroa.087.4.insert.ext.i = zext nneg i8 %i.dn to i40
  %.sroa.087.4.insert.shift.i = shl nuw nsw i40 %.sroa.087.4.insert.ext.i, 32
  %.sroa.087.4.insert.insert.i = or disjoint i40 %.sroa.087.2.insert.insert.i, %.sroa.087.4.insert.shift.i
  invoke fastcc void @_RNvCs7HL9jt3VRMY_16ty_site_packages37real_stdlib_directory_from_sys_prefix(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, i40 %.sroa.087.4.insert.insert.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
          to label %bb.cf unwind label %bb.ce, !noalias !724

bb.cd:                                            ; preds = %bb.cg, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.gk, %bb.cg ], [ %i.gi, %bb.ce ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages13SysPrefixPathEBD_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao) #26
          to label %common.resume unwind label %bb.dt, !noalias !732

bb.ce:                                            ; preds = %bb.cc
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cf:                                            ; preds = %bb.cc
  %i.gj = load i64, ptr %i.an, align 8, !range !48, !noalias !731, !noundef !43
  %.not92.i = icmp eq i64 %i.gj, -1
  br i1 %.not92.i, label %bb.ch, label %bb.db

bb.cg:                                            ; preds = %bb.dq, %bb.do, %bb.dn, %bb.dk, %.noexc102.i, %bb.dj, %bb.dh, %bb.de, %bb.dd, %bb.cx, %bb.cv, %bb.cu, %bb.cq, %.noexc96.i, %bb.cp, %bb.cn, %bb.ck, %bb.cj
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtCs7HL9jt3VRMY_16ty_site_packages20StdlibDiscoveryErrorEEB1S_(ptr noalias noundef align 8 dereferenceable(72) %i.an) #26
          to label %bb.cd unwind label %bb.dt, !noalias !732

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !731
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.gl, ptr %i.am, align 8, !noalias !731
  %i.gm = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !731
  %i.gn = icmp ult i64 %i.gm, 2
  br i1 %i.gn, label %bb.ci, label %bb.cs

bb.ci:                                            ; preds = %bb.ch
  %i.go = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, i64 16) monotonic, align 8, !noalias !731 ; 3 uses
  switch i8 %i.go, label %bb.cj [
    i8 0, label %bb.cs
    i8 1, label %bb.ck
    i8 2, label %bb.ck
  ], !prof !61

bb.cj:                                            ; preds = %bb.ci
  %i.gp = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE)
          to label %bb.cl unwind label %bb.cg, !noalias !732 ; 2 uses

bb.ck:                                            ; preds = %bb.ci, %bb.cl, %bb.ci
  %.sroa.011.0.i = phi i8 [ %i.gp, %bb.cl ], [ %i.go, %bb.ci ], [ %i.go, %bb.ci ]
  %i.gq = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !731, !nonnull !43, !align !49, !noundef !43
  %i.gr = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gq, i8 noundef %.sroa.011.0.i)
          to label %bb.cm unwind label %bb.cg, !noalias !732

bb.cl:                                            ; preds = %bb.cj
  %i.gs = icmp eq i8 %i.gp, 0
  br i1 %i.gs, label %bb.cs, label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.gr, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !731
  %i.gt = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !731, !nonnull !43, !align !49, !noundef !43 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !731
  store ptr %i.am, ptr %i.ai, align 8, !noalias !731
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_7Display3fmtCs7HL9jt3VRMY_16ty_site_packages, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !731
  store ptr @73, ptr %i.aj, align 8, !noalias !731
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.gv, align 8, !noalias !731
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !731
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @11, ptr %i.gw, align 8, !noalias !731
  store i64 1, ptr %i.al, align 8, !noalias !731
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 8, !noalias !731
  %.sroa.013.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 1, ptr %.sroa.013.sroa.5.0..sroa_idx.i, align 8, !noalias !731
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.gu, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !731
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc.i2 unwind label %bb.cg, !noalias !732

.noexc.i2:                                        ; preds = %bb.cn
  %i.gx = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !733
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.co, label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

bb.co:                                            ; preds = %.noexc.i2
  %i.gz = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !733 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 6
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i64 %i.gz, 3
  br i1 %i.hb, label %bb.cp, label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.hc = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !733, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !733
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !732, !nonnull !43, !noundef !43
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !732, !noundef !43
  store i64 4, ptr %i.c, align 8, !noalias !733
  %.sroa.3.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.he, ptr %.sroa.3.0..sroa_idx.i.i3, align 8, !noalias !733
  %.sroa.5.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.hg, ptr %.sroa.5.0..sroa_idx.i.i4, align 8, !noalias !733
  %i.hh = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc96.i unwind label %bb.cg, !noalias !732 ; 2 uses

.noexc96.i:                                       ; preds = %bb.cp
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !43, !noalias !732, !nonnull !43
  %i.hm = invoke noundef zeroext i1 %i.hl(ptr noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc97.i unwind label %bb.cg, !noalias !732, !inline_history !707

.noexc97.i:                                       ; preds = %.noexc96.i
  br i1 %i.hm, label %bb.cq, label %.noexc98.i

bb.cq:                                            ; preds = %.noexc97.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hc, ptr noundef nonnull %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc98.i unwind label %bb.cg, !noalias !732

.noexc98.i:                                       ; preds = %bb.cq, %.noexc97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !733
  br label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i: ; preds = %.noexc98.i, %bb.co, %.noexc.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !731
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cy, %bb.ct, %bb.cs, %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !731
  br label %bb.da

bb.cs:                                            ; preds = %bb.cm, %bb.cl, %bb.ci, %bb.ch
  %i.hn = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !731
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ct, label %bb.cr

bb.ct:                                            ; preds = %bb.cs
  %i.hp = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !731 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, 6
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ugt i64 %i.hp, 3
  br i1 %i.hr, label %bb.cu, label %bb.cr

bb.cu:                                            ; preds = %bb.ct
  %i.hs = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !731, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !731
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !732, !nonnull !43, !noundef !43
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !732, !noundef !43
  store i64 4, ptr %i.ah, align 8, !noalias !731
  %.sroa.347.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.hu, ptr %.sroa.347.0..sroa_idx.i, align 8, !noalias !731
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.hw, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !731
  %i.hx = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.cv unwind label %bb.cg, !noalias !732 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.hy = extractvalue { ptr, ptr } %i.hx, 0      ; 2 uses
  %i.hz = extractvalue { ptr, ptr } %i.hx, 1      ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !invariant.load !43, !noalias !732, !nonnull !43
  %i.ic = invoke noundef zeroext i1 %i.ib(ptr noundef %i.hy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.cw unwind label %bb.cg, !noalias !732

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.ic, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !731
  %i.id = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !731, !nonnull !43, !align !49, !noundef !43
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !731
  store ptr %i.am, ptr %i.ad, align 8, !noalias !731
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_7Display3fmtCs7HL9jt3VRMY_16ty_site_packages, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !731
  store ptr @73, ptr %i.ae, align 8, !noalias !731
  %i.if = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.if, align 8, !noalias !731
  store ptr %i.ae, ptr %i.af, align 8, !noalias !731
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @11, ptr %i.ig, align 8, !noalias !731
  store i64 1, ptr %i.ag, align 8, !noalias !731
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !731
end_hunk_1
begin_hunk_2_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment19site_packages_paths:bb.a
    i8 1, label %bb.l
    i8 2, label %bb.l
  ], !prof !61

bb.k:                                             ; preds = %bb.j
  %i.bz = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE)
          to label %bb.m unwind label %bb.h, !noalias !762 ; 2 uses

bb.l:                                             ; preds = %bb.j, %bb.m, %bb.j
  %.sroa.026.0.i = phi i8 [ %i.bz, %bb.m ], [ %i.by, %bb.j ], [ %i.by, %bb.j ]
  %i.ca = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !764, !nonnull !43, !align !49, !noundef !43
  %i.cb = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, i8 noundef %.sroa.026.0.i)
          to label %bb.n unwind label %bb.h, !noalias !762

bb.m:                                             ; preds = %bb.k
  %i.cc = icmp eq i8 %i.bz, 0
  br i1 %i.cc, label %bb.t, label %bb.l

bb.n:                                             ; preds = %bb.l
  br i1 %i.cb, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !764
  %i.cd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !764, !nonnull !43, !align !49, !noundef !43 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !764
  store ptr %i.bl, ptr %i.bg, align 8, !noalias !764
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs3_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SitePackagesPathsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !764
  store ptr @94, ptr %i.bh, align 8, !noalias !764
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.cf, align 8, !noalias !764
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !764
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @11, ptr %i.cg, align 8, !noalias !764
  store i64 1, ptr %i.bj, align 8, !noalias !764
  %.sroa.028.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !noalias !764
  %.sroa.028.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx.i, align 8, !noalias !764
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ce, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !764
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc.i unwind label %bb.h, !noalias !762

.noexc.i:                                         ; preds = %bb.o
  %i.ch = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !766
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

bb.p:                                             ; preds = %.noexc.i
  %i.cj = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !766 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.cj, 3
  br i1 %i.cl, label %bb.q, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !766, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !766
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !762, !nonnull !43, !noundef !43
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !762, !noundef !43
  store i64 4, ptr %i.ba, align 8, !noalias !766
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.co, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !766
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !766
  %i.cr = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc62.i unwind label %bb.h, !noalias !762 ; 2 uses

.noexc62.i:                                       ; preds = %bb.q
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cr, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !43, !noalias !762, !nonnull !43
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %.noexc63.i unwind label %bb.h, !noalias !762, !inline_history !744

.noexc63.i:                                       ; preds = %.noexc62.i
  br i1 %i.cw, label %bb.r, label %.noexc64.i

bb.r:                                             ; preds = %.noexc63.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cm, ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc64.i unwind label %bb.h, !noalias !762

.noexc64.i:                                       ; preds = %bb.r, %.noexc63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !766
  br label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i: ; preds = %.noexc64.i, %bb.p, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !764
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %bb.u, %bb.t, %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(72) %i.bl, i64 72, i1 false), !noalias !765
  store i64 -1, ptr %0, align 8, !alias.scope !762
  br label %_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment25site_packages_directories.exit

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.cy = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !764
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.da = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !764 ; 2 uses
  %i.db = icmp ult i64 %i.da, 6
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = icmp samesign ugt i64 %i.da, 3
  br i1 %i.dc, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !764, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !764
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !762, !nonnull !43, !noundef !43
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !762, !noundef !43
  store i64 4, ptr %i.bf, align 8, !noalias !764
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.df, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !764
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.dh, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !764
  %i.di = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.w unwind label %bb.h, !noalias !762 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dj = extractvalue { ptr, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.di, 1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !43, !noalias !762, !nonnull !43
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.x unwind label %bb.h, !noalias !762

bb.x:                                             ; preds = %bb.w
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !764
  %i.do = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !764, !nonnull !43, !align !49, !noundef !43
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !764
  store ptr %i.bl, ptr %i.bb, align 8, !noalias !764
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs3_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SitePackagesPathsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !764
  store ptr @94, ptr %i.bc, align 8, !noalias !764
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.dq, align 8, !noalias !764
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !764
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @11, ptr %i.dr, align 8, !noalias !764
  store i64 1, ptr %i.be, align 8, !noalias !764
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !764
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !764
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.dp, ptr %i.ds, align 8, !noalias !764
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dd, ptr noundef nonnull %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.aa unwind label %bb.h, !noalias !762

bb.z:                                             ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !764
  br label %bb.s

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !764
  br label %bb.z

bb.ab:                                            ; preds = %bb.h
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !762
  unreachable

common.resume:                                    ; preds = %bb.ah, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.h ], [ %.pn153.i, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment25site_packages_directories.exit: ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !764
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment25site_packages_directories.exit

bb.ac:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dv = load i32, ptr %i.du, align 8, !range !46, !alias.scope !768, !noundef !43
  %.not.i1 = icmp ne i32 %i.dv, -1                ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %4 = load i8, ptr %i.dw, align 8, !alias.scope !768
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 113
  %6 = load i8, ptr %5, align 1, !alias.scope !768
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.dy = load i8, ptr %i.dx, align 1, !range !64, !alias.scope !768, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !769
  %.sroa.0141.0.insert.ext.i = zext i1 %.not.i1 to i40
  %7 = zext i8 %4 to i40
  %8 = shl nuw nsw i40 %7, 8
  %.sroa.0141.1.insert.shift.i = select i1 %.not.i1, i40 %8, i40 0
  %.sroa.0141.1.insert.insert.i = or disjoint i40 %.sroa.0141.1.insert.shift.i, %.sroa.0141.0.insert.ext.i
  %i.dz = zext i8 %6 to i40
  %9 = shl nuw nsw i40 %i.dz, 16
  %.sroa.0141.2.insert.shift.i = select i1 %.not.i1, i40 %9, i40 0
  %.sroa.0141.2.insert.insert.i = or disjoint i40 %.sroa.0141.1.insert.insert.i, %.sroa.0141.2.insert.shift.i
  %.sroa.0141.4.insert.ext.i = zext nneg i8 %i.dy to i40
  %.sroa.0141.4.insert.shift.i = shl nuw nsw i40 %.sroa.0141.4.insert.ext.i, 32
  %.sroa.0141.4.insert.insert.i = or disjoint i40 %.sroa.0141.2.insert.insert.i, %.sroa.0141.4.insert.shift.i ; 2 uses
  call fastcc void @_RNvCs7HL9jt3VRMY_16ty_site_packages41site_packages_directories_from_sys_prefix(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i40 %.sroa.0141.4.insert.insert.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3), !noalias !767, !inline_history !749
  %i.ea = load i64, ptr %i.ay, align 8, !range !60, !noalias !769, !noundef !43 ; 2 uses
  %.not146.i = icmp eq i64 %i.ea, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !769
  br i1 %.not146.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.465.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, i64 72, i1 false), !noalias !770
  store i64 %i.ea, ptr %0, align 8, !alias.scope !767
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !769
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment25site_packages_directories.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, i64 72, i1 false), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !768, !align !49, !noundef !43 ; 2 uses
  %.not147.i = icmp eq ptr %i.ed, null
  br i1 %.not147.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !769
  invoke void @_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment19site_packages_paths(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ed, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
          to label %bb.aj unwind label %bb.ai, !noalias !767, !inline_history !749

bb.ag:                                            ; preds = %bb.am, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ef = load i8, ptr %i.ee, align 8, !range !57, !alias.scope !768, !noundef !43
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.bg, label %bb.dg

bb.ah:                                            ; preds = %bb.dd, %bb.ct, %bb.bk, %bb.an, %bb.ai
  %.pn153.i = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %.pn.i, %bb.bk ], [ %i.je, %bb.dd ], [ %i.ib, %bb.ct ], [ %i.ek, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages17SitePackagesPathsEBD_(ptr noalias noundef align 8 dereferenceable(72) %i.az) #26
          to label %common.resume unwind label %bb.cl, !noalias !767, !inline_history !749

bb.ai:                                            ; preds = %bb.ak, %bb.bi, %bb.bh, %.noexc8, %bb.cs, %.noexc6, %bb.db, %bb.dp, %.noexc3, %bb.do, %bb.dm, %bb.dw, %bb.du, %bb.dt, %bb.dj, %bb.di, %bb.de, %bb.cz, %bb.cy, %bb.cu, %bb.cp, %bb.co, %bb.bp, %bb.aw, %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.af
  %i.ei = load i64, ptr %i.ax, align 8, !range !60, !noalias !769, !noundef !43
  %.not148.i = icmp eq i64 %i.ei, -1
  br i1 %.not148.i, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !noalias !767
  invoke void @_RINvXs8_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtCs7HL9jt3VRMY_16ty_site_packages16SitePackagesPathEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendBz_EBQ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !771
  br label %bb.am

bb.am:                                            ; preds = %bb.bf, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !769
  br label %bb.ag

bb.an:                                            ; preds = %bb.bc, %bb.ba, %bb.az, %bb.au, %bb.ar, %bb.aq
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEBD_(ptr noalias noundef align 8 dereferenceable(80) %i.aw) #26
          to label %bb.ah unwind label %bb.cl, !noalias !767, !inline_history !749

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 80, i1 false), !noalias !769
  %i.el = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !769
  %i.em = icmp ult i64 %i.el, 4
  br i1 %i.em, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.en = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, i64 16) monotonic, align 8, !noalias !769 ; 3 uses
  switch i8 %i.en, label %bb.aq [
    i8 0, label %bb.ax
    i8 1, label %bb.ar
    i8 2, label %bb.ar
  ], !prof !61

bb.aq:                                            ; preds = %bb.ap
  %i.eo = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE)
          to label %bb.as unwind label %bb.an, !noalias !767, !inline_history !749 ; 2 uses

bb.ar:                                            ; preds = %bb.ap, %bb.as, %bb.ap
  %.sroa.025.0.i = phi i8 [ %i.eo, %bb.as ], [ %i.en, %bb.ap ], [ %i.en, %bb.ap ]
  %i.ep = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !769, !nonnull !43, !align !49, !noundef !43
  %i.eq = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ep, i8 noundef %.sroa.025.0.i)
          to label %bb.at unwind label %bb.an, !noalias !767, !inline_history !749

bb.as:                                            ; preds = %bb.aq
  %i.er = icmp eq i8 %i.eo, 0
  br i1 %i.er, label %bb.ax, label %bb.ar

bb.at:                                            ; preds = %bb.ar
  br i1 %i.eq, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !769
  %i.es = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !769, !nonnull !43, !align !49, !noundef !43
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !769
  store ptr %i.aw, ptr %i.as, align 8, !noalias !769
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsn_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !769
  store ptr @76, ptr %i.at, align 8, !noalias !769
  %i.eu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.eu, align 8, !noalias !769
  store ptr %i.at, ptr %i.au, align 8, !noalias !769
  %i.ev = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @11, ptr %i.ev, align 8, !noalias !769
  store i64 1, ptr %i.av, align 8, !noalias !769
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !769
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 1, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8, !noalias !769
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.et, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !769
  invoke fastcc void @_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directoriess_0B7_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.av unwind label %bb.an, !noalias !767, !inline_history !749

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !769
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bd, %bb.ay, %bb.ax, %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEBD_(ptr noalias noundef align 8 dereferenceable(80) %i.aw)
          to label %bb.bf unwind label %bb.ai, !noalias !767, !inline_history !749

bb.ax:                                            ; preds = %bb.ao, %bb.ap, %bb.as, %bb.at
  %i.ew = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !769
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ay, label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !769 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 6
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i64 %i.ey, 1
  br i1 %i.fa, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !769, !nonnull !43, !align !49, !noundef !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !769
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !767, !nonnull !43, !noundef !43
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !767, !noundef !43
  store i64 2, ptr %i.ar, align 8, !noalias !769
  %.sroa.374.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.fd, ptr %.sroa.374.0..sroa_idx.i, align 8, !noalias !769
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.ff, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !769
  %i.fg = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ba unwind label %bb.an, !noalias !767, !inline_history !749 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fh = extractvalue { ptr, ptr } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fg, 1      ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !43, !noalias !767, !nonnull !43
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.bb unwind label %bb.an, !noalias !767, !inline_history !749

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !769
  %i.fm = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !769, !nonnull !43, !align !49, !noundef !43
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !769
  store ptr %i.aw, ptr %i.an, align 8, !noalias !769
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsn_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !769
  store ptr @76, ptr %i.ao, align 8, !noalias !769
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.fo, align 8, !noalias !769
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !769
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @11, ptr %i.fp, align 8, !noalias !769
  store i64 1, ptr %i.aq, align 8, !noalias !769
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !769
end_hunk_2
