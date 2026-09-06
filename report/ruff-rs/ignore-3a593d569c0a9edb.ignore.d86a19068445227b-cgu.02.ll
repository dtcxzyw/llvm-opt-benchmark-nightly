Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ignore-3a593d569c0a9edb.ignore.d86a19068445227b-cgu.02?download=true
inline.NumInlined: 382
inline.NumDeleted: 181
begin_hunk_0_@_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore22add_child_with_entriesRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !292
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i: ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i unwind label %bb.d, !noalias !292

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.cf = icmp eq ptr %i.ab, %i.x
  br i1 %i.cf, label %.loopexit, label %bb.c

bb.q:                                             ; preds = %.lr.ph.i
  %i.cg = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.014.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !292, !nonnull !3, !noundef !3
  %bcmp23.i = call i32 @bcmp(ptr nonnull %i.cg, ptr nonnull %i.ci, i64 %i.ca), !noalias !292
  %i.cj = icmp eq i32 %bcmp23.i, 0
  br i1 %i.cj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q, %.lr.ph.i
  %i.ck = icmp eq ptr %i.bx, %i.bu
  br i1 %i.ck, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %bb.q
  %i.cl = icmp samesign ult i64 %.sroa.7.013.i, %i.k
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.7.013.i
  store i8 1, ptr %i.cm, align 1, !noalias !292
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.013.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21
          to label %bb.v unwind label %bb.n, !noalias !292

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.n, %.body.i
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !292
  unreachable

common.resume:                                    ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit ], [ %.pn.i, %.body.i ], [ %i.de, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit: ; preds = %.body, %bb.ac, %bb.x
  %.pn = phi { ptr, i32 } [ %i.co, %bb.x ], [ %i.cu, %bb.ac ], [ %i.cu, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.g) #23
          to label %common.resume unwind label %bb.aj

bb.x:                                             ; preds = %.loopexit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsizY4S0OBG5z_6ignore.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore38add_child_path_with_found_ignore_files(ptr noalias noundef align 8 captures(none) dereferenceable(592) %i.e, ptr nonnull %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.g)
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.cp, ptr noundef nonnull align 8 dereferenceable(536) %i.e, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.d, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cr, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !294
  %i.cs = call noundef align 8 dereferenceable_or_null(552) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 40, 553) 552, i64 noundef 8) #22, !noalias !294 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.z, label %bb.ad, !prof !7

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #21
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEBF_(ptr noalias noundef align 8 dereferenceable(536) %i.cp)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.aa
  %i.cw = load i64, ptr %i.f, align 8, !range !13, !alias.scope !295, !noundef !3
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit, label %bb.ac

bb.ac:                                            ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsizY4S0OBG5z_6ignore5ErrorEBD_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit unwind label %bb.aj

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.cs, ptr noundef nonnull align 8 dereferenceable(552) %i.d, i64 552, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.cz, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store ptr %i.cs, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.dd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_.exit: ; preds = %bb.af
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.e = tail call { ptr, i64 } @_RNvNvNtCsizY4S0OBG5z_6ignore8pathutil12strip_prefix3imp(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.sroa.67.0 = select i1 %.not, i64 %.val1.i, i64 %i.g ; 3 uses
  %.sroa.03.0 = select i1 %.not, ptr %.val.i, ptr %i.f ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9overridesNtB5_8Override7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.67.0, i1 noundef zeroext %3) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1
  tail call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchNtNtB6_9overrides4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB16_B14_9overridesEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %i.p, ptr %i.q)
  %i.r = load i64, ptr %0, align 8, !range !11, !noundef !3
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 481
  %i.u = load i8, ptr %i.t, align 1, !range !4, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 483
  %i.w = load i8, ptr %i.v, align 1, !range !4, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 484
  %i.y = load i8, ptr %i.x, align 4, !range !4, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 485
  %i.aa = load i8, ptr %i.z, align 1, !range !4, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 520
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 384307168202282326
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 88686269585142076
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ne i8 %i.u, %i.w
  %4 = or i8 %i.y, %i.aa
  %5 = or i8 %4, %i.u
  %6 = icmp ne i8 %5, 0
  %brmerge1.i = or i1 %i.al, %6
  %i.am = or i64 %i.aj, %i.ae
  %i.an = icmp ne i64 %i.am, 0
  %narrow.i = or i1 %brmerge1.i, %i.an
  br i1 %narrow.i, label %bb.e, label %bb.d

