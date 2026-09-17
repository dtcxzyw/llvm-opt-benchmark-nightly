Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.08?download=true
inline.NumInlined: 813
inline.NumDeleted: 345
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtCsbNLsQi0JuJ4_5tgrep8matching19group_spans_by_line:bb.a
  %i.bs = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsf3Ta7LF998c_4core4cell4onceINtB3_8OnceCellINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE8try_initNCINvB2_11get_or_initNCNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB1Y_9LineIndex6starts0E0zEB20_(ptr noundef nonnull align 8 %i.i, ptr nonnull %.val.i.i.i76, i64 %.val2.i.i.i77)
          to label %bb.k unwind label %.loopexit113 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %.pre142 = load i64, ptr %i.i, align 8, !range !10
  %i.bt = icmp eq i64 %.pre142, -1
  %i.bu = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bv = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.0.0101123, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.0.0101123
  %.sroa.0.0.in.i = select i1 %i.bw, ptr %i.bx, ptr %i.j
  %.sroa.0.0.i75 = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !6 ; 4 uses
  br i1 %i.bt, label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex10line_start.exit.i, label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79, !prof !16

_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex10line_start.exit.i: ; preds = %bb.k
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %.val2.i.i.i.i = load i64, ptr %i.j, align 8, !noundef !6
  %i.by = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsf3Ta7LF998c_4core4cell4onceINtB3_8OnceCellINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE8try_initNCINvB2_11get_or_initNCNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB1Y_9LineIndex6starts0E0zEB20_(ptr noundef nonnull align 8 %i.i, ptr nonnull %.val.i.i.i.i, i64 %.val2.i.i.i.i)
          to label %.noexc85 unwind label %.loopexit113 ; 0 uses

.noexc85:                                         ; preds = %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex10line_start.exit.i
  %.pre.i = load i64, ptr %i.i, align 8, !range !10
  %i.bz = icmp eq i64 %.pre.i, -1
  %i.ca = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cb = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.cc = icmp ult i64 %.sroa.0.0101123, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.0.0101123
  %.sroa.0.0.in.i.i = select i1 %i.cc, ptr %i.cd, ptr %i.j
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noundef !6 ; 2 uses
  br i1 %i.bz, label %bb.l, label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79, !prof !16

bb.l:                                             ; preds = %.noexc85
  %.val.i.i.i83 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %.val2.i.i.i84 = load i64, ptr %i.j, align 8, !noundef !6
  %i.ce = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsf3Ta7LF998c_4core4cell4onceINtB3_8OnceCellINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE8try_initNCINvB2_11get_or_initNCNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB1Y_9LineIndex6starts0E0zEB20_(ptr noundef nonnull align 8 %i.i, ptr nonnull %.val.i.i.i83, i64 %.val2.i.i.i84)
          to label %.noexc86 unwind label %.loopexit113 ; 0 uses

.noexc86:                                         ; preds = %bb.l
  %.pre15.i = load ptr, ptr %i.k, align 8
  %.pre16.i = load i64, ptr %i.l, align 8
  br label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79

_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79: ; preds = %.thread156, %bb.k, %.noexc86, %.noexc85
  %.sroa.0.0.i75160 = phi i64 [ %.sroa.0.0.i75, %.noexc85 ], [ %.sroa.0.0.i75, %.noexc86 ], [ %.sroa.0.0.i75, %bb.k ], [ %.sroa.0.0.i75159, %.thread156 ] ; 6 uses
  %.sroa.0.0.i25.i = phi i64 [ %.sroa.0.0.i.i, %.noexc85 ], [ %.sroa.0.0.i.i, %.noexc86 ], [ %.sroa.0.0.i75, %bb.k ], [ %.sroa.0.0.i75159, %.thread156 ] ; 2 uses
  %i.cf = phi i64 [ %i.cb, %.noexc85 ], [ %.pre16.i, %.noexc86 ], [ %i.bv, %bb.k ], [ %i.bp, %.thread156 ]
  %i.cg = phi ptr [ %i.ca, %.noexc85 ], [ %.pre15.i, %.noexc86 ], [ %i.bu, %bb.k ], [ %i.bo, %.thread156 ]
  %i.ch = icmp ult i64 %i.bm, %i.cf
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.bm
  %.sroa.0.0.in.i80 = select i1 %i.ch, ptr %i.ci, ptr %i.j
  %.sroa.0.0.i81 = load i64, ptr %.sroa.0.0.in.i80, align 8, !noundef !6 ; 4 uses
  %i.cj = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ck = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.cl = icmp ugt i64 %.sroa.0.0.i81, %.sroa.0.0.i25.i
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79
  %i.cm = add i64 %.sroa.0.0.i81, -1              ; 4 uses
  %i.cn = icmp ult i64 %i.cm, %i.ck
  br i1 %i.cn, label %bb.o, label %.invoke

