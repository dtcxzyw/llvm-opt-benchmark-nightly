Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ignore-3a593d569c0a9edb.ignore.d86a19068445227b-cgu.02?download=true
inline.NumInlined: 382
inline.NumDeleted: 181
begin_hunk_0_@_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore11add_parentsRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_:bb.a
  %i.iq = icmp eq i64 %i.ip, 1
  br i1 %i.iq, label %bb.cy, label %.thread180

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.thread180 unwind label %bb.aq

.loopexit202:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_.exit142, %bb.dh
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp203:                            ; preds = %bb.da
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_.exit142
  %i.ir = load i64, ptr %i.b, align 8, !range !9, !noundef !3
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = load i64, ptr %i.dd, align 8, !range !12, !noundef !3 ; 3 uses
  br i1 %i.is, label %bb.da, label %bb.db, !prof !7

bb.da:                                            ; preds = %bb.cz
  %i.iu = load i64, ptr %i.de, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.it, i64 %i.iu) #21
          to label %bb.m unwind label %.loopexit.split-lp203

bb.db:                                            ; preds = %bb.cz
  %i.iv = load ptr, ptr %i.de, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.iw = icmp ule i64 %i.dk, %i.it
  call void @llvm.assume(i1 %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not50 = icmp eq i64 %i.dk, 0
  br i1 %.not50, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.dd, %bb.db
  store i64 %i.it, ptr %i.j, align 8
  store ptr %i.iv, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 %i.dk, ptr %.sroa.540.0..sroa_idx, align 8
  %i.ix = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerE9downgradeBJ_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.df unwind label %bb.dj

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr nonnull align 1 %i.di, i64 %i.dk, i1 false)
  br label %bb.dc

bb.de:                                            ; preds = %bb.df
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.df:                                            ; preds = %bb.dc
  %i.iz = invoke noundef ptr @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerENtNtNtBT_4hash6random11RandomStateE6insertB27_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.in, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.ix)
          to label %bb.dg unwind label %bb.de     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  store ptr %i.iz, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEEB1z_.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEEB1z_.exit unwind label %.loopexit202

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEEB1z_.exit: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.jb = load ptr, ptr %i.l, align 8, !alias.scope !279, !nonnull !3, !noundef !3
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !279
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.di, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146

bb.di:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEEB1z_.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146 unwind label %bb.bm

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEEB1z_.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146.invoke

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146.invoke: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit146
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtBb_3ffi6os_str8OsStringINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2V_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.backedge unwind label %bb.ah

bb.dj:                                            ; preds = %bb.dc
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.cx unwind label %bb.aq

