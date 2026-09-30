Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_site_packages-463e41f0b954c590.ty_site_packages.59c11f672dda2eba-cgu.00?download=true
inline.NumInlined: 656
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment16real_stdlib_path:bb.a
    i8 2, label %bb.l
  ], !prof !22

bb.k:                                             ; preds = %bb.j
  %i.bo = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE)
          to label %bb.m unwind label %bb.h, !noalias !626 ; 2 uses

bb.l:                                             ; preds = %bb.j, %bb.m, %bb.j
  %.sroa.027.0.i = phi i8 [ %i.bo, %bb.m ], [ %i.bn, %bb.j ], [ %i.bn, %bb.j ]
  %i.bp = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !625, !nonnull !4, !align !10, !noundef !4
  %i.bq = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, i8 noundef %.sroa.027.0.i)
          to label %bb.n unwind label %bb.h, !noalias !626

bb.m:                                             ; preds = %bb.k
  %i.br = icmp eq i8 %i.bo, 0
  br i1 %i.br, label %bb.t, label %bb.l

bb.n:                                             ; preds = %bb.l
  br i1 %i.bq, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !625
  %i.bs = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !625, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !625
  store ptr %i.ba, ptr %i.av, align 8, !noalias !625
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !625
  store ptr @93, ptr %i.aw, align 8, !noalias !625
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.bu, align 8, !noalias !625
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !625
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @11, ptr %i.bv, align 8, !noalias !625
  store i64 1, ptr %i.ay, align 8, !noalias !625
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 8, !noalias !625
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx.i, align 8, !noalias !625
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.bt, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !625
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %.noexc.i unwind label %bb.h, !noalias !626

.noexc.i:                                         ; preds = %bb.o
  %i.bw = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !628
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

bb.p:                                             ; preds = %.noexc.i
  %i.by = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !628 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 6
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i64 %i.by, 3
  br i1 %i.ca, label %bb.q, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !628, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !628
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !626, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !626, !noundef !4
  store i64 4, ptr %i.ap, align 8, !noalias !628
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.cd, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !628
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.cf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !628
  %i.cg = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc67.i unwind label %bb.h, !noalias !626 ; 2 uses

.noexc67.i:                                       ; preds = %bb.q
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0      ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !4, !noalias !626, !nonnull !4
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc68.i unwind label %bb.h, !noalias !626, !inline_history !601

.noexc68.i:                                       ; preds = %.noexc67.i
  br i1 %i.cl, label %bb.r, label %.noexc69.i

bb.r:                                             ; preds = %.noexc68.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cb, ptr noundef nonnull %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %.noexc69.i unwind label %bb.h, !noalias !626

.noexc69.i:                                       ; preds = %bb.r, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !628
  br label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i

_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i: ; preds = %.noexc69.i, %bb.p, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !625
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %bb.u, %bb.t, %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory0B7_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !627
  store i64 -1, ptr %0, align 8, !alias.scope !623, !noalias !627
  br label %_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment21real_stdlib_directory.exit

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.cn = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !625
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.cp = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !625 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !625, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !625
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !626, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !626, !noundef !4
  store i64 4, ptr %i.au, align 8, !noalias !625
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.cu, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !625
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.cw, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !625
  %i.cx = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.w unwind label %bb.h, !noalias !626 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !4, !noalias !626, !nonnull !4
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.x unwind label %bb.h, !noalias !626

bb.x:                                             ; preds = %bb.w
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !625
  %i.dd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !625, !nonnull !4, !align !10, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !625
  store ptr %i.ba, ptr %i.aq, align 8, !noalias !625
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !625
  store ptr @93, ptr %i.ar, align 8, !noalias !625
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.df, align 8, !noalias !625
  store ptr %i.ar, ptr %i.as, align 8, !noalias !625
  %i.dg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @11, ptr %i.dg, align 8, !noalias !625
  store i64 1, ptr %i.at, align 8, !noalias !625
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !625
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 1, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !625
  %i.dh = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.de, ptr %i.dh, align 8, !noalias !625
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cs, ptr noundef nonnull %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %bb.aa unwind label %bb.h, !noalias !626

bb.z:                                             ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !625
  br label %bb.s

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !625
  br label %bb.z

bb.ab:                                            ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !626
  unreachable