bb.n:                                             ; preds = %bb.o, %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79
  %.sroa.0.1.i82 = phi i64 [ %.sroa.0.0.i81, %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex6starts.exit.i79 ], [ %spec.select.i, %bb.o ] ; 4 uses
  %i.co = icmp ugt i64 %.sroa.0.1.i82, %.sroa.0.0.i25.i
  br i1 %i.co, label %bb.p, label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex8line_end.exit

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !6
  %i.cr = icmp eq i8 %i.cq, 10
  %spec.select.i = select i1 %i.cr, i64 %i.cm, i64 %.sroa.0.0.i81
  br label %bb.n

.invoke:                                          ; preds = %bb.p, %bb.m
  %i.cs = phi i64 [ %i.cm, %bb.m ], [ %i.cu, %bb.p ]
  %i.ct = phi ptr [ @55, %bb.m ], [ @56, %bb.p ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cu = add i64 %.sroa.0.1.i82, -1              ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %i.ck
  br i1 %i.cv, label %bb.q, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !6
  %i.cy = icmp eq i8 %i.cx, 13
  %spec.select14.i = select i1 %i.cy, i64 %i.cu, i64 %.sroa.0.1.i82
  br label %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex8line_end.exit

_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex8line_end.exit: ; preds = %bb.q, %bb.n
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i82, %bb.n ], [ %spec.select14.i, %bb.q ] ; 4 uses
  %.not.i89 = icmp ugt i64 %.sroa.0.0.i75160, %.sroa.0.2.i
  br i1 %.not.i89, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex8line_end.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1494
  store i64 %.sroa.0.0.i75160, ptr %i.c, align 8, !noalias !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1494
  store i64 %.sroa.0.2.i, ptr %i.b, align 8, !noalias !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1494
  store ptr %i.c, ptr %i.a, align 8, !noalias !1494
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1494
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cz, align 8, !noalias !1494
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1494
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #27
          to label %.noexc91 unwind label %.loopexit.split-lp

.noexc91:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %_RNvMNtCsbNLsQi0JuJ4_5tgrep8matchingNtB2_9LineIndex8line_end.exit
  %i.da = icmp ult i64 %i.n, %.sroa.0.0.i75160
  %..i = call i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.0.2.i)
  %i.db = sub i64 %..i, %.sroa.0.0.i75160
  %i.dc = select i1 %i.da, i64 0, i64 %i.db
  %i.dd = icmp ult i64 %i.p, %.sroa.0.0.i75160
  %..i93 = call i64 @llvm.umin.i64(i64 %i.p, i64 %.sroa.0.2.i)
  %i.de = sub i64 %..i93, %.sroa.0.0.i75160
  %i.df = select i1 %i.dd, i64 0, i64 %i.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapjINtNtBb_3vec3VecTjjEEE5entryCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.0.0101123)
          to label %bb.t unwind label %.loopexit113

bb.t:                                             ; preds = %bb.s
  %i.dg = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_5EntryjINtNtBd_3vec3VecTjjEEE10or_defaultCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e)
          to label %bb.u unwind label %.loopexit113 ; 4 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1495, !noundef !6 ; 3 uses
  %i.dj = load i64, ptr %i.dg, align 8, !range !9, !alias.scope !1495, !noundef !6
  %i.dk = icmp eq i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs22empcGmRho_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg) #30
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit unwind label %.loopexit113

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.v, %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !1495, !nonnull !6, !noundef !6
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.di ; 2 uses
  store i64 %i.dc, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.df, ptr %i.do, align 8
  %i.dp = add i64 %i.di, 1
  store i64 %i.dp, ptr %i.dh, align 8, !alias.scope !1495
  %exitcond.not = icmp eq i64 %.sroa.0.0101123, %i.bl
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapjINtNtBK_3vec3VecTjjEEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.w
  resume { ptr, i32 } %lpad.phi103

bb.w:                                             ; preds = %.loopexit113, %.loopexit.split-lp, %.thread
  %lpad.phi103 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.loopexit, %.loopexit113 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapjINtNtB8_3vec3VecTjjEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapjINtNtBK_3vec3VecTjjEEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNLsQi0JuJ4_5tgrep8matching20build_search_matcher(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.w = load i8, ptr %i.v, align 1, !range !11, !noundef !6 ; 2 uses
  %4 = trunc nuw i8 %i.w to i1                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.y = load i8, ptr %i.x, align 2, !range !11, !noundef !6 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.ab = load i8, ptr %i.aa, align 1, !range !11, !noundef !6 ; 2 uses
  %i.ac = trunc nuw i8 %i.ab to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.w, ptr %i.n, align 1, !noalias !1510
  store i8 %i.y, ptr %i.m, align 1, !noalias !1510
  store i8 %i.ab, ptr %i.l, align 1, !noalias !1510
  %i.ad = icmp eq i64 %2, 1
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1510
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.j, align 8, !noalias !1510
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !noalias !1510
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %i.ag, align 8, !noalias !1510
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1510
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1510
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0EE9from_iterB3j_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1510
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1510, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1510, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1510
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 1)
          to label %bb.t unwind label %bb.s, !noalias !1511

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1513
  br i1 %4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !1514
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1515, !noalias !1514, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1515, !noalias !1514, !noundef !6
  call void @_RNvCs5ARfLLDMQkv_5regex6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao), !noalias !1513
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.i, label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1513
  store ptr %i.f, ptr %i.d, align 8, !noalias !1513
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1513
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @52, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.k, !noalias !1514

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1513
  store ptr %i.f, ptr %i.b, align 8, !noalias !1513
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !1513
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @51, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit15.i.i unwind label %bb.k, !noalias !1514

