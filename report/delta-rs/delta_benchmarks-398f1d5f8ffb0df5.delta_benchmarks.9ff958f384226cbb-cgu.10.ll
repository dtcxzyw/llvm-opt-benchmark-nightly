inline.NumInlined: 3170
inline.NumDeleted: 887
begin_hunk_0_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE11insert_fullCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.3.0 = phi i1 [ false, %bb.ae ], [ true, %bb.o ]
  %.sroa.0.0 = phi i64 [ %i.bs, %bb.ae ], [ %.val.i.i.i, %bb.o ]
  %i.bp = insertvalue { i64, i1 } poison, i64 %.sroa.0.0, 0
  %i.bq = insertvalue { i64, i1 } %i.bp, i1 %.sroa.3.0, 1
  ret { i64, i1 } %i.bq

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.br = phi i8 [ %.pre, %bb.m ], [ %i.bh, %bb.l ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bm, %bb.m ], [ %.sroa.4.126.i.i, %bb.l ] ; 3 uses
  %i.bs = load i64, ptr %i.g, align 8, !noundef !3 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 82351536043346213
  tail call void @llvm.assume(i1 %i.bt)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11521)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bv = and i8 %i.br, 1
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = add i64 %.sroa.3.0.i.ph.i, -16
  %i.by = and i64 %i.bx, %.val7.i
  store i8 %i.p, ptr %i.bu, align 1, !noalias !11521
  %i.bz = getelementptr i8, ptr %.val.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store i8 %i.p, ptr %i.ca, align 1, !noalias !11521
  %i.cb = load <2 x i64>, ptr %i.j, align 8, !alias.scope !11521
  %i.cc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bw, i64 0
  %i.cd = sub <2 x i64> %i.cb, %i.cc
  store <2 x i64> %i.cd, ptr %i.j, align 8, !alias.scope !11521
  %i.ce = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.cf = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !11521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11524)
  %i.ch = load i64, ptr %i.g, align 8, !alias.scope !11524, !noalias !11527, !noundef !3 ; 10 uses
  %i.ci = icmp ult i64 %i.ch, 82351536043346213
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %0, align 8, !range !26, !alias.scope !11524, !noalias !11527, !noundef !3
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11529)
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !11532, !noalias !11527, !noundef !3
  %i.cn = load i64, ptr %i.j, align 8, !alias.scope !11532, !noalias !11527, !noundef !3
  %i.co = add i64 %i.cn, %i.cm                    ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.co, i64 82351536043346212) ; 4 uses
  %i.cp = sub nsw i64 %.sroa.0.0.i.i.i, %i.ch
  %i.cq = icmp ugt i64 %i.cp, 1
  br i1 %i.cq, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.w, %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11539)
  %i.cr = add nuw nsw i64 %i.ch, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11542
  %.val12.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !11543, !noalias !11527
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.ch, ptr %.val12.i.i.i.i.i, i64 noundef %i.cr, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11542
  %i.cs = load i64, ptr %i.b, align 8, !range !3683, !noalias !11542, !noundef !3
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ct, label %bb.v, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread

bb.v:                                             ; preds = %bb.u
  %i.cv = load i64, ptr %i.cu, align 8, !range !161, !noalias !11542, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !11542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11542
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cx) #41
          to label %.noexc.i unwind label %bb.ac, !noalias !11544

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread: ; preds = %bb.u
  %i.cy = load ptr, ptr %i.cu, align 8, !noalias !11542, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11542
  store ptr %i.cy, ptr %i.e, align 8, !alias.scope !11543, !noalias !11527
  store i64 %i.cr, ptr %0, align 8, !alias.scope !11532, !noalias !11527
  br label %.sink.split