common.resume:                                    ; preds = %.body86.i.i, %bb.ca, %bb.ce, %bb.dv, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %.pn34.i.i, %.body86.i.i ], [ %i.gh, %bb.ca ], [ %.pn.i, %bb.ce ], [ %i.kg, %bb.dv ]
  resume { ptr, i32 } %common.resume.op

_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment21real_stdlib_directory.exit: ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !625
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment21real_stdlib_directory.exit

bb.ac:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dk = load i32, ptr %i.dj, align 8, !range !7, !alias.scope !630, !noalias !632, !noundef !4
  %.not.i1 = icmp ne i32 %i.dk, -1                ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %4 = load i8, ptr %i.dl, align 8, !alias.scope !630, !noalias !632
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 113
  %6 = load i8, ptr %5, align 1, !alias.scope !630, !noalias !632
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.dn = load i8, ptr %i.dm, align 1, !range !25, !alias.scope !630, !noalias !632, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !5, !alias.scope !630, !noalias !632, !noundef !4
  %.not90.i = icmp eq i64 %i.dp, -1
  br i1 %.not90.i, label %bb.dw, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.dq, align 8, !alias.scope !631, !noalias !633
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 168
  %.val95.i = load ptr, ptr %i.dr, align 8, !alias.scope !631, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !634
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do), !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !634
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !634, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !634, !noundef !4
  invoke void %.val95.i(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.dv)
          to label %bb.af unwind label %bb.ae, !noalias !635

.body86.i.i:                                      ; preds = %bb.an, %bb.am, %.body81.i.i, %bb.ae
  %.pn34.i.i = phi { ptr, i32 } [ %i.dw, %bb.ae ], [ %.pn29.i.i, %.body81.i.i ], [ %i.ep, %bb.am ], [ %i.ep, %bb.an ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #26
          to label %common.resume unwind label %bb.bu, !noalias !635

bb.ae:                                            ; preds = %bb.by, %bb.bw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i, %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = load ptr, ptr %i.k, align 8, !noalias !634, !noundef !4 ; 6 uses
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val40.i.i = load ptr, ptr %i.dz, align 8, !noalias !634, !nonnull !4, !noundef !4 ; 8 uses
  br i1 %i.dy, label %bb.bw, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !4, !noalias !635, !nonnull !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !634
  invoke void %i.eb(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull %i.dx)
          to label %bb.ai unwind label %.loopexit.i.i, !noalias !635

.body81.i.i:                                      ; preds = %.loopexit.split-lp11.i.i, %.loopexit10.i.i, %bb.bs, %bb.bd, %.body57.i.i, %bb.at, %bb.aq, %.loopexit.i.i
  %.pn29.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %.pn24.i.i, %.body57.i.i ], [ %i.ex, %bb.aq ], [ %i.fc, %bb.at ], [ %i.fj, %bb.bd ], [ %i.fz, %bb.bs ], [ %lpad.loopexit12.i.i, %.loopexit10.i.i ], [ %lpad.loopexit.split-lp13.i.i, %.loopexit.split-lp11.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %i.dx, ptr nonnull %.val40.i.i) #26
          to label %.body86.i.i unwind label %bb.bu, !noalias !635

.loopexit.i.i:                                    ; preds = %.thread.i.i, %bb.ah
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ei = load i64, ptr %i.j, align 8, !range !3, !noalias !634, !noundef !4
  switch i64 %i.ei, label %bb.ao [
    i64 -2, label %.loopexit1.i.i
    i64 -1, label %.thread.i.i
  ]

.loopexit1.i.i:                                   ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !634
  %i.ej = load ptr, ptr %.val40.i.i, align 8, !invariant.load !4, !noalias !635 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit1.i.i
  invoke void %i.ej(ptr noundef nonnull %i.dx)
          to label %bb.ak unwind label %bb.am, !noalias !635

bb.ak:                                            ; preds = %bb.aj, %.loopexit1.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !11, !invariant.load !4, !noalias !635 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !12, !invariant.load !4, !noalias !635
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef range(i64 1, 0) %i.el, i64 noundef range(i64 1, 536870913) %i.eo) #25, !noalias !635
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i

