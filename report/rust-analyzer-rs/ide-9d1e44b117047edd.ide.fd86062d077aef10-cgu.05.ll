Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.05?download=true
inline.NumInlined: 3165
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_0B7_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.e
  resume { ptr, i32 } %i.q

_RNCNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_00B9_.exit: ; preds = %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ao = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !887, !noundef !5 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !7

bb.o:                                             ; preds = %_RNCNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_00B9_.exit
  %i.at = load i64, ptr %i.as, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #41
  unreachable

bb.p:                                             ; preds = %_RNCNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_00B9_.exit
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ar, 1
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i16 8315, ptr %i.au, align 1
  store i64 %i.ar, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.au, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 2, ptr %.sroa.67.0..sroa_idx, align 8
  call void @_RNvMs2_NtCs6oosyzwIepl_6ide_db9text_editNtB5_15TextEditBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.aw = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !887, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.q, label %bb.r, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bb = load i64, ptr %i.ba, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #41
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bd = icmp samesign ugt i64 %i.az, 1
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i16 32032, ptr %i.bc, align 1
  store i64 %i.az, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bc, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 2, ptr %.sroa.610.0..sroa_idx, align 8
  call void @_RNvMs2_NtCs6oosyzwIepl_6ide_db9text_editNtB5_15TextEditBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls4_0B7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 0, 37) %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [20 x i8], align 4                ; 6 uses
  %i.c = alloca [20 x i8], align 4                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [12 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 2 uses
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl9find_file(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.c unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95: ; preds = %bb.bj, %bb.bi, %.body.thread156, %bb.ca, %bb.bz, %bb.cb, %.noexc91, %bb.b
  %.pn23.pn = phi { ptr, i32 } [ %.pn23166, %bb.ca ], [ %eh.lpad-body151, %.noexc91 ], [ %i.o, %bb.b ], [ %.pn23166, %bb.cb ], [ %.pn23166, %bb.bz ], [ %lpad.thr_comm, %.body.thread156 ], [ %i.dz, %bb.bi ], [ %i.dz, %bb.bj ] ; 6 uses
  %.sroa.07.0 = phi i8 [ %.sroa.07.2, %bb.ca ], [ %.sroa.07.2, %.noexc91 ], [ %.sroa.07.1, %bb.b ], [ %.sroa.07.2, %bb.cb ], [ %.sroa.07.2, %bb.bz ], [ %.sroa.07.2, %.body.thread156 ], [ %.sroa.07.2, %bb.bi ], [ %.sroa.07.2, %bb.bj ]
  %.sroa.05.0 = phi i8 [ %.sroa.05.2, %bb.ca ], [ %.sroa.05.2, %.noexc91 ], [ %.sroa.05.1, %bb.b ], [ %.sroa.05.2, %bb.cb ], [ %.sroa.05.2, %bb.bz ], [ %.sroa.05.2, %.body.thread156 ], [ %.sroa.05.2, %bb.bi ], [ %.sroa.05.2, %bb.bj ]
  switch i64 %2, label %bb.cc [
    i64 6, label %.thread
    i64 10, label %.thread139
  ]

bb.b:                                             ; preds = %bb.ag, %bb.y, %bb.o, %bb.a
  %.sroa.07.1 = phi i8 [ %.sroa.07.2, %bb.ag ], [ 0, %bb.o ], [ 1, %bb.y ], [ 1, %bb.a ]
  %.sroa.05.1 = phi i8 [ %.sroa.05.2, %bb.ag ], [ 1, %bb.o ], [ 0, %bb.y ], [ 1, %bb.a ]
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i64 %2, label %bb.d [
    i64 6, label %bb.e
    i64 10, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !902, !noundef !5
  %i.s = load i16, ptr %i.r, align 2, !range !36, !noundef !5
  %.not16 = icmp eq i16 %i.s, 61
  br i1 %.not16, label %.thread145, label %bb.g

.thread145:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ak

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !902, !noundef !5
  %i.v = load i16, ptr %i.u, align 2, !range !36, !noundef !5
  %.not = icmp eq i16 %i.v, 59
  br i1 %.not, label %.thread146, label %bb.q

.thread146:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.w = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %3, i16 noundef 59)
          to label %bb.j unwind label %bb.i       ; 5 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.l, %bb.k, %bb.m, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ad, %bb.m ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98 unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes8LifetimeECslLuZgPVt6hg_3ide(ptr nonnull %3)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ae = icmp eq ptr %i.w, null
  br i1 %i.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !noundef !5
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.w) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit unwind label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !5
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53: ; preds = %bb.y, %bb.x, %bb.o, %bb.n
  %.sroa.013.0 = phi ptr [ %i.w, %bb.o ], [ %i.w, %bb.n ], [ %i.ap, %bb.x ], [ %i.ap, %bb.y ] ; 16 uses
  %.sroa.07.2 = phi i8 [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %bb.x ], [ 1, %bb.y ] ; 9 uses
  %.sroa.05.2 = phi i8 [ 1, %bb.o ], [ 1, %bb.n ], [ 0, %bb.x ], [ 0, %bb.y ] ; 9 uses
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.o ], [ %i.ac, %bb.n ], [ %i.av, %bb.x ], [ %i.av, %bb.y ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.0.0, ptr %i.i, align 8
  %i.an = icmp eq i64 %1, 1
  %.not19 = icmp eq ptr %.sroa.0.0, null          ; 7 uses
  %or.cond = and i1 %i.an, %.not19
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.p:                                             ; preds = %.invoke, %bb.cb, %bb.by, %bb.w, %bb.r, %bb.m, %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.q:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ap = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %3, i16 noundef 61)
          to label %bb.t unwind label %bb.s       ; 5 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56: ; preds = %bb.v, %bb.u, %bb.w, %bb.s
  %.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.aw, %bb.w ], [ %i.aw, %bb.u ], [ %i.aw, %bb.v ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !5
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98 unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56

bb.t:                                             ; preds = %bb.q
  %i.av = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes8LifetimeECslLuZgPVt6hg_3ide(ptr nonnull %3)
          to label %bb.x unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = icmp eq ptr %i.ap, null
  br i1 %i.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !noundef !5
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ap) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56 unwind label %bb.p