default.unreachable16:                            ; preds = %bb.i, %bb.e
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 115292150460684698
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.m, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.au, align 8
  call fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore14matched_ignore(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.h, ptr %.val15, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.67.0, i1 noundef zeroext %3)
  %i.av = load i64, ptr %i.b, align 8, !range !11, !noundef !3
  switch i64 %i.av, label %default.unreachable16 [
    i64 1, label %bb.f
    i64 0, label %bb.h
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ax = tail call { i64, ptr } @_RINvMs1_NtCsizY4S0OBG5z_6ignore5typesNtB6_5Types7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.67.0, i1 noundef zeroext %3) ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1
  call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchNtNtB6_5types4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB12_B10_5typesEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ay, ptr %i.az)
  %i.ba = load i64, ptr %i.a, align 8, !range !11, !noundef !3
  switch i64 %i.ba, label %default.unreachable16 [
    i64 1, label %bb.j
    i64 0, label %bb.l
    i64 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.j, %bb.f, %bb.l, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore9add_childRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [552 x i8], align 8               ; 6 uses
  %i.b = alloca [592 x i8], align 8               ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !304, !noalias !305, !nonnull !3, !noundef !3
  call fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore38add_child_path_with_found_ignore_files(ptr noalias noundef align 8 captures(none) dereferenceable(592) %i.b, ptr nonnull %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(536) %i.b, i64 536, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !306
  %i.g = tail call noundef align 8 dereferenceable_or_null(552) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 40, 553) 552, i64 noundef 8) #22, !noalias !306 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.f, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEBF_(ptr noalias noundef align 8 dereferenceable(536) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.noexc8:                                          ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.i

.body:                                            ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !range !13, !alias.scope !307, !noundef !3
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.noexc8, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsizY4S0OBG5z_6ignore5ErrorEBD_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.noexc8 unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.g, ptr noundef nonnull align 8 dereferenceable(552) %i.a, i64 552, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  store ptr %i.g, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore9add_childRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [552 x i8], align 8               ; 6 uses
  %i.b = alloca [592 x i8], align 8               ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.e, align 8, !noundef !3
  %.val.i6 = load ptr, ptr %1, align 8, !alias.scope !316, !noalias !317, !nonnull !3, !noundef !3
  call fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore38add_child_path_with_found_ignore_files(ptr noalias noundef align 8 captures(none) dereferenceable(592) %i.b, ptr nonnull %.val.i6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.h, ptr noundef nonnull align 8 dereferenceable(536) %i.b, i64 536, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !318
  %i.i = tail call noundef align 8 dereferenceable_or_null(552) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 40, 553) 552, i64 noundef 8) #22, !noalias !318 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEBF_(ptr noalias noundef align 8 dereferenceable(536) %i.h)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore14matched_ignore:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.thread22

.thread22:                                        ; preds = %bb.r, %bb.q, %bb.s, %.thread17, %bb.t, %bb.u
  ret void