bb.am:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !range !11, !invariant.load !4, !noalias !635 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.body86.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !range !12, !invariant.load !4, !noalias !635
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef range(i64 1, 0) %i.er, i64 noundef range(i64 1, 536870913) %i.eu) #25, !noalias !635
  br label %.body86.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !634
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !634
  %i.ev = load i8, ptr %i.ec, align 8, !range !19, !noalias !634, !noundef !4
  %i.ew = icmp eq i8 %i.ev, 1
  br i1 %i.ew, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i unwind label %bb.aq, !noalias !635

bb.aq:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body81.i.i unwind label %bb.ar, !noalias !635

bb.ar:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i unwind label %bb.at, !noalias !635

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !634
  %i.ez = load ptr, ptr %i.ed, align 8, !noalias !634, !nonnull !4, !noundef !4
  %i.fa = load i64, ptr %i.ee, align 8, !noalias !634, !noundef !4
  %i.fb = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fa)
          to label %bb.au unwind label %.loopexit2.i.i, !noalias !635 ; 2 uses

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

.body57.i.i:                                      ; preds = %bb.bq, %bb.bk, %.body52.i.i, %.loopexit.split-lp3.i.i, %.loopexit2.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body52.i.i ], [ %i.fx, %bb.bq ], [ %i.fs, %bb.bk ], [ %lpad.loopexit4.i.i, %.loopexit2.i.i ], [ %lpad.loopexit.split-lp5.i.i, %.loopexit.split-lp3.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %.body81.i.i unwind label %bb.bu, !noalias !635

.loopexit2.i.i:                                   ; preds = %bb.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i, %bb.ba, %bb.az, %bb.av, %bb.as
  %lpad.loopexit4.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i.i

.loopexit.split-lp3.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i, %bb.aw
  %lpad.loopexit.split-lp5.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i.i

bb.au:                                            ; preds = %bb.as
  %i.fd = extractvalue { ptr, i64 } %i.fb, 0      ; 3 uses
  %i.fe = extractvalue { ptr, i64 } %i.fb, 1      ; 2 uses
  %.not21.i.i = icmp eq ptr %i.fd, null
  br i1 %.not21.i.i, label %bb.aw, label %bb.av, !prof !17

bb.av:                                            ; preds = %bb.au
  %i.ff = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 8)
          to label %bb.ay unwind label %.loopexit2.i.i, !noalias !635

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
          to label %bb.ax unwind label %.loopexit.split-lp3.i.i, !noalias !635

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  br i1 %i.ff, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6)
          to label %bb.bb unwind label %.loopexit2.i.i, !noalias !635

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !634
  %i.fh = load ptr, ptr %i.ed, align 8, !noalias !634, !nonnull !4, !noundef !4
  %i.fi = load i64, ptr %i.ee, align 8, !noalias !634, !noundef !4
  invoke void %.val.i(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fh, i64 noundef %i.fi)
          to label %bb.bf unwind label %.loopexit2.i.i, !noalias !635

end_hunk_0
begin_hunk_1_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment16real_stdlib_path:bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i unwind label %bb.bk, !noalias !635

bb.bk:                                            ; preds = %bb.bj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i.i unwind label %bb.bl, !noalias !635

bb.bl:                                            ; preds = %bb.bk
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit60.i.i unwind label %.loopexit2.i.i, !noalias !635

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit60.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !634
  br label %bb.bc

bb.bm:                                            ; preds = %bb.bi
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i unwind label %bb.bn, !noalias !635

bb.bn:                                            ; preds = %bb.bm
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body63.i.i unwind label %bb.bo, !noalias !635

bb.bo:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i unwind label %bb.bp, !noalias !635

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i.i

.body63.i.i:                                      ; preds = %bb.bp, %bb.bn
  %eh.lpad-body64.i.i = phi { ptr, i32 } [ %i.fw, %bb.bp ], [ %i.fu, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !634
  br label %.body52.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i62.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !634
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i unwind label %bb.bq, !noalias !635

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i.i unwind label %bb.br, !noalias !635

bb.br:                                            ; preds = %bb.bq
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit66.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i unwind label %.loopexit.split-lp3.i.i, !noalias !635

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !634
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i unwind label %bb.bs, !noalias !635

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body81.i.i unwind label %bb.bt, !noalias !635

bb.bt:                                            ; preds = %bb.bs
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit72.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i unwind label %.loopexit.split-lp11.i.i, !noalias !635

.loopexit10.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  %lpad.loopexit12.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

.loopexit.split-lp11.i.i:                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i
  %lpad.loopexit.split-lp13.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i74.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !634
  br label %.loopexit1.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i: ; preds = %bb.bw, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !634
  %i.gb = load ptr, ptr %i.ds, align 8, !noalias !634, !nonnull !4, !noundef !4
  %i.gc = load i64, ptr %i.du, align 8, !noalias !634, !noundef !4
  %i.gd = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gb, i64 noundef %i.gc)
          to label %bb.bx unwind label %bb.ae, !noalias !635 ; 2 uses

