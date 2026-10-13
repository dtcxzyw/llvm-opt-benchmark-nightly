Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_37StructuralPrimitiveFieldSchedulingJobNtNtBb_7decoder23StructuralSchedulingJob13schedule_next:bb.a
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %i.i = alloca [96 x i8], align 8                ; 16 uses
  %i.j = alloca [96 x i8], align 8                ; 16 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [96 x i8], align 8                ; 15 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [16 x i8], align 16               ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !75 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !75 ; 5 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  tail call void @llvm.assume(i1 %i.y)
  %.not = icmp ult i64 %i.v, %i.x
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.v ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  %.val91 = load i64, ptr %i.ac, align 8, !alias.scope !192, !noundef !75 ; 2 uses
  store <2 x i64> %i.ae, ptr %i.t, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.val91, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !75 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !75 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !75, !noundef !75
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ai ; 3 uses
  %i.ap = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 4
  br i1 %i.ar, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3895) #66
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.427.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.as, ptr %i.at, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !83896
  store i64 0, ptr %i.j, align 8, !noalias !83896
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @837, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 45, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @27, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 54, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 5, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @837, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 45, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 3932, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !83896
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr @2786, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !83896
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.r, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !83896
  call void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j), !noalias !83896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !83896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.pre = load i64, ptr %i.t, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.au = phi i64 [ %.val91, %bb.d ], [ %.pre, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.promoted = load i64, ptr %i.av, align 8       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !75
  %i.ay = add i64 %.promoted, %i.ax               ; 2 uses
  %.not85169 = icmp ugt i64 %i.ay, %i.au
  br i1 %.not85169, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i126 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.5.0..sroa_idx.i.i128 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0..sroa_idx.i.i130 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.9.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.11.0..sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.13.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.15.0..sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.h

._crit_edge:                                      ; preds = %bb.br, %bb.g
  %i.az = phi i64 [ %i.ai, %bb.g ], [ %i.bj, %bb.br ]
  %i.ba = phi i64 [ %i.au, %bb.g ], [ %i.hk, %bb.br ] ; 2 uses
  %.sroa.01.0.lcssa = phi ptr [ %i.ao, %bb.g ], [ %i.hg, %bb.br ] ; 3 uses
  %.lcssa163 = phi ptr [ %i.aw, %bb.g ], [ %i.hh, %bb.br ] ; 4 uses
  %.lcssa159 = phi i64 [ %.promoted, %bb.g ], [ %i.bg, %bb.br ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  %i.bd = load i64, ptr %.lcssa163, align 8, !noundef !75 ; 2 uses
  %i.be = add i64 %i.bd, %.lcssa159
  %i.bf = icmp ugt i64 %i.be, %i.ba
  br i1 %i.bf, label %.lr.ph174.preheader, label %._crit_edge175.thread

.lr.ph174.preheader:                              ; preds = %._crit_edge
  %.pre191 = load i64, ptr %i.ad, align 8
  br label %.lr.ph174

bb.h:                                             ; preds = %.lr.ph, %bb.br
  %i.bg = phi i64 [ %i.ay, %.lr.ph ], [ %i.hj, %bb.br ] ; 3 uses
  %i.bh = phi ptr [ %i.aw, %.lr.ph ], [ %i.hh, %bb.br ]
  %i.bi = phi i64 [ %i.ai, %.lr.ph ], [ %i.bj, %bb.br ]
  store i64 %i.bg, ptr %i.av, align 8
  %i.bj = add i64 %i.bi, 1                        ; 6 uses
  store i64 %i.bj, ptr %i.ah, align 8
  %i.bk = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 6
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %i.bk, 4
  br i1 %i.bm, label %bb.bp, label %bb.bq

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body, %bb.bi, %bb.bo
  %.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.bo ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.bi ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !83897)
  %.val.i = load i64, ptr %i.p, align 8, !alias.scope !83897 ; 2 uses
  %i.bn = icmp eq i64 %.val.i, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i = load ptr, ptr %i.bb, align 8, !alias.scope !83897, !nonnull !75, !noundef !75
  %i.bo = shl nuw i64 %.val.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83897
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.o, %bb.s, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.q
  %i.bp = phi i64 [ %i.cd, %bb.q ], [ %i.v, %.lr.ph174.preheader ]
  %i.bq = phi i64 [ %i.cb, %bb.q ], [ 0, %.lr.ph174.preheader ] ; 5 uses
  %i.br = phi i64 [ %.val90, %bb.q ], [ %.pre191, %.lr.ph174.preheader ] ; 2 uses
  %i.bs = phi i64 [ %.val, %bb.q ], [ %i.ba, %.lr.ph174.preheader ]
  %i.bt = phi i64 [ %i.ci, %bb.q ], [ %i.bd, %.lr.ph174.preheader ]
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %.lcssa159, i64 %i.bs) ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.t, align 16
  %i.bu = sub i64 %i.br, %.lcssa159
  %.sroa.0.0.i98 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bu) ; 2 uses
  %i.bv = sub nuw i64 %.sroa.0.0.i, %.lcssa159
  %i.bw = load i64, ptr %i.p, align 8, !range !76, !alias.scope !83898, !noundef !75
  %i.bx = icmp eq i64 %i.bq, %i.bw
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph174
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8grow_oneCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %.lr.ph174, %bb.k
  %i.by = load ptr, ptr %i.bb, align 8, !alias.scope !83898, !nonnull !75, !noundef !75
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bq ; 2 uses
  store i64 %i.bv, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %.sroa.0.0.i98, ptr %i.ca, align 8
  %i.cb = add i64 %i.bq, 1                        ; 6 uses
  store i64 %i.cb, ptr %i.bc, align 8, !alias.scope !83898
  %i.cc = add i64 %.sroa.0.0.i98, %.lcssa159
  %.not86 = icmp ult i64 %i.cc, %i.br
  br i1 %.not86, label %._crit_edge175, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.bp, 1                ; 6 uses
  store i64 %i.cd, ptr %i.u, align 8
  %i.ce = icmp eq i64 %i.cd, %i.x
  br i1 %i.ce, label %._crit_edge175, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = icmp ult i64 %i.cd, %i.x
  br i1 %i.cf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3896) #66
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.cd ; 2 uses
  %.val = load i64, ptr %i.cg, align 8, !alias.scope !192, !noundef !75 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val90 = load i64, ptr %i.ch, align 8, !alias.scope !193, !noundef !75 ; 2 uses
  store i64 %.val, ptr %i.t, align 16
  store i64 %.val90, ptr %i.ad, align 8
  %i.ci = load i64, ptr %.lcssa163, align 8, !noundef !75 ; 2 uses
  %i.cj = add i64 %i.ci, %.lcssa159
  %i.ck = icmp ugt i64 %i.cj, %.val
  br i1 %i.ck, label %.lr.ph174, label %._crit_edge175

