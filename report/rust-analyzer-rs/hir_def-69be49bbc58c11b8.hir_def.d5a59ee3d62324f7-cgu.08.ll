Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvNtCs33K2ylI4knu_10hir_expand5attrs26is_item_tree_filtered_attr:bb.a
  %i.cg = icmp eq i32 %i.cf, 0
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ch = load i64, ptr %0, align 1
  %i.ci = xor i64 %i.ch, 7017557559206834804
  %i.cj = getelementptr i8, ptr %0, i64 8
  %i.ck = load i32, ptr %i.cj, align 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = xor i64 %i.cl, 1919249516
  %i.cn = or i64 %i.ci, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  %i.cr = load i64, ptr %0, align 1
  %i.cs = icmp ne i64 %i.cr, 7310315672988513645
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f, %bb.e, %bb.b, %bb.n, %bb.a, %bb.c, %bb.d, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ %i.cg, %bb.l ], [ false, %bb.a ], [ %i.ag, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ %i.aq, %bb.f ], [ %i.cq, %bb.m ], [ true, %bb.d ], [ true, %bb.c ], [ %i.cu, %bb.n ], [ %i.bw, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvNtNtCsileJQcQObtj_7hir_def5attrs4docs12extract_docs(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %7, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %9, ptr noundef %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [104 x i8], align 8               ; 26 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %10, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  store i64 0, ptr %i.j, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store i32 2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr null, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !1550, !noundef !8
  %.not = icmp eq i32 %i.u, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false)
  invoke fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def5attrs4docs17extend_with_attrs(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.f, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(8) %i.g, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %7, ptr noalias nofree noundef align 8 dereferenceable(8) %i.i, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31, %bb.a
  %i.w = phi i64 [ %.pre, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31 ], [ 0, %bb.a ] ; 2 uses
  %i.x = icmp ult i64 %i.w, 768614336404564651
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  invoke fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def5attrs4docs17extend_with_attrs(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %8, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.d, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(8) %i.e, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %7, ptr noalias nofree noundef align 8 dereferenceable(8) %i.i, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
          to label %bb.j unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val27 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val27, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noundef !8
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val27) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ad = load i64, ptr %i.g, align 8, !noundef !8
  invoke fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13remove_indent(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j, i64 noundef %i.ad, i64 noundef 0)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.ae, i64 12, i1 false)
  %i.af = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !8 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 768614336404564651
  call void @llvm.assume(i1 %i.ag)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.af, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val26 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val26, i64 48 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !8
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val26) #45
          to label %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31_crit_edge unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31_crit_edge: ; preds = %bb.h
  %.pre.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52: ; preds = %.invoke, %bb.c, %bb.m, %bb.n, %bb.h, %bb.l, %bb.r, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate.exit.i, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit.i, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit10.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31: ; preds = %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31_crit_edge, %bb.g
  %.pre = phi i64 [ %.pre.pre, %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit31_crit_edge ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.i:                                             ; preds = %bb.ah, %bb.ad, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not18 = icmp eq ptr %10, null                 ; 2 uses
  br i1 %.not18, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !noundef !8 ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 4294967295
  %i.ap = shl nuw i64 %i.an, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.ao, i64 513, i64 %i.ap ; 2 uses
  %i.aq = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.aq, label %bb.l, label %bb.n, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #43
          to label %.noexc32 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

.noexc32:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.j
  %i.ar = load i64, ptr %i.e, align 8, !noundef !8
  invoke fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13remove_indent(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j, i64 noundef %i.ar, i64 noundef %i.w)
          to label %bb.p unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

bb.n:                                             ; preds = %bb.k
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  store i32 1, ptr %i.q, align 8
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  invoke fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def5attrs4docs17extend_with_attrs(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.c, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %i.e, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %7, ptr noalias nofree noundef align 8 dereferenceable(8) %i.i, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
          to label %bb.o unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.p:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !4456)
  %i.as = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !alias.scope !4456, !noundef !8 ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = call i64 @llvm.usub.sat.i64(i64 %i.as, i64 1) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  %i.av = icmp samesign ugt i64 %i.as, 1
  br i1 %i.av, label %bb.q, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate.exit.i

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !4462, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !4462, !noundef !8
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate.exit.i, label %bb.r, !prof !65

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #43
          to label %.noexc33 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

.noexc33:                                         ; preds = %bb.r
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate.exit.i: ; preds = %bb.q, %bb.p
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE8truncateCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef range(i64 0, 9223372036854775807) %i.au)
          to label %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs19remove_last_newline.exit unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs19remove_last_newline.exit: ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate.exit.i
  %i.ba = load i64, ptr %i.j, align 8, !range !312, !alias.scope !4463, !noundef !8
  %i.bb = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !alias.scope !4463, !noundef !8 ; 2 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit.i, label %bb.s

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit.i: ; preds = %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs19remove_last_newline.exit
  %i.bd = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef range(i64 0, 9223372036854775807) %i.bb, i64 noundef 1, i64 noundef 1)
          to label %.noexc35 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52 ; 2 uses