bb.bu:                                            ; preds = %.body52.i.i, %.body57.i.i, %.body81.i.i, %.body86.i.i
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

bb.bv:                                            ; preds = %bb.bf
  %.val.i92.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !636, !noalias !634, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.val.i92.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit97.i.i unwind label %.loopexit2.i.i, !noalias !635

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit97.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !634
  br label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !634
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i

.thread.i.i:                                      ; preds = %bb.ai
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !634, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.sroa.5.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i unwind label %.loopexit.i.i, !noalias !635

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit106.i.i: ; preds = %.thread.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryECs7HL9jt3VRMY_16ty_site_packages.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !634
  br label %bb.ah

bb.bw:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.val40.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i unwind label %bb.ae, !noalias !635

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit113.i.i
  %i.gf = extractvalue { ptr, i64 } %i.gd, 0      ; 2 uses
  %.not33.i.i = icmp eq ptr %i.gf, null
  br i1 %.not33.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gg = extractvalue { ptr, i64 } %i.gd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !634
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef %i.gg)
          to label %bb.cc unwind label %bb.ae, !noalias !635

bb.bz:                                            ; preds = %bb.cc, %bb.bx
  %.sroa.0.0115.i = phi i64 [ %.sroa.0.0.copyload111.i, %bb.cc ], [ -1, %bb.bx ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i unwind label %bb.ca, !noalias !635

bb.ca:                                            ; preds = %bb.bz
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.cb, !noalias !635

bb.cb:                                            ; preds = %bb.ca
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !635
  unreachable

bb.cc:                                            ; preds = %bb.by
  %.sroa.0.0.copyload111.i = load i64, ptr %i.d, align 8, !noalias !637
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx112.i, i64 16, i1 false), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !634
  br label %bb.bz

_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i: ; preds = %bb.bz
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !634
  %.not91.i = icmp eq i64 %.sroa.0.0115.i, -1
  br i1 %.not91.i, label %bb.dw, label %bb.cd

bb.cd:                                            ; preds = %_RNvMss_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_13SysPrefixPath30from_executable_home_path_real.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !638
  store i64 %.sroa.0.0115.i, ptr %i.ao, align 8, !noalias !638
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !638
  %.sroa.7113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 6, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !638
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
          to label %bb.cg unwind label %bb.cf, !noalias !629

bb.ce:                                            ; preds = %bb.ch, %bb.cf
  %.pn.i = phi { ptr, i32 } [ %i.gl, %bb.ch ], [ %i.gj, %bb.cf ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages13SysPrefixPathEBD_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao) #26
          to label %common.resume unwind label %bb.du, !noalias !632

bb.cf:                                            ; preds = %bb.cd
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cg:                                            ; preds = %bb.cd
  %i.gk = load i64, ptr %i.an, align 8, !range !9, !noalias !638, !noundef !4
  %.not92.i = icmp eq i64 %i.gk, -1
  br i1 %.not92.i, label %bb.ci, label %bb.dc

bb.ch:                                            ; preds = %bb.dr, %bb.dp, %bb.do, %bb.dl, %.noexc102.i, %bb.dk, %bb.di, %bb.df, %bb.de, %bb.cy, %bb.cw, %bb.cv, %bb.cr, %.noexc96.i, %bb.cq, %bb.co, %bb.cl, %bb.ck
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtCs7HL9jt3VRMY_16ty_site_packages20StdlibDiscoveryErrorEEB1S_(ptr noalias noundef align 8 dereferenceable(72) %i.an) #26
          to label %bb.ce unwind label %bb.du, !noalias !632

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !638
  %i.gm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.gm, ptr %i.am, align 8, !noalias !638
  %i.gn = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !638
  %i.go = icmp ult i64 %i.gn, 2
  br i1 %i.go, label %bb.cj, label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  %i.gp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, i64 16) monotonic, align 8, !noalias !638 ; 3 uses
  switch i8 %i.gp, label %bb.ck [
    i8 0, label %bb.ct
    i8 1, label %bb.cl
    i8 2, label %bb.cl
  ], !prof !22