bb.x:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !5
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53 unwind label %bb.b

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !align !18, !noundef !5
  %i.bi = invoke noundef zeroext i1 @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext11eq_label_lt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.ab unwind label %.body

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprECslLuZgPVt6hg_3ide.exit53, %bb.ab
  %.not20.not.a = icmp eq ptr %.sroa.013.0, null  ; 2 uses
  br i1 %.not20.not.a, label %.thread198, label %bb.am

.body.thread156:                                  ; preds = %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtB8_3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10or_defaultB2q_.exit.i, %bb.br, %bb.bl, %.thread192, %bb.bs, %bb.bu
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95

.body:                                            ; preds = %bb.z, %bb.ax
  %.sroa.010.0.ph = phi i1 [ false, %bb.ax ], [ true, %bb.z ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ab:                                            ; preds = %bb.z
  br i1 %i.bi, label %bb.aa, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not19, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !5
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit unwind label %.thread163

.noexc91:                                         ; preds = %bb.by, %bb.bx, %.body.thread
  br i1 %.sroa.010.0.lpad-body150, label %bb.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95

.thread163:                                       ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.ad, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bo = icmp eq ptr %.sroa.013.0, null
  br i1 %i.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61, label %bb.af

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !5
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.013.0) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61: ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECslLuZgPVt6hg_3ide.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  switch i64 %2, label %bb.ah [
    i64 6, label %bb.ai
    i64 10, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !5
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61
  %i.bx = trunc nuw i8 %.sroa.07.2 to i1
  br i1 %i.bx, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit61
  %i.by = trunc nuw i8 %.sroa.05.2 to i1
  br i1 %i.by, label %bb.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split: ; preds = %bb.ah, %bb.bw, %bb.al, %bb.ak
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split, %bb.bw, %bb.al, %bb.ak, %bb.ah, %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit, %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit, %bb.aj, %bb.ai
  ret void

bb.ak:                                            ; preds = %.thread145, %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !5
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

bb.al:                                            ; preds = %.thread146, %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !5
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

bb.am:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 60
  %i.ci = load i8, ptr %i.ch, align 4, !range !6, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ao, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 56
  %i.cl = load i32, ptr %i.ck, align 8, !noundef !5
  br label %.noexc.i

bb.ao:                                            ; preds = %bb.am
  %i.cm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.013.0)
          to label %.noexc.i unwind label %bb.au