.noexc35:                                         ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit.i
  %i.be = extractvalue { i64, i64 } %i.bd, 0      ; 2 uses
  %.not.i = icmp eq i64 %i.be, -1
  br i1 %.not.i, label %bb.s, label %.invoke, !prof !65

bb.s:                                             ; preds = %.noexc35, %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs19remove_last_newline.exit
  %i.bf = load i64, ptr %i.n, align 8, !range !312, !alias.scope !4463, !noundef !8
  %i.bg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4463, !noundef !8 ; 2 uses
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit10.i, label %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13shrink_to_fit.exit

.invoke:                                          ; preds = %.noexc35, %.noexc37
  %.sink = phi { i64, i64 } [ %i.bk, %.noexc37 ], [ %i.bd, %.noexc35 ]
  %i.bi = phi i64 [ %i.bl, %.noexc37 ], [ %i.be, %.noexc35 ]
  %i.bj = extractvalue { i64, i64 } %.sink, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.bi, i64 %i.bj) #42
          to label %.cont unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit10.i: ; preds = %bb.s
  %i.bk = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef range(i64 0, 9223372036854775807) %i.bg, i64 noundef 4, i64 noundef 12)
          to label %.noexc37 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52 ; 2 uses

.noexc37:                                         ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit10.i
  %i.bl = extractvalue { i64, i64 } %i.bk, 0      ; 2 uses
  %.not8.i = icmp eq i64 %i.bl, -1
  br i1 %.not8.i, label %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13shrink_to_fit.exit, label %.invoke, !prof !65

_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13shrink_to_fit.exit: ; preds = %.noexc37, %bb.s
  %i.bm = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !noundef !8 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13shrink_to_fit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4466
  %i.bp = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 104, i64 noundef 8) #48, !noalias !4466 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.u, label %bb.y, !prof !9

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #42
          to label %.noexc39 unwind label %bb.v

.noexc39:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #44
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs13shrink_to_fit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEBH_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j)
          to label %bb.z unwind label %bb.ae

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0 = phi ptr [ null, %bb.x ], [ %i.bp, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not18, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !8
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %10) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit unwind label %bb.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread, %bb.ae
  %.pn20 = phi { ptr, i32 } [ %i.cc, %bb.ae ], [ %.pn51, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread ], [ %i.br, %bb.v ] ; 3 uses
  %i.bx = icmp eq ptr %10, null
  br i1 %i.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !noundef !8
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %10) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46 unwind label %bb.i

bb.ae:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit

bb.af:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.aa, %bb.z, %bb.ab
  %.val29 = load ptr, ptr %8, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val29, i64 48 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !8
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit, %bb.ag
  ret ptr %.sroa.0.0

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.d, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52
  %.pn51 = phi { ptr, i32 } [ %i.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit.thread52 ], [ %i.y, %bb.e ], [ %i.y, %bb.d ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEBH_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j) #44
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46: ; preds = %bb.af, %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.cd, %bb.af ], [ %.pn20, %bb.ad ], [ %.pn20, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit ], [ %.pn20, %bb.ac ]
  %.val28 = load ptr, ptr %8, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val28, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !8
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit44

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val28) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit44 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit44: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECsileJQcQObtj_7hir_def.exit46, %bb.ah
  resume { ptr, i32 } %.pn22
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def5attrs4docs17extend_with_attrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(12) %6, i1 noundef zeroext %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %10, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %11, ptr noundef nonnull %12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %13) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
end_hunk_0