bb.ck:                                            ; preds = %bb.cj
  %i.gq = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE)
          to label %bb.cm unwind label %bb.ch, !noalias !632 ; 2 uses

bb.cl:                                            ; preds = %bb.cj, %bb.cm, %bb.cj
  %.sroa.011.0.i = phi i8 [ %i.gq, %bb.cm ], [ %i.gp, %bb.cj ], [ %i.gp, %bb.cj ]
  %i.gr = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !638, !nonnull !4, !align !10, !noundef !4
  %i.gs = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gr, i8 noundef %.sroa.011.0.i)
          to label %bb.cn unwind label %bb.ch, !noalias !632

bb.cm:                                            ; preds = %bb.ck
  %i.gt = icmp eq i8 %i.gq, 0
  br i1 %i.gt, label %bb.ct, label %bb.cl

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.gs, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !638
  %i.gu = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !638, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !638
  store ptr %i.am, ptr %i.ai, align 8, !noalias !638
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_7Display3fmtCs7HL9jt3VRMY_16ty_site_packages, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !638
  store ptr @73, ptr %i.aj, align 8, !noalias !638
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.gw, align 8, !noalias !638
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !638
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @11, ptr %i.gx, align 8, !noalias !638
  store i64 1, ptr %i.al, align 8, !noalias !638
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 8, !noalias !638
  %.sroa.013.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 1, ptr %.sroa.013.sroa.5.0..sroa_idx.i, align 8, !noalias !638
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.gv, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !638
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc.i2 unwind label %bb.ch, !noalias !632

.noexc.i2:                                        ; preds = %bb.co
  %i.gy = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !639
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.cp, label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

bb.cp:                                            ; preds = %.noexc.i2
  %i.ha = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !639 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 3
  br i1 %i.hc, label %bb.cq, label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

bb.cq:                                            ; preds = %bb.cp
  %i.hd = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !639, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !639
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !632, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !632, !noundef !4
  store i64 4, ptr %i.c, align 8, !noalias !639
  %.sroa.3.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.hf, ptr %.sroa.3.0..sroa_idx.i.i3, align 8, !noalias !639
  %.sroa.5.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.hh, ptr %.sroa.5.0..sroa_idx.i.i4, align 8, !noalias !639
  %i.hi = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc96.i unwind label %bb.ch, !noalias !632 ; 2 uses

.noexc96.i:                                       ; preds = %bb.cq
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !4, !noalias !632, !nonnull !4
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc97.i unwind label %bb.ch, !noalias !632, !inline_history !613

.noexc97.i:                                       ; preds = %.noexc96.i
  br i1 %i.hn, label %bb.cr, label %.noexc98.i

bb.cr:                                            ; preds = %.noexc97.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hd, ptr noundef nonnull %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc98.i unwind label %bb.ch, !noalias !632

.noexc98.i:                                       ; preds = %bb.cr, %.noexc97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !639
  br label %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i

_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i: ; preds = %.noexc98.i, %bb.cp, %.noexc.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !638
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cz, %bb.cu, %bb.ct, %_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directorys0_0B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !638
  br label %bb.db

bb.ct:                                            ; preds = %bb.cn, %bb.cm, %bb.cj, %bb.ci
  %i.ho = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !638
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.cu, label %bb.cs

bb.cu:                                            ; preds = %bb.ct
  %i.hq = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !638 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, 6
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp samesign ugt i64 %i.hq, 3
  br i1 %i.hs, label %bb.cv, label %bb.cs