bb.v:                                             ; preds = %_RINvYNtNtCsizY4S0OBG5z_6ignore3dir7ParentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBE_4find5checkNtB5_9IgnoreRefNCINvNvXs0_NtNtBK_8adapters10skip_whileINtB2u_9SkipWhileppEBE_4next5checkB24_NCNvMs_B5_NtB5_6Ignore14matched_ignores2_0E0E0INtNtNtBM_3ops12control_flow11ControlFlowB24_EEB7_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.ds = invoke { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext %3)
          to label %bb.w unwind label %bb.m       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dt = extractvalue { i64, ptr } %i.ds, 0
  %i.du = extractvalue { i64, ptr } %i.ds, 1
  invoke void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %i.dt, ptr %i.du)
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %_RINvYNtNtCsizY4S0OBG5z_6ignore3dir7ParentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBE_4find5checkNtB5_9IgnoreRefNCINvNvXs0_NtNtBK_8adapters10skip_whileINtB2u_9SkipWhileppEBE_4next5checkB24_NCNvMs_B5_NtB5_6Ignore14matched_ignores2_0E0E0INtNtNtBM_3ops12control_flow11ControlFlowB24_EEB7_.exit, %bb.w
  %i.dv = load i64, ptr %i.g, align 8, !range !11, !noundef !3
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.dy = invoke { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext %3)
          to label %bb.z unwind label %bb.m       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = extractvalue { i64, ptr } %i.dy, 1
  invoke void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.dz, ptr %i.ea)
          to label %bb.aa unwind label %bb.m

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.eb = trunc nuw i8 %.sroa.019.1 to i1         ; 2 uses
  %or.cond = select i1 %.not5, i1 true, i1 %i.eb
  br i1 %or.cond, label %.critedge, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.ae
  %i.ec = load i64, ptr %i.e, align 8, !range !11
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %.critedge.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr %i.f, align 8, !range !11, !noundef !3
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.ad, label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 232
  %i.eh = invoke { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext %3)
          to label %bb.ae unwind label %bb.m      ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ei = extractvalue { i64, ptr } %i.eh, 0
  %i.ej = extractvalue { i64, ptr } %i.eh, 1
  invoke void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ei, ptr %i.ej)
          to label %bb.ab unwind label %bb.m

.critedge:                                        ; preds = %bb.aa
  br i1 %i.eb, label %.backedge, label %.critedge.thread

.backedge:                                        ; preds = %.critedge, %.critedge.thread
  %.sroa.019.1.be = phi i8 [ 1, %.critedge ], [ %i.ep, %.critedge.thread ]
  br label %bb.k

bb.af:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.el = invoke { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext %3)
          to label %bb.ag unwind label %bb.m      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.em = extractvalue { i64, ptr } %i.el, 0
  %i.en = extractvalue { i64, ptr } %i.el, 1
  invoke void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.em, ptr %i.en)
          to label %.critedge.thread unwind label %bb.m

.critedge.thread:                                 ; preds = %bb.ab, %bb.ag, %.critedge
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 529
  %i.ep = load i8, ptr %i.eo, align 1, !range !4, !noundef !3
  br label %.backedge

bb.ah:                                            ; preds = %bb.m
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ai:                                            ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileNtNtCsizY4S0OBG5z_6ignore3dir7ParentsNCNvMs_B1c_NtB1c_6Ignore14matched_ignores_0ENtNtNtB9_6traits8iterator8Iterator4nextB1e_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 24
  %i.es = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.er, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) ; 2 uses
  %i.et = extractvalue { i64, ptr } %i.es, 0
  %i.eu = extractvalue { i64, ptr } %i.es, 1
  tail call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %i.et, ptr %i.eu)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileNtNtCsizY4S0OBG5z_6ignore3dir7ParentsNCNvMs_B1c_NtB1c_6Ignore14matched_ignores_0ENtNtNtB9_6traits8iterator8Iterator4nextB1e_.exit, %bb.ai
  %i.ev = load i64, ptr %i.g, align 8, !range !11, !noundef !3
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 128
  %i.ey = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ex, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) ; 2 uses
  %i.ez = extractvalue { i64, ptr } %i.ey, 0
  %i.fa = extractvalue { i64, ptr } %i.ey, 1
  call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.ez, ptr %i.fa)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.fb = trunc nuw i8 %.sroa.019.031 to i1       ; 2 uses
  %or.cond7 = select i1 %.not5, i1 true, i1 %i.fb
  br i1 %or.cond7, label %.critedge43, label %bb.an

bb.am:                                            ; preds = %bb.an, %bb.ao
  %i.fc = load i64, ptr %i.e, align 8, !range !11
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.ap, label %.critedge43.thread

bb.an:                                            ; preds = %bb.al
  %i.fe = load i64, ptr %i.f, align 8, !range !11, !noundef !3
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 232
  %i.fh = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) ; 2 uses
  %i.fi = extractvalue { i64, ptr } %i.fh, 0
  %i.fj = extractvalue { i64, ptr } %i.fh, 1
  call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.fi, ptr %i.fj)
  br label %bb.am

.critedge43:                                      ; preds = %bb.al
  br i1 %i.fb, label %bb.aq, label %.critedge43.thread