bb.j:                                             ; preds = %.body18.i.i, %.body.i.i, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body19.i.i, %.body18.i.i ], [ %i.ap, %bb.k ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.r, !noalias !1514

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit15.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1513
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.l, !noalias !1514

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit15.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i unwind label %bb.m, !noalias !1514

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1514
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit15.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i.i unwind label %bb.n, !noalias !1514

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.aq, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1513
  br label %bb.j

.sink.split.i.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %.sink.i.i = phi ptr [ %i.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i ], [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sink.i.i, i64 24, i1 false), !noalias !1513
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1513
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i unwind label %bb.o, !noalias !1514

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body18.i.i unwind label %bb.p, !noalias !1514

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1514
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i.i unwind label %bb.q, !noalias !1514

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

.body18.i.i:                                      ; preds = %bb.q, %bb.o
  %eh.lpad-body19.i.i = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.at, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1513
  br label %bb.j

bb.r:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1514
  unreachable

common.resume:                                    ; preds = %.body, %bb.as, %bb.al, %bb.j, %.body.i, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.cz, %bb.as ], [ %.pn.i, %.body.i ], [ %i.cs, %bb.al ], [ %i.bb, %bb.x ], [ %.pn.i.i, %bb.j ], [ %.pn15, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_.exit.i: ; preds = %.sink.split.i.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1510
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns.exit

.body.i:                                          ; preds = %bb.v, %bb.u, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %i.ax, %bb.s ], [ %i.az, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #29
          to label %common.resume unwind label %bb.z, !noalias !1511

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1510
  store ptr %i.i, ptr %i.h, align 8, !noalias !1510
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1510
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @83, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #29
          to label %.body.i unwind label %bb.z, !noalias !1511

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1510
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.v, !noalias !1511

bb.v:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.w, !noalias !1511

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1511
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.s, !noalias !1511

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1510
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.x, !noalias !1511

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.y, !noalias !1511

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1511
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1510
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns.exit

bb.z:                                             ; preds = %bb.u, %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1511
  unreachable

_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns.exit: ; preds = %_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bf = load i8, ptr %i.be, align 1, !range !28, !noundef !6 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 2
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.ai unwind label %bb.ah

bb.ab:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1518
  invoke void @_RNvMNtNtCs5ARfLLDMQkv_5regex8builders6stringNtB2_12RegexBuilder3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bq = load i8, ptr %i.bp, align 8, !range !11, !alias.scope !1517, !noalias !1519, !noundef !6
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 157
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 158
  store i8 %i.bq, ptr %.sroa.48.0..sroa_idx.i, align 1, !noalias !1518
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bs = load i8, ptr %i.br, align 4, !range !11, !alias.scope !1517, !noalias !1519, !noundef !6
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 159
  store i8 %i.bs, ptr %.sroa.5.0..sroa_idx.i17, align 2, !noalias !1518
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.bu = load i8, ptr %i.bt, align 1, !range !11, !alias.scope !1517, !noalias !1519, !noundef !6
  store i8 %i.bu, ptr %.sroa.516.0..sroa_idx.i, align 1, !noalias !1518
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 38
  %i.bw = load i8, ptr %i.bv, align 2, !range !11, !alias.scope !1517, !noalias !1519, !noundef !6
  %i.bx = xor i8 %i.bw, 1
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 163
  store i8 %i.bx, ptr %.sroa.426.0..sroa_idx.i, align 1, !noalias !1518
  %i.by = load i64, ptr %3, align 8, !range !19, !alias.scope !1517, !noalias !1519, !noundef !6
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1517, !noalias !1519
  %.sroa.0.0.i = select i1 %i.bz, i64 %i.cb, i64 104857600
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5ARfLLDMQkv_5regex8builders6stringNtB2_12RegexBuilder10size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, i64 noundef %.sroa.0.0.i)
          to label %bb.ad unwind label %bb.ac, !noalias !1520

bb.ac:                                            ; preds = %bb.ae, %bb.ad, %.noexc
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5ARfLLDMQkv_5regex8builders6string12RegexBuilderECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #29
          to label %.body unwind label %bb.ag, !noalias !1520