._crit_edge175:                                   ; preds = %bb.m, %bb.l, %bb.q
  %.pre193.pre = load ptr, ptr %i.bb, align 8     ; 4 uses
  %i.cl = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 6
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ugt i64 %i.cl, 4
  br i1 %i.cn, label %bb.r, label %bb.s

._crit_edge175.thread:                            ; preds = %._crit_edge
  %i.co = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 6
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cq, label %.thread, label %bb.s

.thread:                                          ; preds = %._crit_edge175.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit

bb.r:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cr = icmp eq i64 %i.cb, 0
  br i1 %i.cr, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.r
  %3 = add i64 %i.bq, 1                           ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.preheader.preheader264, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.pre193.pre, i64 %index
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.pre193.pre, i64 %index
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %wide.vec = load <4 x i64>, ptr %i.cs, align 8  ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec256 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec257 = load <4 x i64>, ptr %i.cu, align 8 ; 2 uses
  %strided.vec258 = shufflevector <4 x i64> %wide.vec257, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec259 = shufflevector <4 x i64> %wide.vec257, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.cv = sub <2 x i64> %vec.phi, %strided.vec
  %i.cw = sub <2 x i64> %vec.phi255, %strided.vec258
  %i.cx = add <2 x i64> %i.cv, %strided.vec256    ; 2 uses
  %i.cy = add <2 x i64> %i.cw, %strided.vec259    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !83814

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cy, %i.cx
  %i.da = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit, label %.preheader.preheader264