bb.ap:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 336
  %i.fl = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fk, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) ; 2 uses
  %i.fm = extractvalue { i64, ptr } %i.fl, 0
  %i.fn = extractvalue { i64, ptr } %i.fl, 1
  call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB17_B15_9gitignoreEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.fm, ptr %i.fn)
  br label %.critedge43.thread

.critedge43.thread:                               ; preds = %bb.am, %bb.ap, %.critedge43
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 529
  %i.fp = load i8, ptr %i.fo, align 1, !range !4, !noundef !3
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge43, %.critedge43.thread
  %.sroa.019.3 = phi i8 [ %i.fp, %.critedge43.thread ], [ 1, %.critedge43 ] ; 2 uses
  br i1 %.not5.i.i46, label %bb.d, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore17matched_dir_entry(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = tail call { ptr, i64 } @_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %2) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %i.f = load i64, ptr %2, align 8, !range !11, !noundef !3
  %i.g = icmp ne i64 %i.f, 0
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.5.0 = load i32, ptr %.sroa.5.0.in, align 8
  %i.h = and i32 %.sroa.5.0, 61440
  %i.i = icmp eq i32 %i.h, 16384
  %.sroa.0.0 = select i1 %i.g, i1 %i.i, i1 false  ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.k = tail call { ptr, i64 } @_RNvNvNtCsizY4S0OBG5z_6ignore8pathutil12strip_prefix3imp(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e), !noalias !671 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.l, null                ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %.sroa.67.0.i = select i1 %.not.i, i64 %i.e, i64 %i.m ; 3 uses
  %.sroa.03.0.i = select i1 %.not.i, ptr %i.d, ptr %i.l ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 496
  %i.o = load ptr, ptr %i.n, align 8, !noalias !672, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noalias !671, !noundef !3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = tail call { i64, ptr } @_RINvMs_NtCsizY4S0OBG5z_6ignore9overridesNtB5_8Override7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef %.sroa.67.0.i, i1 noundef zeroext %.sroa.0.0), !noalias !671 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1
  tail call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchNtNtB6_9overrides4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB16_B14_9overridesEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %i.u, ptr %i.v)
  %i.w = load i64, ptr %0, align 8, !range !11, !noundef !3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !671, !noalias !673
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 481
  %i.z = load i8, ptr %i.y, align 1, !range !4, !noalias !672, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 483
  %i.ab = load i8, ptr %i.aa, align 1, !range !4, !noalias !672, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 484
  %i.ad = load i8, ptr %i.ac, align 4, !range !4, !noalias !672, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 485
  %i.af = load i8, ptr %i.ae, align 1, !range !4, !noalias !672, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 520
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !672, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !671, !noundef !3 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.am = load ptr, ptr %i.al, align 8, !noalias !672, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noalias !671, !noundef !3 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ne i8 %i.z, %i.ab
  %3 = or i8 %i.ad, %i.af
  %4 = or i8 %3, %i.z
  %5 = icmp ne i8 %4, 0
  %brmerge1.i.i = or i1 %i.aq, %5
  %i.ar = or i64 %i.ao, %i.aj
  %i.as = icmp ne i64 %i.ar, 0
  %narrow.i.i = or i1 %brmerge1.i.i, %i.as
  br i1 %narrow.i.i, label %bb.e, label %bb.d