.noexc.i:                                         ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i.i = phi i32 [ %i.cl, %bb.an ], [ %i.cm, %bb.ao ] ; 4 uses
  %i.cn = load i64, ptr %.sroa.013.0, align 8, !range !8, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  %i.cp = trunc nuw i64 %i.cn to i1
  %i.cq = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.cp, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.noexc.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5 ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 4294967295
  %i.cu = shl nuw i64 %i.cs, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.ct, i64 513, i64 %i.cu ; 2 uses
  %i.cv = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.cv, label %bb.aq, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !7

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 2, ptr %i.g, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #37
          to label %.noexc2.i unwind label %bb.au

.noexc2.i:                                        ; preds = %bb.aq
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.ap
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.as

bb.ar:                                            ; preds = %.noexc.i
  %i.cw = load i32, ptr %i.cq, align 8, !noundef !5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.cw, %bb.ar ]
  %i.cx = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i ; 3 uses
  %.not.i.i = icmp ugt i32 %.sroa.0.0.i.i, %i.cx
  br i1 %.not.i.i, label %bb.at, label %bb.aw, !prof !7

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc3.i unwind label %bb.au

.noexc3.i:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at, %bb.aq, %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 48 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !noundef !5
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.av, label %.body.thread

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.013.0) #39
          to label %.body.thread unwind label %bb.ay

bb.aw:                                            ; preds = %bb.as
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 48 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !noundef !5
  %i.df = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.013.0) #39
          to label %bb.az unwind label %.body

bb.ay:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.az:                                            ; preds = %bb.ax, %bb.aw
  br i1 %.not19, label %.thread192, label %bb.ba

.thread198:                                       ; preds = %bb.aa
  br i1 %.not19, label %.thread195, label %bb.ba

bb.ba:                                            ; preds = %.thread198, %bb.az
  %.sroa.5.0203 = phi i32 [ undef, %.thread198 ], [ %.sroa.0.0.i.i, %bb.az ] ; 2 uses
  %.sroa.8123.0201 = phi i32 [ undef, %.thread198 ], [ %i.cx, %bb.az ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 60
  %i.dj = load i8, ptr %i.di, align 4, !range !6, !noundef !5
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.bc, label %bb.bb, !prof !7

bb.bb:                                            ; preds = %bb.ba
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !noundef !5
  br label %.noexc.i65

bb.bc:                                            ; preds = %bb.ba
  %i.dn = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.0.0)
          to label %.noexc.i65 unwind label %bb.bi

.noexc.i65:                                       ; preds = %bb.bc, %bb.bb
  %.sroa.0.0.i.i66 = phi i32 [ %i.dm, %bb.bb ], [ %i.dn, %bb.bc ] ; 4 uses
  %i.do = load i64, ptr %.sroa.0.0, align 8, !range !8, !noundef !5
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.dq = trunc nuw i64 %i.do to i1
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.dq, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.noexc.i65
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !5 ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 4294967295
  %i.dv = shl nuw i64 %i.dt, 32
  %.sroa.09.0.insert.insert.i.i.i70 = select i1 %i.du, i64 513, i64 %i.dv ; 2 uses
  %i.dw = trunc i64 %.sroa.09.0.insert.insert.i.i.i70 to i1
  br i1 %i.dw, label %bb.be, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i71, !prof !7

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.f, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #37
          to label %.noexc2.i74 unwind label %bb.bi

.noexc2.i74:                                      ; preds = %bb.be
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i71: ; preds = %bb.bd
  %.sroa.6.0.extract.shift.i.i.i.i72 = lshr i64 %.sroa.09.0.insert.insert.i.i.i70, 32
  %.sroa.6.0.extract.trunc.i.i.i.i73 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i72 to i32
  br label %bb.bg