.preheader.preheader264:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.da, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader264, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.df, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader264 ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.de, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader264 ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.pre193.pre, i64 %.sroa.04.0.i ; 2 uses
  %.val.i99 = load i64, ptr %i.db, align 8, !noundef !75
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %.val13.i = load i64, ptr %i.dc, align 8, !noundef !75
  %i.dd = sub i64 %.sroa.02.0.i, %.val.i99
  %i.de = add i64 %i.dd, %.val13.i                ; 2 uses
  %i.df = add nuw i64 %.sroa.04.0.i, 1
  %i.dg = icmp eq i64 %.sroa.04.0.i, %i.bq
  br i1 %i.dg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit, label %.preheader, !llvm.loop !83815

bb.s:                                             ; preds = %._crit_edge175.thread, %._crit_edge175, %bb.t
  %i.dh = phi i64 [ %i.cb, %._crit_edge175 ], [ %.pre194, %bb.t ], [ 0, %._crit_edge175.thread ]
  %i.di = phi ptr [ %.pre193.pre, %._crit_edge175 ], [ %.pre192, %bb.t ], [ inttoptr (i64 8 to ptr), %._crit_edge175.thread ]
  %i.dj = load i64, ptr %.lcssa163, align 8, !noundef !75
  %i.dk = add i64 %i.dj, %.lcssa159
  store i64 %i.dk, ptr %i.av, align 8
  %i.dl = add i64 %i.az, 1
  store i64 %i.dl, ptr %i.ah, align 8
  %i.dm = load ptr, ptr %.sroa.01.0.lcssa, align 8, !nonnull !75, !noundef !75
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !75, !align !95, !noundef !75
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !75, !nonnull !75
  invoke void %i.dr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noundef nonnull %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.di, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dp)
          to label %bb.u unwind label %.loopexit.split-lp

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit: ; preds = %.preheader, %middle.block, %.thread, %bb.r
  %i.ds = phi i64 [ 0, %bb.r ], [ 0, %.thread ], [ %i.cb, %middle.block ], [ %i.cb, %.preheader ] ; 2 uses
  %.sroa.0.0.i100 = phi i64 [ 0, %bb.r ], [ 0, %.thread ], [ %i.da, %middle.block ], [ %i.de, %.preheader ]
  store i64 %.sroa.0.0.i100, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.ds, ptr %i.n, align 8
  %i.dt = icmp ult i64 %i.ds, 576460752303423488
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.dw, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %.lcssa163, ptr %i.dx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.s, ptr %i.dy, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.du, ptr %i.dz, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.dv, ptr %i.ea, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !83899
  store i64 0, ptr %i.i, align 8, !noalias !83899
  %.sroa.0.sroa.3.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @837, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i101, align 8, !noalias !83899
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 45, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i102, align 8, !noalias !83899
  %.sroa.0.sroa.4.0..sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i103, align 8, !noalias !83899
  %.sroa.0.sroa.6.0..sroa_idx.i.i104 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @27, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i104, align 8, !noalias !83899
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i105 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 54, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i105, align 8, !noalias !83899
  %.sroa.5.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 5, ptr %.sroa.5.0..sroa_idx.i.i106, align 8, !noalias !83899
  %.sroa.7.0..sroa_idx.i.i107 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @837, ptr %.sroa.7.0..sroa_idx.i.i107, align 8, !noalias !83899
  %.sroa.8.0..sroa_idx.i.i108 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 45, ptr %.sroa.8.0..sroa_idx.i.i108, align 8, !noalias !83899
  %.sroa.9.0..sroa_idx.i.i109 = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i109, align 8, !noalias !83899
  %.sroa.11.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i32 3967, ptr %.sroa.11.0..sroa_idx.i.i110, align 4, !noalias !83899
  %.sroa.13.0..sroa_idx.i.i111 = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr @2788, ptr %.sroa.13.0..sroa_idx.i.i111, align 8, !noalias !83899
  %.sroa.15.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.m, ptr %.sroa.15.0..sroa_idx.i.i112, align 8, !noalias !83899
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1p_8adapters3map8map_foldRBQ_yyNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2R_37StructuralPrimitiveFieldSchedulingJobNtNtB2X_7decoder23StructuralSchedulingJob13schedule_nexts_0NCINvXsC_NtB1n_5accumyNtB5I_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB2X_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !83899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.pre192 = load ptr, ptr %i.bb, align 8
  %.pre194 = load i64, ptr %i.bc, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.eb = load i8, ptr %i.k, align 8, !range !88, !noundef !75 ; 2 uses
  %.not87 = icmp eq i8 %i.eb, -1
  br i1 %.not87, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565.0..sroa_idx, i64 24, i1 false)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.467.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.464.0..sroa_idx, i64 31, i1 false)
  store i8 %i.eb, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !83900)
  %.val.i114 = load i64, ptr %i.p, align 8, !alias.scope !83900 ; 2 uses
  %i.ec = icmp eq i64 %.val.i114, 0
  br i1 %i.ec, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit116, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i115 = load ptr, ptr %i.bb, align 8, !alias.scope !83900, !nonnull !75, !noundef !75
  %i.ed = shl nuw i64 %.val.i114, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i115, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83900
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit116

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit116: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bm