default.unreachable:                              ; preds = %bb.i, %bb.e
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 504
  %i.au = load ptr, ptr %i.at, align 8, !noalias !672, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !noalias !671, !noundef !3 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 115292150460684698
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !672
  call fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore14matched_ignore(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %.val, ptr readonly %.val2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef %.sroa.67.0.i, i1 noundef zeroext %.sroa.0.0), !noalias !671
  %i.az = load i64, ptr %i.b, align 8, !range !11, !noalias !672, !noundef !3
  switch i64 %i.az, label %default.unreachable [
    i64 1, label %bb.f
    i64 0, label %bb.h
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !672
  br label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !673
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !672
  br label %bb.d

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !672
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = tail call { i64, ptr } @_RINvMs1_NtCsizY4S0OBG5z_6ignore5typesNtB6_5Types7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef %.sroa.67.0.i, i1 noundef zeroext %.sroa.0.0), !noalias !671 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = extractvalue { i64, ptr } %i.bb, 1
  call void @_RINvMs4_CsizY4S0OBG5z_6ignoreINtB6_5MatchNtNtB6_5types4GlobE3mapNtNtB6_3dir11IgnoreMatchNvMB12_B10_5typesEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bc, ptr %i.bd), !noalias !671
  %i.be = load i64, ptr %i.a, align 8, !range !11, !noalias !672, !noundef !3
  switch i64 %i.be, label %default.unreachable [
    i64 1, label %bb.j
    i64 0, label %bb.l
    i64 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  br label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !673
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  br label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit

_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit: ; preds = %bb.d, %bb.f, %bb.j, %bb.l
  %.pr = load i64, ptr %0, align 8
  %i.bf = icmp eq i64 %.pr, 0
  br i1 %i.bf, label %bb.m, label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread

bb.m:                                             ; preds = %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 480
  %i.bh = load i8, ptr %i.bg, align 8, !range !4, !noundef !3
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.n, label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call noundef zeroext i1 @_RNvNtCsizY4S0OBG5z_6ignore8pathutil15is_hidden_entry(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %2)
  br i1 %i.bj, label %bb.o, label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.bk, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread

_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit.thread: ; preds = %bb.b, %_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore7matchedRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_.exit, %bb.m, %bb.n, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore38add_child_path_with_found_ignore_files(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(592) %0, ptr %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [56 x i8], align 8                ; 4 uses
  %i.aa = alloca [176 x i8], align 8              ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [56 x i8], align 8               ; 4 uses
  %i.ad = alloca [104 x i8], align 8              ; 4 uses
  %i.ae = alloca [80 x i8], align 8               ; 6 uses
  %i.af = alloca [104 x i8], align 8              ; 6 uses
  %i.ag = alloca [56 x i8], align 8               ; 4 uses
  %i.ah = alloca [104 x i8], align 8              ; 6 uses
  %i.ai = alloca [104 x i8], align 8              ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [56 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 9 uses
  %i.an = alloca [80 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [176 x i8], align 8              ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [56 x i8], align 8               ; 4 uses
  %i.as = alloca [536 x i8], align 8              ; 17 uses
  %.sroa.525 = alloca [16 x i8], align 8          ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.022.sroa.0 = alloca [440 x i8], align 8  ; 8 uses
  %i.ay = alloca [56 x i8], align 8               ; 14 uses
  %i.az = alloca [160 x i8], align 8              ; 5 uses
  %i.ba = alloca [56 x i8], align 8               ; 4 uses
  %i.bb = alloca [104 x i8], align 8              ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %i.bd = alloca [104 x i8], align 8              ; 6 uses
  %i.be = alloca [160 x i8], align 8              ; 5 uses
  %i.bf = alloca [56 x i8], align 8               ; 4 uses
  %i.bg = alloca [104 x i8], align 8              ; 5 uses
  %i.bh = alloca [104 x i8], align 8              ; 6 uses
  %i.bi = alloca [160 x i8], align 8              ; 5 uses
  %i.bj = alloca [56 x i8], align 8               ; 4 uses
  %i.bk = alloca [104 x i8], align 8              ; 5 uses
  %i.bl = alloca [104 x i8], align 8              ; 6 uses
  %i.bm = alloca [160 x i8], align 8              ; 5 uses
  %i.bn = alloca [56 x i8], align 8               ; 4 uses
  %i.bo = alloca [104 x i8], align 8              ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 4 uses
  %i.bq = alloca [48 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 10 uses
  %i.bs = alloca [104 x i8], align 8              ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 12 uses
  %i.bu = alloca [24 x i8], align 8               ; 9 uses
  %i.bv = alloca [24 x i8], align 8               ; 9 uses
  %i.bw = alloca [176 x i8], align 8              ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.val, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %.0.val, i64 487
  %i.bz = load i8, ptr %i.by, align 1, !range !4, !noundef !3
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.val, i64 484
  %i.cc = load i8, ptr %i.cb, align 4, !range !4, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 485
  %i.cf = load i8, ptr %i.ce, align 1, !range !4, !noundef !3
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ci = load i8, ptr %i.ch, align 2, !range !4, !noundef !3
  %i.cj = trunc nuw i8 %i.ci to i1
end_hunk_1