bb.cv:                                            ; preds = %bb.cu
  %i.ht = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !638, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !638
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !632, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !632, !noundef !4
  store i64 4, ptr %i.ah, align 8, !noalias !638
  %.sroa.347.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.hv, ptr %.sroa.347.0..sroa_idx.i, align 8, !noalias !638
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.hx, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !638
  %i.hy = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.cw unwind label %bb.ch, !noalias !632 ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0      ; 2 uses
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1      ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !invariant.load !4, !noalias !632, !nonnull !4
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.cx unwind label %bb.ch, !noalias !632

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.id, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !638
  %i.ie = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment21real_stdlib_directory10___CALLSITE, align 8, !noalias !638, !nonnull !4, !align !10, !noundef !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !638
  store ptr %i.am, ptr %i.ad, align 8, !noalias !638
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_7Display3fmtCs7HL9jt3VRMY_16ty_site_packages, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !638
  store ptr @73, ptr %i.ae, align 8, !noalias !638
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.ig, align 8, !noalias !638
  store ptr %i.ae, ptr %i.af, align 8, !noalias !638
  %i.ih = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @11, ptr %i.ih, align 8, !noalias !638
  store i64 1, ptr %i.ag, align 8, !noalias !638
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !638
end_hunk_1
begin_hunk_2_@_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment19site_packages_paths:bb.a
    i8 1, label %bb.l
    i8 2, label %bb.l
  ], !prof !22

bb.k:                                             ; preds = %bb.j
  %i.bz = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE)
          to label %bb.m unwind label %bb.h, !noalias !667 ; 2 uses

bb.l:                                             ; preds = %bb.j, %bb.m, %bb.j
  %.sroa.026.0.i = phi i8 [ %i.bz, %bb.m ], [ %i.by, %bb.j ], [ %i.by, %bb.j ]
  %i.ca = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !669, !nonnull !4, !align !10, !noundef !4
  %i.cb = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, i8 noundef %.sroa.026.0.i)
          to label %bb.n unwind label %bb.h, !noalias !667

bb.m:                                             ; preds = %bb.k
  %i.cc = icmp eq i8 %i.bz, 0
  br i1 %i.cc, label %bb.t, label %bb.l

bb.n:                                             ; preds = %bb.l
  br i1 %i.cb, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !669
  %i.cd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !669, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !669
  store ptr %i.bl, ptr %i.bg, align 8, !noalias !669
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs3_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SitePackagesPathsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !669
  store ptr @94, ptr %i.bh, align 8, !noalias !669
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.cf, align 8, !noalias !669
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !669
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @11, ptr %i.cg, align 8, !noalias !669
  store i64 1, ptr %i.bj, align 8, !noalias !669
  %.sroa.028.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.028.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ce, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !669
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc.i unwind label %bb.h, !noalias !667

.noexc.i:                                         ; preds = %bb.o
  %i.ch = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !672
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

bb.p:                                             ; preds = %.noexc.i
  %i.cj = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !672 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.cj, 3
  br i1 %i.cl, label %bb.q, label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !672, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !672
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !667, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !667, !noundef !4
  store i64 4, ptr %i.ba, align 8, !noalias !672
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.co, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !672
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !672
  %i.cr = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc62.i unwind label %bb.h, !noalias !667 ; 2 uses

.noexc62.i:                                       ; preds = %bb.q
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cr, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !4, !noalias !667, !nonnull !4
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %.noexc63.i unwind label %bb.h, !noalias !667, !inline_history !650

.noexc63.i:                                       ; preds = %.noexc62.i
  br i1 %i.cw, label %bb.r, label %.noexc64.i

bb.r:                                             ; preds = %.noexc63.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cm, ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc64.i unwind label %bb.h, !noalias !667

.noexc64.i:                                       ; preds = %bb.r, %.noexc63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !672
  br label %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i