bb.x:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ee, align 8
  %.sroa.5.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx282, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !83901)
  call void @llvm.experimental.noalias.scope.decl(metadata !83902)
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !83902, !noalias !83901, !nonnull !75, !noundef !75
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !83902, !noalias !83901, !noundef !75 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83903)
  %.idx.i = shl nuw nsw i64 %i.ei, 2              ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !83904
  %i.ek = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, 17) 4) #63, !noalias !83904 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.z, label %.preheader.i.i.i.preheader.i.i.i

.preheader.i.i.i.preheader.i.i.i:                 ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.eg, i64 %.idx.i, i1 false), !noalias !83905
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %.idx.i) #66
          to label %.noexc117 unwind label %bb.bo

.noexc117:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.preheader.i.i.i.preheader.i.i.i, %bb.x
  %.sroa.10.0.i10.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.x ], [ %i.ek, %.preheader.i.i.i.preheader.i.i.i ]
  %i.em = icmp samesign ult i64 %i.ei, 2305843009213693952
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.en, align 8, !alias.scope !83906, !noalias !83902
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.ei, ptr %i.eo, align 8, !alias.scope !83906, !noalias !83902
  store i64 %i.ei, ptr %i.l, align 8, !alias.scope !83906, !noalias !83902
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i10.i.i.i.i, ptr %i.ep, align 8, !alias.scope !83906, !noalias !83902
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.eq = icmp ult i64 %.sroa.6.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload
  call void @llvm.experimental.noalias.scope.decl(metadata !83907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !83908
  store i8 -1, ptr %i.h, align 8, !noalias !83908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83909
  store ptr %.sroa.5.0.copyload, ptr %i.g, align 8, !alias.scope !83910, !noalias !83911
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4148.0..sroa_idx, align 8, !alias.scope !83910, !noalias !83911
  %.sroa.5.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx149, align 8, !alias.scope !83910, !noalias !83911
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5blockNtB5_23CompressedBufferEncoderNtNtBb_11compression28VariablePerValueDecompressor10decompress:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit: ; preds = %bb.bq, %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !89771)
  call void @llvm.experimental.noalias.scope.decl(metadata !89772)
  call void @llvm.experimental.noalias.scope.decl(metadata !89773)
  call void @llvm.experimental.noalias.scope.decl(metadata !89774)
  %i.fy = load ptr, ptr %i.i, align 8, !alias.scope !89775, !nonnull !75, !noundef !75
  %i.fz = atomicrmw sub ptr %i.fy, i64 1 release, align 8, !noalias !89775
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.bt, label %.noexc96