.thread183:                                       ; preds = %bb.bv, %bb.cf, %bb.ci, %bb.cc, %bb.bz, %.thread193
  %.pn.pn176 = phi { ptr, i32 } [ %i.hq, %bb.ci ], [ %lpad.thr_comm, %.thread193 ], [ %i.hi, %bb.cc ], [ %i.hg, %bb.bz ], [ %i.he, %bb.bv ], [ %i.hm, %bb.cf ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEBF_(ptr noalias noundef align 8 dereferenceable(536) %i.q) #23
          to label %.thread180 unwind label %bb.aq

bb.dk:                                            ; preds = %bb.al, %.body
  %.pn55.pn.ph = phi { ptr, i32 } [ %.pn55, %.body ], [ %i.dy, %bb.al ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_(ptr noalias noundef align 8 dereferenceable(16) %i.u) #23
          to label %bb.dl unwind label %bb.aq

bb.dl:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsizY4S0OBG5z_6ignore19PartialErrorBuilderEBD_(ptr noalias noundef align 8 dereferenceable(24) %i.v) #23
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCs2AWtUsOyxgP_3std4path4PathEEECsizY4S0OBG5z_6ignore.exit.thread198 unwind label %bb.aq

bb.dm:                                            ; preds = %bb.q, %bb.o
  store ptr %i.z, ptr %0, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val73, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.jg, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i152 = load ptr, ptr %i.jh, align 8, !alias.scope !280, !nonnull !3, !noundef !3
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsizY4S0OBG5z_6ignore(ptr nonnull %.val.i152), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsizY4S0OBG5z_6ignore3dirNtB5_6Ignore22add_child_with_entriesRNtNtCs2AWtUsOyxgP_3std4path4PathEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 230584300921369396) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [552 x i8], align 8               ; 6 uses
  %i.e = alloca [592 x i8], align 8               ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val10 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !290
  %i.h = getelementptr inbounds nuw i8, ptr %.val10, i64 520 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !290, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noalias !290, !noundef !3 ; 5 uses
  %i.l = icmp ult i64 %i.k, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.k, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !291
  %i.m = load i64, ptr %i.a, align 8, !range !9, !noalias !291, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !12, !noalias !291, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsizY4S0OBG5z_6ignore.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !291
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #21, !noalias !291
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsizY4S0OBG5z_6ignore.exit.i: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !291, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  store i32 0, ptr %i.t, align 8, !noalias !290
  store i64 %i.p, ptr %i.c, align 8, !noalias !290
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !290
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !290
  %.idx.i = mul nuw nsw i64 %5, 40
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i
  %i.y = icmp eq i64 %5, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsizY4S0OBG5z_6ignore.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i, %.lr.ph16.i
  %.sroa.0.015.i = phi ptr [ %4, %.lr.ph16.i ], [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !290
  invoke void @_RNvMsA_NtCs2AWtUsOyxgP_3std2fsNtB5_8DirEntry9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.015.i)
          to label %bb.e unwind label %bb.d, !noalias !292

.body.i:                                          ; preds = %bb.o, %bb.n, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %i.ac, %bb.d ], [ %i.cc, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #23
          to label %common.resume unwind label %bb.w, !noalias !292

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.aa, align 8, !noalias !290, !noundef !3 ; 2 uses
  switch i64 %i.ad, label %.thread5.i [
    i64 7, label %bb.f
    i64 10, label %bb.h
    i64 4, label %bb.j
    i64 3, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = xor i32 %i.af, 1852270894
  %i.ah = getelementptr i8, ptr %i.ae, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1701998446
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %.thread5.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.t, align 8, !noalias !290
  br label %.thread5.i

bb.h:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 8029468888270464814
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = zext i16 %i.as to i64
  %i.au = xor i64 %i.at, 25970
  %i.av = or i64 %i.aq, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread5.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.u, align 1, !noalias !290
  br label %.thread5.i

bb.j:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = icmp ne i32 %i.ba, 1953064750
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %.thread5.i

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.v, align 2, !noalias !290
  br label %.thread5.i

bb.l:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = xor i16 %i.bf, 27182
  %i.bh = getelementptr i8, ptr %i.be, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i16
  %i.bk = xor i16 %i.bj, 106
  %i.bl = or i16 %i.bg, %i.bk
  %i.bm = icmp ne i16 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %.thread5.i

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.w, align 1, !noalias !290
  br label %.thread5.i

.thread5.i:                                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bp = load ptr, ptr %i.h, align 8, !noalias !290, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !292, !nonnull !3, !noundef !3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !292, !noundef !3 ; 2 uses
  %.idx18.i = mul nuw nsw i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx18.i
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body.i unwind label %bb.w, !noalias !292

.lr.ph.i:                                         ; preds = %.thread5.i, %bb.r
  %6 = phi i64 [ %7, %bb.r ], [ %i.ad, %.thread5.i ] ; 4 uses
  %.sroa.01.014.i = phi ptr [ %i.bx, %bb.r ], [ %i.br, %.thread5.i ] ; 3 uses
  %.sroa.7.013.i = phi i64 [ %i.by, %bb.r ], [ 0, %.thread5.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.014.i, i64 24 ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.014.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !292, !noundef !3
  %i.cb = icmp eq i64 %6, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.r

._crit_edge.i:                                    ; preds = %bb.r, %.thread5.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i unwind label %bb.o, !noalias !292

bb.o:                                             ; preds = %._crit_edge.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.p, !noalias !292

bb.p:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !292
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i: ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i unwind label %bb.d, !noalias !292

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsizY4S0OBG5z_6ignore.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.ce = icmp eq ptr %i.ab, %i.x
  br i1 %i.ce, label %.loopexit, label %bb.c

bb.q:                                             ; preds = %.lr.ph.i
  %i.cf = load ptr, ptr %i.z, align 8, !noalias !290, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.014.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !292, !nonnull !3, !noundef !3
  %bcmp23.i = call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull %i.ch, i64 %6), !noalias !292
  %i.ci = icmp eq i32 %bcmp23.i, 0
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q, %.lr.ph.i
  %7 = phi i64 [ %6, %.lr.ph.i ], [ %.pre.i, %bb.t ], [ %6, %bb.q ]
  %i.cj = icmp eq ptr %i.bx, %i.bu
  br i1 %i.cj, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %bb.q
  %i.ck = icmp samesign ult i64 %.sroa.7.013.i, %i.k
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.7.013.i
  store i8 1, ptr %i.cl, align 1, !noalias !292
  %.pre.i = load i64, ptr %i.aa, align 8, !noalias !290
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.013.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21
          to label %bb.v unwind label %bb.n, !noalias !292

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.n, %.body.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !292
  unreachable

common.resume:                                    ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit ], [ %.pn.i, %.body.i ], [ %i.dd, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit: ; preds = %.body, %bb.ac, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.x ], [ %i.ct, %bb.ac ], [ %i.ct, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.g) #23
          to label %common.resume unwind label %bb.aj

bb.x:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsizY4S0OBG5z_6ignore.exit.i, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsizY4S0OBG5z_6ignore.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore38add_child_path_with_found_ignore_files(ptr noalias noundef align 8 captures(none) dereferenceable(592) %i.e, ptr nonnull %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.g)
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %.loopexit
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.co, ptr noundef nonnull align 8 dereferenceable(536) %i.e, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.d, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cq, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !294
  %i.cr = call noundef align 8 dereferenceable_or_null(552) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 40, 553) 552, i64 noundef 8) #22, !noalias !294 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.z, label %bb.ad, !prof !7

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #21
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEBF_(ptr noalias noundef align 8 dereferenceable(536) %i.co)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.aa
  %i.cv = load i64, ptr %i.f, align 8, !range !13, !alias.scope !295, !noundef !3
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit, label %bb.ac

bb.ac:                                            ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsizY4S0OBG5z_6ignore5ErrorEBD_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsizY4S0OBG5z_6ignore5ErrorEEBZ_.exit unwind label %bb.aj

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.cr, ptr noundef nonnull align 8 dereferenceable(552) %i.d, i64 552, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.db, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store ptr %i.cr, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir16IgnoreFilesFoundEBF_.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
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
  %i.df = landingpad { ptr, i32 }
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
  %i.am = or i8 %i.y, %i.aa
  %i.an = or i8 %i.am, %i.u
  %i.ao = icmp ne i8 %i.an, 0
  %brmerge1.i = or i1 %i.al, %i.ao
  %i.ap = or i64 %i.aj, %i.ae
  %i.aq = icmp ne i64 %i.ap, 0
  %narrow.i = or i1 %brmerge1.i, %i.aq
  br i1 %narrow.i, label %bb.e, label %bb.d

default.unreachable16:                            ; preds = %bb.i, %bb.e
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.c
end_hunk_0