bb.ad:                                            ; preds = %.noexc
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !19, !alias.scope !1517, !noalias !1519, !noundef !6
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1517, !noalias !1519
  %.sroa.03.0.i = select i1 %i.cg, i64 %i.ci, i64 1048576000
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5ARfLLDMQkv_5regex8builders6stringNtB2_12RegexBuilder14dfa_size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.cc, i64 noundef %.sroa.03.0.i)
          to label %bb.ae unwind label %bb.ac, !noalias !1520 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  store i32 250, ptr %i.ck, align 8, !noalias !1520
  invoke void @_RNvMNtNtCs5ARfLLDMQkv_5regex8builders6stringNtB2_12RegexBuilder5build(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.cj)
          to label %bb.af unwind label %bb.ac, !noalias !1517

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5ARfLLDMQkv_5regex8builders6string12RegexBuilderECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a)
          to label %bb.ao unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1520
  unreachable

.body:                                            ; preds = %bb.bi, %bb.ay, %bb.ah, %bb.ac, %bb.aw, %bb.bd, %bb.bl
  %.pn15 = phi { ptr, i32 } [ %i.ds, %bb.bl ], [ %i.cd, %bb.ac ], [ %i.dc, %bb.aw ], [ %i.dj, %bb.bd ], [ %i.cm, %bb.ah ], [ %i.de, %bb.ay ], [ %i.dq, %bb.bi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #29
          to label %common.resume unwind label %bb.ba

bb.ah:                                            ; preds = %bb.af, %bb.ab, %bb.aj, %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.aa
  %i.cn = load i64, ptr %0, align 8, !range !1521, !noundef !6
  %i.co = icmp eq i64 %i.cn, -2
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !6, !noundef !6
  %i.cr = invoke fastcc noundef nonnull ptr @_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching20build_search_matcher0B5_(ptr noundef nonnull %i.cq)
          to label %bb.an unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai, %bb.an
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit20 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.an:                                            ; preds = %bb.aj
  store ptr %i.cr, ptr %i.cp, align 8
  br label %bb.ak

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit20: ; preds = %bb.ak, %bb.ar
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1518
  %i.cu = load ptr, ptr %i.t, align 8, !noundef !6
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !10, !noundef !6
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.au, label %bb.av, !prof !7

bb.aq:                                            ; preds = %bb.ao
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, %bb.az, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit20 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.au:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs0_NtCs5ARfLLDMQkv_5regex5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.db = invoke fastcc noundef nonnull ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err(ptr noundef nonnull @85, ptr noundef nonnull %i.r)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.ap
  %5 = icmp ne i8 %i.bf, 0
  %or.cond2.not = or i1 %5, %4
  br i1 %or.cond2.not, label %bb.bb, label %bb.bc, !prof !8

bb.aw:                                            ; preds = %bb.au
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #29
          to label %.body unwind label %bb.ba

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dd, align 8
  store i64 -2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i21, %bb.bm, %bb.ax
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ar

bb.ba:                                            ; preds = %bb.bl, %bb.bd, %bb.aw, %.body
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs0_NtCs5ARfLLDMQkv_5regex5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.dg = invoke fastcc noundef nonnull ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err(ptr noundef nonnull @85, ptr noundef nonnull %i.o)
          to label %bb.bm unwind label %bb.bl

bb.bc:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %i.dh = load ptr, ptr %i.bl, align 8, !nonnull !6, !noundef !6
  %i.di = load i64, ptr %i.bn, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #29
          to label %.body unwind label %bb.ba

bb.be:                                            ; preds = %bb.bc
  %i.dk = load i64, ptr %0, align 8, !range !1521, !noundef !6
  %i.dl = icmp eq i64 %i.dk, -2
  br i1 %i.dl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !6, !noundef !6
  %i.do = invoke fastcc noundef nonnull ptr @_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching20build_search_matchers_0B5_(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull %i.dn)
          to label %bb.bk unwind label %bb.bd

bb.bg:                                            ; preds = %bb.be, %bb.bk
  %i.dp = load i64, ptr %i.q, align 8, !range !10, !alias.scope !1522, !noundef !6
  %.not.i = icmp eq i64 %i.dp, -1
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i21 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i21: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ay

bb.bk:                                            ; preds = %bb.bf
  store ptr %i.do, ptr %i.dm, align 8
  br label %bb.bg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.bg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ar

bb.bl:                                            ; preds = %bb.bb
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #29
          to label %.body unwind label %bb.ba

bb.bm:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.dt, align 8
  store i64 -2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.bn unwind label %bb.ay

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ar
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = tail call noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.f = call noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtCs6MoqnCnVQOT_10serde_json5value5indexReNtB5_5Index10index_intoCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef align 8 ptr @_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value5indexeNtB4_5Index10index_into(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs1_NtNtCs6MoqnCnVQOT_10serde_json5value5indexReNtB5_5Index15index_or_insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef nonnull align 8 ptr @_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value5indexeNtB4_5Index15index_or_insert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0INtB7_5FnMutTRjEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %.val = load i64, ptr %1, align 8, !noundef !6  ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !19, !alias.scope !1525, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1525
  %i.f = icmp eq i64 %i.e, %.val
  %or.cond.not.i = select i1 %i.d, i1 %i.f, i1 false ; 2 uses
  br i1 %or.cond.not.i, label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0B5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !alias.scope !1525
  store i64 %.val, ptr %i.c, align 8, !alias.scope !1525
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0B5_.exit

_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0B5_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = xor i1 %or.cond.not.i, true
  ret i1 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtBa_6result6ResultppEINtNtB10_4iter20FromParallelIteratorIB1s_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0INtB6_5FnMutTIB1s_B2R_B3D_EEE8call_mutB2V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !13, !noundef !6
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.d = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = cmpxchg ptr %.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !1536
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %.noexc11.thread.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1536
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.h = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1536
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #30
          to label %.noexc.i unwind label %.thread14.i, !noalias !1535

.noexc.i:                                         ; preds = %bb.d
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i.i: ; preds = %.noexc.i, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.m, %.noexc.i ], [ 0, %bb.c ]
  %i.n = load atomic i8, ptr %i.g monotonic, align 1, !noalias !1536
  %.not.i.i.i = icmp ne i8 %i.n, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvMs9_B10_BX_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %.val)
          to label %bb.g unwind label %.thread14.i, !noalias !1535