bb.bt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc96 unwind label %bb.aq

.thread164:                                       ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !89776)
  call void @llvm.experimental.noalias.scope.decl(metadata !89777)
  call void @llvm.experimental.noalias.scope.decl(metadata !89778)
  call void @llvm.experimental.noalias.scope.decl(metadata !89779)
  %i.gb = load ptr, ptr %i.l, align 8, !alias.scope !89780, !nonnull !75, !noundef !75
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !89780
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.bu, label %.noexc96

bb.bu:                                            ; preds = %.thread164
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc96 unwind label %bb.aq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit92: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ao

bb.bv:                                            ; preds = %bb.g, %bb.f
  unreachable

bb.bw:                                            ; preds = %bb.j, %bb.af, %.body, %bb.bk, %.body88
  %.pn45.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ai, %bb.j ], [ %eh.lpad-body, %bb.af ], [ %eh.lpad-body89, %bb.bk ], [ %eh.lpad-body89, %.body88 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89781)
  %.val.i100 = load i64, ptr %i.m, align 8, !alias.scope !89781 ; 2 uses
  %i.ge = icmp eq i64 %.val.i100, 0
  br i1 %i.ge, label %.noexc96, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.val1.i101 = load ptr, ptr %i.w, align 8, !alias.scope !89781, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i101, i64 noundef %.val.i100, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89781
  br label %.noexc96

bb.by:                                            ; preds = %.noexc96
  resume { ptr, i32 } %.pn47
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_37PackedStructFixedPerValueDecompressorNtNtBb_11compression25FixedPerValueDecompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [56 x i8], align 8                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !75 ; 2 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4269, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4270)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = lshr exact i64 %i.n, 3                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !75 ; 10 uses
  %i.t = icmp ult i64 %i.s, 384307168202282326
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c
  store i64 0, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !75, !noundef !75
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89841
  %i.aa = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !89841 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %.lr.ph.preheader

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.r, %bb.q, %bb.e
  %.pn40 = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %.pn38, %bb.q ], [ %.pn38, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2) #67
          to label %common.resume unwind label %bb.ao