.noexc.i:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11548)
  %i.cz = icmp ult i64 %i.co, %i.ch
  br i1 %i.cz, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11551
  %.val12.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !11552, !noalias !11527
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.ch, ptr %.val12.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11551
  %i.da = load i64, ptr %i.a, align 8, !range !3683, !noalias !11551, !noundef !3
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.y, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11551
  br label %bb.u

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !11551, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11551
  store ptr %i.dd, ptr %i.e, align 8, !alias.scope !11552, !noalias !11527
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !11532, !noalias !11527
  %i.de = icmp eq i64 %i.ch, %.sroa.0.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11544
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 %1, ptr %i.df, align 8, !noalias !11544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !11524
  br i1 %i.de, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE8grow_oneCs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ae unwind label %bb.aa, !noalias !11553

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %.body unwind label %bb.ab, !noalias !11527

bb.ab:                                            ; preds = %bb.aa
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11527
  unreachable

bb.ac:                                            ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d) #39
          to label %.body unwind label %bb.ad, !noalias !11524

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11524
  unreachable

.sink.split:                                      ; preds = %bb.s, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread
  %.sink = phi ptr [ %i.d, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread ], [ %2, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11544
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 %1, ptr %i.dk, align 8, !noalias !11544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %.sink, i64 104, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.z, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.dl = load ptr, ptr %i.e, align 8, !alias.scope !11556, !noalias !11553, !nonnull !3, !noundef !3
  %i.dm = getelementptr inbounds nuw [112 x i8], ptr %i.dl, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dm, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !11527
  %i.dn = add nuw nsw i64 %i.ch, 1
  store i64 %i.dn, ptr %i.g, align 8, !alias.scope !11556, !noalias !11553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

.body:                                            ; preds = %bb.ac, %bb.aa, %bb.af
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.do, %bb.af ], [ %i.di, %bb.ac ], [ %i.dg, %bb.aa ]
  resume { ptr, i32 } %eh.lpad-body16

bb.af:                                            ; preds = %bb.p, %bb.b, %bb.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %2) #39
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11558, !noalias !11561, !noundef !3
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.d, align 8, !noundef !3
  %i.j = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.k = tail call { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.i, i1 noundef zeroext true) ; 0 uses
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.l = load i64, ptr %0, align 8, !range !26, !noundef !3 ; 3 uses
  %i.m = load i64, ptr %i.d, align 8, !noundef !3 ; 6 uses
  %i.n = icmp ult i64 %i.m, 82351536043346213
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nsw i64 %i.l, %i.m
  %i.p = icmp ugt i64 %1, %i.o
  br i1 %i.p, label %bb.c, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11563)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !11563, !noundef !3
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !11563, !noundef !3
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 82351536043346212) ; 3 uses
  %i.u = sub nsw i64 %.sroa.0.0.i.i, %i.m
  %i.v = icmp ugt i64 %i.u, %1
  br i1 %i.v, label %bb.g, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.i, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11572)
  %i.w = add i64 %i.m, %1                         ; 4 uses
  %i.x = icmp ult i64 %i.w, %i.m
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11575
  %.val12.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11575
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.l, ptr %.val12.i.i.i.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11575
  %i.y = load i64, ptr %i.b, align 8, !range !3683, !noalias !11575, !noundef !3
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.aa, align 8, !range !161, !noalias !11575, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !11575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11575
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.d
  %i.ae = load ptr, ptr %i.aa, align 8, !noalias !11575, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11575
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !11575
  %i.af = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.af)
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i

bb.f:                                             ; preds = %bb.e, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.3.0.i.i.i = phi i64 [ %i.ad, %bb.e ], [ undef, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i.i.i) #41, !noalias !11576
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  %i.ag = icmp ult i64 %i.t, %i.m
  br i1 %i.ag, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11583
  %.val12.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11583
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.l, ptr %.val12.i.i.i, i64 noundef %.sroa.0.0.i.i, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11583
  %i.ah = load i64, ptr %i.a, align 8, !range !3683, !noalias !11583, !noundef !3
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11583
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !11583, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11583
  store ptr %i.ak, ptr %i.c, align 8, !alias.scope !11583
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.w, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !alias.scope !11563
  br label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCs6Po7BT7Nknu_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.f = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #35
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !21

bb.d:                                             ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #41
  unreachable

_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11584
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11588
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !3
  tail call void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !3
  tail call void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}
end_hunk_0