bb.e:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !1535
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  br label %_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_.exit

bb.f:                                             ; preds = %bb.m, %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.not.i, label %common.resume.i, label %bb.x

.thread14.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i, %bb.r, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i.i
  %i.q = load i64, ptr %i.a, align 8, !range !19, !noalias !1536, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1536, !nonnull !6, !align !13, !noundef !6 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !11, !noalias !1536, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1536
  %i.v = trunc nuw i64 %i.q to i1
  br i1 %i.v, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !10, !noalias !1535, !noundef !6
  %.not.not.i = icmp eq i64 %i.x, -1              ; 3 uses
  br i1 %.not.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.z = trunc nuw i8 %i.u to i1
  br i1 %i.z, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1535
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #30
          to label %.noexc10.i unwind label %bb.f, !noalias !1535

.noexc10.i:                                       ; preds = %bb.k
  br i1 %i.ad, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.y monotonic, align 4, !noalias !1535
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.l, %.noexc10.i, %bb.j, %bb.i
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4, !noalias !1535
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.m, label %.noexc11.i, !prof !7

bb.m:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
          to label %.noexc11.i unwind label %bb.f, !noalias !1535

bb.n:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1535
  br label %bb.i

bb.o:                                             ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1535
  unreachable

bb.p:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ai = trunc nuw i8 %i.u to i1
  br i1 %i.ai, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1537
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.am = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #30
          to label %.noexc15.i unwind label %.thread14.i, !noalias !1535

.noexc15.i:                                       ; preds = %bb.r
  br i1 %i.am, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15.i
  store atomic i8 1, ptr %i.ah monotonic, align 4, !noalias !1537
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.s, %.noexc15.i, %bb.q, %bb.p
  %i.an = atomicrmw xchg ptr %i.s, i32 0 release, align 4, !noalias !1537
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i, label %.noexc11.thread.i, !prof !7

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
          to label %.noexc11.thread.i unwind label %.thread14.i, !noalias !1535

.noexc11.thread.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !1533, !noalias !1534
  br label %bb.u

.noexc11.i:                                       ; preds = %bb.m, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !1533, !noalias !1534
  br i1 %.not.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1535
  br label %_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_.exit

bb.u:                                             ; preds = %.noexc11.i, %.noexc11.thread.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.v, !noalias !1535

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.w, !noalias !1535

bb.w:                                             ; preds = %bb.v
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1535
  unreachable