bb.e:                                             ; preds = %bb.m, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit45, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !89842)
  call void @llvm.experimental.noalias.scope.decl(metadata !89843)
  call void @llvm.experimental.noalias.scope.decl(metadata !89844)
  call void @llvm.experimental.noalias.scope.decl(metadata !89845)
  call void @llvm.experimental.noalias.scope.decl(metadata !89846)
  %i.ae = load ptr, ptr %2, align 8, !alias.scope !89847, !nonnull !75, !noundef !75
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !89847
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89848)
  call void @llvm.experimental.noalias.scope.decl(metadata !89849)
  call void @llvm.experimental.noalias.scope.decl(metadata !89850)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !89851, !nonnull !75, !noundef !75
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !89852
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
          to label %common.resume unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i: ; preds = %bb.h, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89853)
  call void @llvm.experimental.noalias.scope.decl(metadata !89854)
  call void @llvm.experimental.noalias.scope.decl(metadata !89855)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !89856, !nonnull !75, !noundef !75
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !89857
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.am)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %.pn40, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #66
          to label %bb.bg unwind label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.d
  store i64 %i.s, ptr %i.k, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  store ptr %i.aa, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !75, !noundef !75 ; 5 uses
  %.idx = mul nuw nsw i64 %i.s, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit
  %i.aw = phi i64 [ %i.bs, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.0144 = phi ptr [ %i.ax, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.au, %.lr.ph.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0144, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0144, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !75 ; 2 uses
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.n

._crit_edge:                                      ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit
  %.pre = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.bc = icmp eq i64 %i.bs, 0
  br i1 %i.bc, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %4 = add i64 %i.aw, 1                           ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.preheader.preheader314, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi277 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <2 x i64>, ptr %i.bd, align 8
  %wide.load278 = load <2 x i64>, ptr %i.be, align 8
  %i.bf = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bg = add <2 x i64> %wide.load278, %vec.phi277 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !89806

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bg, %i.bf
  %i.bi = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.preheader314

.preheader.preheader314:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.bi, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader314, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.bl, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader314 ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.bk, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader314 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.bj, align 8, !noundef !75
  %i.bk = add i64 %.val.i, %.sroa.02.0.i          ; 2 uses
  %i.bl = add nuw i64 %.sroa.04.0.i, 1
  %i.bm = icmp eq i64 %.sroa.04.0.i, %i.aw
  br i1 %i.bm, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader, !llvm.loop !89807

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1811, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4271)
          to label %bb.s unwind label %.loopexit.split-lp121

bb.o:                                             ; preds = %.lr.ph
  %i.bn = lshr exact i64 %i.az, 3
  %i.bo = load i64, ptr %i.k, align 8, !range !76, !alias.scope !89858, !noundef !75
  %i.bp = icmp eq i64 %i.aw, %i.bo
  br i1 %i.bp, label %bb.p, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit unwind label %.loopexit120

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.p, %bb.o
  %i.bq = load ptr, ptr %i.ar, align 8, !alias.scope !89858, !nonnull !75, !noundef !75
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aw
  store i64 %i.bn, ptr %i.br, align 8
  %i.bs = add i64 %i.aw, 1                        ; 5 uses
  store i64 %i.bs, ptr %i.as, align 8, !alias.scope !89858
  %i.bt = icmp eq ptr %i.ax, %i.av
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.loopexit120, %.loopexit.split-lp121, %bb.al, %.thread112
  %i.bu = phi ptr [ %i.ce, %bb.al ], [ %i.ce, %.thread112 ], [ %i.ar, %.loopexit120 ], [ %i.bx, %.loopexit.split-lp121 ]
  %.pn38 = phi { ptr, i32 } [ %i.ds, %bb.al ], [ %.pn36.ph, %.thread112 ], [ %lpad.loopexit122, %.loopexit120 ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89859)
  %.val.i42 = load i64, ptr %i.k, align 8, !alias.scope !89859 ; 2 uses
  %i.bv = icmp eq i64 %.val.i42, 0
  br i1 %i.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i = load ptr, ptr %i.bu, align 8, !alias.scope !89859, !nonnull !75, !noundef !75
  %i.bw = shl nuw i64 %.val.i42, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !89859
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

.loopexit120:                                     ; preds = %bb.p
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp121:                            ; preds = %bb.n, %bb.w, %bb.ad, %bb.ae, %bb.az
  %i.bx = phi ptr [ %i.ar, %bb.n ], [ %i.ce, %bb.w ], [ %i.ce, %bb.ad ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.az ]
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.t:                                             ; preds = %bb.az, %bb.bj, %bb.bi, %bb.s
  %i.bz = phi ptr [ %i.ce, %bb.bj ], [ %i.ce, %bb.bi ], [ %i.ar, %bb.s ], [ %i.ce, %bb.az ]
  call void @llvm.experimental.noalias.scope.decl(metadata !89860)
  %.val.i43 = load i64, ptr %i.k, align 8, !alias.scope !89860 ; 2 uses
  %i.ca = icmp eq i64 %.val.i43, 0
  br i1 %i.ca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit45, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i44 = load ptr, ptr %i.bz, align 8, !alias.scope !89860, !nonnull !75, !noundef !75
  %i.cb = shl nuw i64 %.val.i43, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i44, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !89860
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit45

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.preheader, %middle.block, %._crit_edge.thread, %._crit_edge
  %i.cc = phi ptr [ %.pre, %._crit_edge ], [ inttoptr (i64 8 to ptr), %._crit_edge.thread ], [ %.pre, %middle.block ], [ %.pre, %.preheader ]
  %i.cd = phi i64 [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %i.bs, %middle.block ], [ %i.bs, %.preheader ]
  %i.ce = phi ptr [ %i.ar, %._crit_edge ], [ %i.w, %._crit_edge.thread ], [ %i.ar, %middle.block ], [ %i.ar, %.preheader ] ; 11 uses
  %i.cf = phi ptr [ %i.as, %._crit_edge ], [ %i.x, %._crit_edge.thread ], [ %i.as, %middle.block ], [ %i.as, %.preheader ]
  %i.cg = phi ptr [ %i.au, %._crit_edge ], [ %i.z, %._crit_edge.thread ], [ %i.au, %middle.block ], [ %i.au, %.preheader ]
  %.sroa.0.0.i = phi i64 [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %i.bi, %middle.block ], [ %i.bk, %.preheader ]
  %.not = icmp eq i64 %.sroa.0.0.i, %i.q
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit
  %i.ch = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.q, i64 %3) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 0
  %i.cj = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.cj, label %bb.x, label %bb.y, !prof !81