_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i: ; preds = %.noexc64.i, %bb.p, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !669
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %bb.u, %bb.t, %_RNCNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories0B7_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(72) %i.bl, i64 72, i1 false), !noalias !671
  store i64 -1, ptr %0, align 8, !alias.scope !667, !noalias !671
  br label %_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment25site_packages_directories.exit

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.cy = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !669
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.da = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !669 ; 2 uses
  %i.db = icmp ult i64 %i.da, 6
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = icmp samesign ugt i64 %i.da, 3
  br i1 %i.dc, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !669, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !669
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !667, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !667, !noundef !4
  store i64 4, ptr %i.bf, align 8, !noalias !669
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.df, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.dh, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !669
  %i.di = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.w unwind label %bb.h, !noalias !667 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dj = extractvalue { ptr, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.di, 1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !4, !noalias !667, !nonnull !4
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.x unwind label %bb.h, !noalias !667

bb.x:                                             ; preds = %bb.w
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !669
  %i.do = load ptr, ptr @_RNvNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_17SystemEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !669, !nonnull !4, !align !10, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !669
  store ptr %i.bl, ptr %i.bb, align 8, !noalias !669
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs3_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SitePackagesPathsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !669
  store ptr @94, ptr %i.bc, align 8, !noalias !669
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.dq, align 8, !noalias !669
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !669
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @11, ptr %i.dr, align 8, !noalias !669
  store i64 1, ptr %i.be, align 8, !noalias !669
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !669
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.dp, ptr %i.ds, align 8, !noalias !669
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dd, ptr noundef nonnull %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.aa unwind label %bb.h, !noalias !667

bb.z:                                             ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !669
  br label %bb.s

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !669
  br label %bb.z

bb.ab:                                            ; preds = %bb.h
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !667
  unreachable

common.resume:                                    ; preds = %bb.ah, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.h ], [ %.pn153.i, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RNvMsl_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17SystemEnvironment25site_packages_directories.exit: ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !669
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment25site_packages_directories.exit

bb.ac:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dv = load i32, ptr %i.du, align 8, !range !7, !alias.scope !674, !noalias !675, !noundef !4
  %.not.i1 = icmp ne i32 %i.dv, -1                ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %4 = load i8, ptr %i.dw, align 8, !alias.scope !674, !noalias !675
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 113
  %6 = load i8, ptr %5, align 1, !alias.scope !674, !noalias !675
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.dy = load i8, ptr %i.dx, align 1, !range !25, !alias.scope !674, !noalias !675, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !676
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
  call fastcc void @_RNvCs7HL9jt3VRMY_16ty_site_packages41site_packages_directories_from_sys_prefix(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i40 %.sroa.0141.4.insert.insert.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3), !noalias !673, !inline_history !655
  %i.ea = load i64, ptr %i.ay, align 8, !range !21, !noalias !676, !noundef !4 ; 2 uses
  %.not146.i = icmp eq i64 %i.ea, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !676
  br i1 %.not146.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.465.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, i64 72, i1 false), !noalias !677
  store i64 %i.ea, ptr %0, align 8, !alias.scope !673, !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !676
  br label %_RNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_18VirtualEnvironment25site_packages_directories.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.614.i, i64 72, i1 false), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !674, !noalias !675, !align !10, !noundef !4 ; 2 uses
  %.not147.i = icmp eq ptr %i.ed, null
  br i1 %.not147.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !676
  invoke void @_RNvMs7_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_17PythonEnvironment19site_packages_paths(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ed, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
          to label %bb.aj unwind label %bb.ai, !noalias !673, !inline_history !655

bb.ag:                                            ; preds = %bb.am, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ef = load i8, ptr %i.ee, align 8, !range !18, !alias.scope !674, !noalias !675, !noundef !4
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.bg, label %bb.dg

bb.ah:                                            ; preds = %bb.dd, %bb.ct, %bb.bk, %bb.an, %bb.ai
  %.pn153.i = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %.pn.i, %bb.bk ], [ %i.je, %bb.dd ], [ %i.ib, %bb.ct ], [ %i.ek, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages17SitePackagesPathsEBD_(ptr noalias noundef align 8 dereferenceable(72) %i.az) #26
          to label %common.resume unwind label %bb.cl, !noalias !673, !inline_history !655

bb.ai:                                            ; preds = %bb.ak, %bb.bi, %bb.bh, %.noexc8, %bb.cs, %.noexc6, %bb.db, %bb.dp, %.noexc3, %bb.do, %bb.dm, %bb.dw, %bb.du, %bb.dt, %bb.dj, %bb.di, %bb.de, %bb.cz, %bb.cy, %bb.cu, %bb.cp, %bb.co, %bb.bp, %bb.aw, %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.af
  %i.ei = load i64, ptr %i.ax, align 8, !range !21, !noalias !676, !noundef !4
  %.not148.i = icmp eq i64 %i.ei, -1
  br i1 %.not148.i, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !noalias !673
  invoke void @_RINvXs8_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtCs7HL9jt3VRMY_16ty_site_packages16SitePackagesPathEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendBz_EBQ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  br label %bb.am

bb.am:                                            ; preds = %bb.bf, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !676
  br label %bb.ag

bb.an:                                            ; preds = %bb.bc, %bb.ba, %bb.az, %bb.au, %bb.ar, %bb.aq
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEBD_(ptr noalias noundef align 8 dereferenceable(80) %i.aw) #26
          to label %bb.ah unwind label %bb.cl, !noalias !673, !inline_history !655

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 80, i1 false), !noalias !676
  %i.el = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !676
  %i.em = icmp ult i64 %i.el, 4
  br i1 %i.em, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.en = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, i64 16) monotonic, align 8, !noalias !676 ; 3 uses
  switch i8 %i.en, label %bb.aq [
    i8 0, label %bb.ax
    i8 1, label %bb.ar
    i8 2, label %bb.ar
  ], !prof !22