common.resume.i:                                  ; preds = %bb.x, %bb.v, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.ap, %bb.v ], [ %.pn418.i, %bb.x ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.u
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1535
  br label %bb.t

bb.x:                                             ; preds = %.thread14.i, %bb.f
  %.pn418.i = phi { ptr, i32 } [ %i.p, %.thread14.i ], [ %i.o, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #29
          to label %common.resume.i unwind label %bb.o, !noalias !1535

_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_.exit: ; preds = %bb.e, %bb.t
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !1542, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0CsbNLsQi0JuJ4_5tgrep.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0CsbNLsQi0JuJ4_5tgrep.exit

_RNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readnone captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvMNtNtCs22empcGmRho_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs6_NtNtB7_4meta5regexNtB1D_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0EB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsl_NtNtCs22empcGmRho_14regex_automata4util6searchNtB5_10MatchErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs22empcGmRho_14regex_automata4util6searchNtB5_4SpanNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync7condvar5futexNtB2_7Condvar12wait_timeout(ptr noundef nonnull align 4, ptr noundef nonnull align 4, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRjECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitENCINvMs1_B2y_NtB2y_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2A_5serve18collect_match_rows0Es0_0EE9from_iterB2A_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjRNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1U_8adapters3map3MapINtNtNtB1W_5slice4iter4IterB17_ENCINvMs1_B19_NtB19_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1b_5serve18collect_match_rows0Es1_0EEB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterjNtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjRNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1U_8adapters3map3MapINtNtNtB1W_5slice4iter4IterB17_ENCINvMs1_B19_NtB19_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1b_5serve18collect_match_rows0Es_0EEB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitENCINvMs1_B2y_NtB2y_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2A_6search19search_decoded_files0_0Es0_0EE9from_iterB2A_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjRNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1U_8adapters3map3MapINtNtNtB1W_5slice4iter4IterB17_ENCINvMs1_B19_NtB19_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1b_6search19search_decoded_files0_0Es1_0EEB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjRNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1U_8adapters3map3MapINtNtNtB1W_5slice4iter4IterB17_ENCINvMs1_B19_NtB19_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1b_6search19search_decoded_files0_0Es_0EEB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsbZZSDSnXQ8V_6memchr3extPhNtB2_7Pointer8distanceCsbNLsQi0JuJ4_5tgrep(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds6_0E0EB3O_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds6_0Es_0EB3O_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds6_0Es0_0EB3R_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve39withhold_evidence_for_deferred_snapshot0E0EB3O_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve39withhold_evidence_for_deferred_snapshot0Es_0EB3O_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCINvMs4_B1s_NtB1s_12FileEvidence6retainNCNvNtCsbNLsQi0JuJ4_5tgrep5serve39withhold_evidence_for_deferred_snapshot0Es0_0EB3R_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs22empcGmRho_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjRNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecAjj2_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHitENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCskrXG8MCksKX_11fancy_regex2vm4InsnENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs22empcGmRho_14regex_automata4util10primitives7StateIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs22empcGmRho_14regex_automata6hybrid2id11LazyStateIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs22empcGmRho_14regex_automata4util11determinize5state5StateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeciENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecAjj2_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!1322 = !{!1287}
!1323 = !{!1289, !1287, !1288, !1284, !1285, !1282}
!1324 = !{!1291}
!1325 = !{!1293, !1292, !1291, !1289, !1287, !1288, !1284, !1285, !1282}
!1326 = !{!1295}
!1327 = !{!1295, !1291, !1287, !1284, !1282}
!1328 = !{!1296, !1293, !1292, !1289, !1288, !1285}
!1329 = !{!1296, !1295, !1293, !1292, !1291, !1289, !1287, !1288, !1284, !1285, !1282}
!1330 = !{!1288, !1284, !1285, !1282}
!1331 = !{!1299}
!1332 = !{!1299, !1288, !1284, !1285, !1282}
!1333 = !{!1284, !1282}
!1334 = !{!1288, !1285}
!1335 = !{!1299, !1284, !1282}
!1336 = !{!1285}
!1337 = !{!1301}
!1338 = !{!1303}
!1339 = !{!1305}
!1340 = !{!1307}
!1341 = !{!1309}
!1342 = !{!1309, !1307, !1305, !1303}
!1343 = !{!1307, !1305, !1303}
!1344 = !{!1311}
!1345 = distinct !{!1345, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep"}
!1346 = distinct !{!1346, !1345, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep: argument 1"}
!1347 = distinct !{!1347, !1345, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1348 = distinct !{!1348, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range"}
!1349 = distinct !{!1349, !1348, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range: argument 0"}
!1350 = distinct !{!1350, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1351 = distinct !{!1351, !1350, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1352 = distinct !{!1352, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep"}
!1353 = distinct !{!1353, !1352, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1354 = distinct !{!1354, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep"}
!1355 = distinct !{!1355, !1354, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1356 = distinct !{!1356, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep"}
!1357 = distinct !{!1357, !1356, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1358 = distinct !{!1358, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep"}
!1359 = distinct !{!1359, !1358, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1360 = distinct !{!1360, !1345, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep: argument 1:h.rot"}
!1361 = !{!1346}
!1362 = !{!1347}
!1363 = !{!1349}
!1364 = !{!1351}
!1365 = !{!1353}
!1366 = !{!1355}
!1367 = !{!1357}
!1368 = !{!1359}
!1369 = !{!1360}
!1370 = distinct !{!1370, !27}
!1371 = distinct !{!1371, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep"}
!1372 = distinct !{!1372, !1371, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1373 = !{!1372}
!1374 = distinct !{!1374, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10start_recvCsbNLsQi0JuJ4_5tgrep"}
!1375 = distinct !{!1375, !1374, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10start_recvCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1376 = distinct !{!1376, !27}
!1377 = distinct !{!1377, !27}
!1378 = distinct !{!1378, !27}
!1379 = distinct !{!1379, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4readCsbNLsQi0JuJ4_5tgrep"}
!1380 = distinct !{!1380, !1379, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4readCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1381 = distinct !{!1381, !"_RINvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0uECsbNLsQi0JuJ4_5tgrep"}
!1382 = distinct !{!1382, !1381, !"_RINvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0uECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1383 = distinct !{!1383, !"_RNvYNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbNLsQi0JuJ4_5tgrep"}
!1384 = distinct !{!1384, !1383, !"_RNvYNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1385 = distinct !{!1385, !"_RNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CsbNLsQi0JuJ4_5tgrep"}
!1386 = distinct !{!1386, !1385, !"_RNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CsbNLsQi0JuJ4_5tgrep: argument 0"}
!1387 = distinct !{!1387, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep"}
!1388 = distinct !{!1388, !1387, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1389 = distinct !{!1389, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep"}
!1390 = distinct !{!1390, !1389, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1391 = distinct !{!1391, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep"}
!1392 = distinct !{!1392, !1391, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1393 = distinct !{!1393, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1394 = distinct !{!1394, !1393, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1395 = distinct !{!1395, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep"}
!1396 = distinct !{!1396, !1395, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1397 = distinct !{!1397, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep"}
!1398 = distinct !{!1398, !1397, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1399 = distinct !{!1399, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1400 = distinct !{!1400, !1399, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1401 = distinct !{!1401, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextEECsbNLsQi0JuJ4_5tgrep"}
!1402 = distinct !{!1402, !1401, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1403 = distinct !{!1403, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep"}
!1404 = distinct !{!1404, !1403, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1405 = distinct !{!1405, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep"}
!1406 = distinct !{!1406, !1405, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1407 = distinct !{!1407, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1408 = distinct !{!1408, !1407, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1409 = distinct !{!1409, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep"}
!1410 = distinct !{!1410, !1409, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1411 = distinct !{!1411, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep"}
!1412 = distinct !{!1412, !1411, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1413 = distinct !{!1413, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1414 = distinct !{!1414, !1413, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1415 = !{!1375}
!1416 = !{!1380}
!1417 = !{!1382}
!1418 = !{!1388, !1386, !1384, !1382}
!1419 = !{!1390}
!1420 = !{!1392}
!1421 = !{!1394}
!1422 = !{!1394, !1392, !1390}
!1423 = !{!1394, !1392, !1390, !1382}
!1424 = !{!1396}
!1425 = !{!1398}
!1426 = !{!1400}
!1427 = !{!1400, !1398, !1396}
!1428 = !{!1400, !1398, !1396, !1382}
!1429 = !{!1408, !1406, !1404, !1402, !1382}
!1430 = !{!1414, !1412, !1410, !1382}
!1431 = distinct !{!1431, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10start_sendCsbNLsQi0JuJ4_5tgrep"}
!1432 = distinct !{!1432, !1431, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10start_sendCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1433 = distinct !{!1433, !27}
!1434 = distinct !{!1434, !27}
!1435 = distinct !{!1435, !27}
!1436 = distinct !{!1436, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE5writeCsbNLsQi0JuJ4_5tgrep"}
!1437 = distinct !{!1437, !1436, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE5writeCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1438 = distinct !{!1438, !1436, !"_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE5writeCsbNLsQi0JuJ4_5tgrep: argument 1"}
!1439 = !{!1432}
!1440 = !{!1437}
!1441 = !{!1437, !1438}
!1442 = distinct !{!1442, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbNLsQi0JuJ4_5tgrep"}
!1443 = distinct !{!1443, !1442, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1444 = !{!1443}
!1445 = distinct !{!1445, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!1446 = distinct !{!1446, !1445, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!1447 = distinct !{!1447, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!1448 = distinct !{!1448, !1447, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!1449 = distinct !{!1449, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_"}
!1450 = distinct !{!1450, !1449, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 0"}
!1451 = distinct !{!1451, !1449, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 2"}
!1452 = distinct !{!1452, !1449, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 1"}
!1453 = distinct !{!1453, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!1454 = distinct !{!1454, !1453, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!1455 = distinct !{!1455, !1449, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 0:thread"}
!1456 = distinct !{!1456, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching21build_fancy_prefilter"}
!1457 = distinct !{!1457, !1456, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching21build_fancy_prefilter: argument 1"}
!1458 = distinct !{!1458, !1456, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching21build_fancy_prefilter: argument 0"}
!1459 = distinct !{!1459, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_"}
!1460 = distinct !{!1460, !1459, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 0"}
!1461 = distinct !{!1461, !1459, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 2"}
!1462 = distinct !{!1462, !1459, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_fancy0B5_: argument 1"}
!1463 = distinct !{!1463, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5ARfLLDMQkv_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsbNLsQi0JuJ4_5tgrep"}
!1464 = distinct !{!1464, !1463, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5ARfLLDMQkv_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1465 = distinct !{!1465, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep"}
!1466 = distinct !{!1466, !1465, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1467 = !{!1446}
!1468 = !{!1448}
!1469 = !{!1450}
!1470 = !{!1450, !1452, !1451}
!1471 = !{!1452, !1451}
!1472 = !{!1450, !1452}
!1473 = !{!1454}
!1474 = !{!1455, !1452, !1451}
!1475 = !{!1458, !1457}
!1476 = !{!1458}
!1477 = !{!1460}
!1478 = !{!1460, !1462, !1461, !1458, !1457}
!1479 = !{!1460, !1462, !1458, !1457}
!1480 = !{!1462, !1461, !1458, !1457}
!1481 = !{!1460, !1462, !1458}
!1482 = !{!1457}
!1483 = !{!1466, !1464}
!1484 = distinct !{!1484, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSj16binary_search_byNCNvB2_13binary_search0ECsbNLsQi0JuJ4_5tgrep"}
!1485 = distinct !{!1485, !1484, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSj16binary_search_byNCNvB2_13binary_search0ECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1486 = distinct !{!1486, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSj16binary_search_byNCNvB2_13binary_search0ECsbNLsQi0JuJ4_5tgrep"}
!1487 = distinct !{!1487, !1486, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSj16binary_search_byNCNvB2_13binary_search0ECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1488 = distinct !{!1488, !"_RNvXsV_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_3Ord5clamp"}
!1489 = distinct !{!1489, !1488, !"_RNvXsV_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_3Ord5clamp: argument 0"}
!1490 = distinct !{!1490, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep"}
!1491 = distinct !{!1491, !1490, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1492 = !{!1485}
!1493 = !{!1487}
!1494 = !{!1489}
!1495 = !{!1491}
!1496 = distinct !{!1496, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns"}
!1497 = distinct !{!1497, !1496, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns: argument 1"}
!1498 = distinct !{!1498, !1496, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns: argument 0"}
!1499 = distinct !{!1499, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_"}
!1500 = distinct !{!1500, !1499, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_: argument 2"}
!1501 = distinct !{!1501, !1499, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_: argument 1"}
!1502 = distinct !{!1502, !1499, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0B5_: argument 0"}
!1503 = distinct !{!1503, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_regex"}
!1504 = distinct !{!1504, !1503, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_regex: argument 2"}
!1505 = distinct !{!1505, !1503, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_regex: argument 1"}
!1506 = distinct !{!1506, !1503, !"_RNvNtCsbNLsQi0JuJ4_5tgrep8matching11build_regex: argument 0"}
!1507 = distinct !{!1507, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep"}
!1508 = distinct !{!1508, !1507, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5ARfLLDMQkv_5regex5error5ErrorECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1509 = !{!1497}
!1510 = !{!1498, !1497}
!1511 = !{!1498}
!1512 = !{!1500}
!1513 = !{!1502, !1501, !1500, !1498, !1497}
!1514 = !{!1502, !1501, !1498}
!1515 = !{!1500, !1497}
!1516 = !{!1501, !1500, !1497}
!1517 = !{!1504}
!1518 = !{!1506, !1505, !1504}
!1519 = !{!1506, !1505}
!1520 = !{!1506, !1504}
!1521 = !{i64 -2, i64 3}
!1522 = !{!1508}
!1523 = distinct !{!1523, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0B5_"}
!1524 = distinct !{!1524, !1523, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_liness_0B5_: argument 0"}
!1525 = !{!1524}
!1526 = distinct !{!1526, !"_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_"}
!1527 = distinct !{!1527, !1526, !"_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_: argument 0"}
!1528 = distinct !{!1528, !1526, !"_RNCINvNvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtNtBc_4iter20FromParallelIteratorIBE_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2l_: argument 1"}
!1529 = distinct !{!1529, !"_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_lockCsbNLsQi0JuJ4_5tgrep"}
!1530 = distinct !{!1530, !1529, !"_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_lockCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1531 = distinct !{!1531, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEINtB12_12TryLockErrorBX_EEECsbNLsQi0JuJ4_5tgrep"}
!1532 = distinct !{!1532, !1531, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEINtB12_12TryLockErrorBX_EEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1533 = !{!1527}
!1534 = !{!1528}
!1535 = !{!1527, !1528}
!1536 = !{!1530, !1527, !1528}
!1537 = !{!1532, !1527, !1528}
!1538 = distinct !{!1538, !"_RNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0CsbNLsQi0JuJ4_5tgrep"}
!1539 = distinct !{!1539, !1538, !"_RNCNKNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID0s_0CsbNLsQi0JuJ4_5tgrep: argument 0"}
!1540 = distinct !{!1540, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep"}
!1541 = distinct !{!1541, !1540, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1542 = !{!1541, !1539}
end_hunk_1