bb.w:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4274, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4275)
          to label %bb.bj unwind label %.loopexit.split-lp121

bb.x:                                             ; preds = %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.sroa.021.0 = phi i64 [ -1, %bb.x ], [ %i.ci, %bb.v ]
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !75 ; 5 uses
  %i.cm = icmp ugt i64 %.sroa.021.0, %i.cl
  br i1 %i.cm, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noundef !75 ; 3 uses
  %i.cp = mul i64 %i.s, 80                        ; 3 uses
  %or.cond.i47 = icmp samesign ugt i64 %i.s, 115292150460684697
  br i1 %or.cond.i47, label %bb.ae, label %bb.aa, !prof !80

bb.aa:                                            ; preds = %bb.z
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89861
  %i.cr = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !89861 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = ptrtoint ptr %i.cr to i64
  %.pre184 = load ptr, ptr %i.ce, align 8
  %.pre185 = load i64, ptr %i.cf, align 8
  br label %bb.ag

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4196, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4273)
          to label %bb.bi unwind label %.loopexit.split-lp121

bb.ae:                                            ; preds = %bb.z, %bb.ab
  %.sroa.479.0.ph = phi i64 [ 8, %bb.ab ], [ 0, %bb.z ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.479.0.ph, i64 %i.cp) #66
          to label %bb.bg unwind label %.loopexit.split-lp121

bb.af:                                            ; preds = %bb.ap
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.thread112

bb.ag:                                            ; preds = %bb.ac, %bb.aa
  %i.cv = phi i64 [ %.pre185, %bb.ac ], [ %i.cd, %bb.aa ]
  %i.cw = phi ptr [ %.pre184, %bb.ac ], [ %i.cc, %bb.aa ]
  %.sroa.479.0 = phi i64 [ %i.s, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.1081.0 = phi i64 [ %i.ct, %bb.ac ], [ 8, %bb.aa ]
  %i.cx = inttoptr i64 %.sroa.1081.0 to ptr
  %i.cy = icmp samesign ule i64 %i.s, %.sroa.479.0
  call void @llvm.assume(i1 %i.cy)
  store i64 %.sroa.479.0, ptr %i.b, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.da, align 8
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.s) ; 2 uses
  %.not158 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not158, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %.not159 = icmp eq i64 %3, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph156, %bb.be
  %.sroa.02.0153 = phi i64 [ 0, %.lr.ph156 ], [ %i.fi, %bb.be ] ; 5 uses
  %.sroa.9.0152 = phi i64 [ 0, %.lr.ph156 ], [ %i.di, %bb.be ] ; 3 uses
  %i.di = add nuw nsw i64 %.sroa.9.0152, 1        ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.sroa.9.0152 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.sroa.9.0152
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !75 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dm = mul i64 %i.dl, %3                       ; 6 uses
  %.not.i52 = icmp slt i64 %i.dm, 0
  br i1 %.not.i52, label %bb.ap, label %bb.ai, !prof !80

bb.ai:                                            ; preds = %bb.ah
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit55, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89862
  %i.do = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89862 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = ptrtoint ptr %i.do to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit55

._crit_edge157:                                   ; preds = %bb.be, %bb.ag
  %i.dr = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %._crit_edge157
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %bb.q unwind label %bb.ao

bb.am:                                            ; preds = %._crit_edge157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !89863)
  %.val.i56 = load i64, ptr %i.k, align 8, !alias.scope !89863 ; 2 uses
end_hunk_1