bb.aq:                                            ; preds = %bb.ap
  %i.eo = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE)
          to label %bb.as unwind label %bb.an, !noalias !673, !inline_history !655 ; 2 uses

bb.ar:                                            ; preds = %bb.ap, %bb.as, %bb.ap
  %.sroa.025.0.i = phi i8 [ %i.eo, %bb.as ], [ %i.en, %bb.ap ], [ %i.en, %bb.ap ]
  %i.ep = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !676, !nonnull !4, !align !10, !noundef !4
  %i.eq = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ep, i8 noundef %.sroa.025.0.i)
          to label %bb.at unwind label %bb.an, !noalias !673, !inline_history !655

bb.as:                                            ; preds = %bb.aq
  %i.er = icmp eq i8 %i.eo, 0
  br i1 %i.er, label %bb.ax, label %bb.ar

bb.at:                                            ; preds = %bb.ar
  br i1 %i.eq, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !676
  %i.es = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !676, !nonnull !4, !align !10, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !676
  store ptr %i.aw, ptr %i.as, align 8, !noalias !676
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsn_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !676
  store ptr @76, ptr %i.at, align 8, !noalias !676
  %i.eu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.eu, align 8, !noalias !676
  store ptr %i.at, ptr %i.au, align 8, !noalias !676
  %i.ev = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @11, ptr %i.ev, align 8, !noalias !676
  store i64 1, ptr %i.av, align 8, !noalias !676
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !676
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 1, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8, !noalias !676
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.et, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !676
  invoke fastcc void @_RNCNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directoriess_0B7_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.av unwind label %bb.an, !noalias !673, !inline_history !655

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !676
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bd, %bb.ay, %bb.ax, %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEBD_(ptr noalias noundef align 8 dereferenceable(80) %i.aw)
          to label %bb.bf unwind label %bb.ai, !noalias !673, !inline_history !655

bb.ax:                                            ; preds = %bb.ao, %bb.ap, %bb.as, %bb.at
  %i.ew = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !676
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ay, label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !676 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 6
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i64 %i.ey, 1
  br i1 %i.fa, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !676, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !676
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !673, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !673, !noundef !4
  store i64 2, ptr %i.ar, align 8, !noalias !676
  %.sroa.374.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.fd, ptr %.sroa.374.0..sroa_idx.i, align 8, !noalias !676
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.ff, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !676
  %i.fg = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ba unwind label %bb.an, !noalias !673, !inline_history !655 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fh = extractvalue { ptr, ptr } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fg, 1      ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !4, !noalias !673, !nonnull !4
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.bb unwind label %bb.an, !noalias !673, !inline_history !655

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !676
  %i.fm = load ptr, ptr @_RNvNvMsi_Cs7HL9jt3VRMY_16ty_site_packagesNtB7_18VirtualEnvironment25site_packages_directories10___CALLSITE, align 8, !noalias !676, !nonnull !4, !align !10, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !676
  store ptr %i.aw, ptr %i.an, align 8, !noalias !676
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsn_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !676
  store ptr @76, ptr %i.ao, align 8, !noalias !676
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.fo, align 8, !noalias !676
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !676
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @11, ptr %i.fp, align 8, !noalias !676
  store i64 1, ptr %i.aq, align 8, !noalias !676
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !676
end_hunk_2