bb.bf:                                            ; preds = %.noexc.i65
  %i.dx = load i32, ptr %i.dr, align 8, !noundef !5
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i71
  %.sroa.02.0.i.i67 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i73, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i71 ], [ %i.dx, %bb.bf ]
  %i.dy = add i32 %.sroa.02.0.i.i67, %.sroa.0.0.i.i66 ; 3 uses
  %.not.i.i68 = icmp ugt i32 %.sroa.0.0.i.i66, %i.dy
  br i1 %.not.i.i68, label %bb.bh, label %bb.bk, !prof !7

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc3.i69 unwind label %bb.bi

.noexc3.i69:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.bc
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !5
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95 unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !noundef !5
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 8
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #39
          to label %bb.bn unwind label %.body.thread156

bb.bm:                                            ; preds = %bb.bj
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not20.not.a, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not19, label %.thread192, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not19, label %.thread195, label %.thread192

bb.bq:                                            ; preds = %bb.bo
  %..i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i.i66, i32 %.sroa.5.0203) ; 2 uses
  %..i2.i.i = call noundef i32 @llvm.umax.i32(i32 %i.dy, i32 %.sroa.8123.0201) ; 2 uses
  %.not.i.i80 = icmp ugt i32 %..i.i.i, %..i2.i.i
  br i1 %.not.i.i80, label %bb.br, label %.thread192, !prof !7

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc81 unwind label %.body.thread156

.noexc81:                                         ; preds = %bb.br
  unreachable

.thread192:                                       ; preds = %bb.az, %bb.bp, %bb.bq, %bb.bo
  %.sroa.8.0.ph = phi i32 [ %.sroa.8123.0201, %bb.bo ], [ %..i2.i.i, %bb.bq ], [ %i.dy, %bb.bp ], [ %i.cx, %bb.az ]
  %.sroa.7.0.ph = phi i32 [ %.sroa.5.0203, %bb.bo ], [ %..i.i.i, %bb.bq ], [ %.sroa.0.0.i.i66, %bb.bp ], [ %.sroa.0.0.i.i, %bb.az ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %.val49170 = load ptr, ptr %i.ek, align 8, !nonnull !5, !align !18, !noundef !5
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %.val50171 = load ptr, ptr %i.el, align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sroa.7.0.ph, ptr %i.em, align 4, !noalias !904
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.8.0.ph, ptr %i.en, align 4, !noalias !904
  invoke void @_RNvMsq_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdNtNtCsuAhG64lL82_9text_size5range9TextRangeE28original_node_file_range_opt(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.b, ptr noundef nonnull %.val49170, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @45)
          to label %.noexc84 unwind label %.body.thread156

.noexc84:                                         ; preds = %.thread192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !904
  %i.eo = load i32, ptr %i.c, align 4, !noalias !904, !noundef !5 ; 2 uses
  %.not.i.i82 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i82, label %bb.bt, label %bb.bs

.thread195:                                       ; preds = %.thread198, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !904
  br label %bb.bt

bb.bs:                                            ; preds = %.noexc84
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !905
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ep = load <2 x i32>, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !906
  store <2 x i32> %i.ep, ptr %i.e, align 8, !noalias !906
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 0, ptr %i.eq, align 8, !noalias !906
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50171) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !906
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEB3R_E11rustc_entryB2Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val50171, i32 noundef %i.eo, i32 noundef %.sroa.7.0.copyload.i)
          to label %.noexc85 unwind label %.body.thread156

.noexc85:                                         ; preds = %bb.bs
  %i.er = load i32, ptr %i.d, align 8, !noalias !906, !noundef !5 ; 2 uses
  %.not1.i = icmp eq i32 %i.er, 0
  br i1 %.not1.i, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %.thread195, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !904
  br label %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit

bb.bu:                                            ; preds = %.noexc85
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.47.0.copyload.i = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !noalias !906
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.58.0.copyload.i = load ptr, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !906
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.69.0.copyload.i = load i64, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !907
  store i32 %i.er, ptr %i.a, align 8, !noalias !907
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.47.0.copyload.i, ptr %i.es, align 4, !noalias !907
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false), !noalias !907
  %i.eu = invoke noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE14insert_no_growB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.58.0.copyload.i, i64 noundef %.sroa.69.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc86 unwind label %.body.thread156

.noexc86:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !907
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtB8_3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10or_defaultB2q_.exit.i

bb.bv:                                            ; preds = %.noexc85
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !906, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !906
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtB8_3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10or_defaultB2q_.exit.i

_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtB8_3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10or_defaultB2q_.exit.i: ; preds = %bb.bv, %.noexc86
  %.pn.i.i = phi ptr [ %i.eu, %.noexc86 ], [ %i.ew, %bb.bv ]
  %.sroa.0.0.i.i83 = getelementptr inbounds i8, ptr %.pn.i.i, i64 -32
  %i.ex = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i83, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e)
          to label %.noexc87 unwind label %.body.thread156 ; 0 uses

.noexc87:                                         ; preds = %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtB8_3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10or_defaultB2q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !906
  br label %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit

_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit: ; preds = %.noexc87, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  switch i64 %2, label %bb.bw [
    i64 6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit
    i64 10, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit
  ]

bb.bw:                                            ; preds = %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !noundef !5
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit

.body.thread:                                     ; preds = %bb.av, %bb.au, %.body
  %eh.lpad-body151 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.cy, %bb.au ], [ %i.cy, %bb.av ] ; 2 uses
  %.sroa.010.0.lpad-body150 = phi i1 [ %.sroa.010.0.ph, %.body ], [ false, %bb.au ], [ false, %bb.av ]
  br i1 %.not19, label %.noexc91, label %bb.bx

bb.bx:                                            ; preds = %.body.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !5
  %i.fe = add i32 %i.fd, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 4
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.by, label %.noexc91

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #39
          to label %.noexc91 unwind label %bb.p

bb.bz:                                            ; preds = %.thread163, %.noexc91
  %.pn23166 = phi { ptr, i32 } [ %i.bn, %.thread163 ], [ %eh.lpad-body151, %.noexc91 ] ; 3 uses
  %i.fg = icmp eq ptr %.sroa.013.0, null
  br i1 %i.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 48 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !5
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.013.0) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95 unwind label %bb.p

bb.cc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !5
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

.thread:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95
  %i.fp = trunc nuw i8 %.sroa.07.0 to i1
  br i1 %i.fp, label %bb.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

.thread139:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit95
  %i.fq = trunc nuw i8 %.sroa.05.0 to i1
  br i1 %i.fq, label %bb.ce, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98: ; preds = %.invoke, %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit, %bb.ce, %bb.cd, %bb.cc, %.thread139, %.thread
  %.pn23.pn136 = phi { ptr, i32 } [ %.pn23.pn, %bb.cd ], [ %.pn17, %bb.h ], [ %.pn23.pn, %.thread ], [ %.pn23.pn, %.thread139 ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit56 ], [ %.pn23.pn, %bb.cc ], [ %.pn23.pn, %bb.ce ], [ %.pn, %bb.r ], [ %.pn23.pn, %.invoke ], [ %.pn17, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit ]
  resume { ptr, i32 } %.pn23.pn136

bb.cd:                                            ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !noundef !5
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

bb.ce:                                            ; preds = %.thread139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !noundef !5
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 4
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98

.invoke:                                          ; preds = %bb.ce, %bb.cd, %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit98 unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls5_0B7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [20 x i8], align 4                ; 6 uses
  %i.c = alloca [20 x i8], align 4                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [12 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %1, align 8, !range !34, !noundef !5
  %i.j = icmp eq i64 %i.i, 6
  br i1 %i.j, label %_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hl0B7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl9find_file(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.p = load i8, ptr %i.o, align 4, !range !6, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.u = load i64, ptr %i.n, align 8, !range !8, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = trunc nuw i64 %i.u to i1
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
end_hunk_0
