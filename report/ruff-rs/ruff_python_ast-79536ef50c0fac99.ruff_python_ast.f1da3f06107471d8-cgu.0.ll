Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvYNCNvNtCskLngH8kgpZI_15ruff_python_ast3str14PREFIX_MATCHER0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB8_:bb.a
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.jm, align 1, !noalias !18714 ; 2 uses
  %.not.i.i = icmp ugt i8 %i.hh, %.sroa.02.0.copyload.i.i
  br i1 %.not.i.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 5
  %.sroa.05.0.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 1, !noalias !18714 ; 2 uses
  %i.jn = icmp eq i32 %.sroa.05.0.i.i, 0
  br i1 %i.jn, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread.i, label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jo = icmp eq i8 %i.hh, %.sroa.02.0.copyload.i.i
  br i1 %i.jo, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread.i

bb.bn:                                            ; preds = %bb.bh
  %i.jp = zext i8 %i.hh to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !18711, !noalias !18705, !noundef !46
  %i.js = zext i8 %i.jr to i64
  %i.jt = zext i32 %i.jf to i64
  %i.ju = add nuw nsw i64 %i.js, %i.jt            ; 3 uses
  %i.jv = load i64, ptr %i.bd, align 16, !alias.scope !18711, !noalias !18705, !noundef !46 ; 2 uses
  %i.jw = icmp ult i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.bo, label %.invoke

bb.bo:                                            ; preds = %bb.bn
  %i.jx = load ptr, ptr %i.bh, align 8, !alias.scope !18711, !noalias !18705, !nonnull !46, !noundef !46
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ju
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i

.invoke:                                          ; preds = %bb.bn, %bb.bg, %bb.bb, %bb.bj
  %i.jz = phi i64 [ %i.jk, %bb.bj ], [ %i.iz, %bb.bg ], [ %i.hq, %bb.bb ], [ %i.ju, %bb.bn ]
  %i.ka = phi i64 [ %i.ji, %bb.bj ], [ %i.ja, %bb.bg ], [ %i.hr, %bb.bb ], [ %i.jv, %bb.bn ]
  %i.kb = phi ptr [ @336, %bb.bj ], [ @334, %bb.bg ], [ @37, %bb.bb ], [ @335, %bb.bn ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jz, i64 noundef %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i: ; preds = %bb.bo, %bb.bm
  %.sroa.0.0.i.in.i = phi ptr [ %i.jy, %bb.bo ], [ %.sroa.4.0..sroa_idx.i.i, %bb.bm ]
  %.sroa.0.0.i.i35 = load i32, ptr %.sroa.0.0.i.in.i, align 1, !noalias !18705 ; 2 uses
  %.not138.i = icmp eq i32 %.sroa.0.0.i.i35, 1
  br i1 %.not138.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread.i, label %bb.cc

bb.bp:                                            ; preds = %_RNvMs4_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit.i
  %i.kc = add i8 %i.hh, -65
  %or.cond2.i = icmp ult i8 %i.kc, 26
  br i1 %or.cond2.i, label %.thread.i, label %bb.bq

.thread.i:                                        ; preds = %bb.bp
  %i.kd = or disjoint i8 %i.hh, 32
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ke = add i8 %i.hh, -97
  %or.cond3.i = icmp ult i8 %i.ke, 26
  %i.kf = and i8 %i.hh, 95
  %spec.select.i = select i1 %or.cond3.i, i8 %i.kf, i8 %i.hh ; 2 uses
  %.not.i151.i = icmp eq i8 %spec.select.i, 0
  br i1 %.not.i151.i, label %_RNvMs4_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit154.i, label %bb.br

bb.br:                                            ; preds = %bb.bq, %.thread.i
  %.sroa.058.0186.i = phi i8 [ %i.kd, %.thread.i ], [ %spec.select.i, %bb.bq ] ; 2 uses
  %i.kg = add i8 %.sroa.058.0186.i, -1            ; 2 uses
  %.lobit.i152.i = lshr i8 %i.kg, 7
  %i.kh = zext nneg i8 %.lobit.i152.i to i64
  %i.ki = and i8 %i.kg, 127
  %i.kj = zext nneg i8 %i.ki to i128
  %i.kk = shl nuw i128 1, %i.kj
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.kh ; 2 uses
  %i.km = load i128, ptr %i.kl, align 16, !alias.scope !18716, !noalias !18705, !noundef !46
  %i.kn = or i128 %i.kk, %i.km
  store i128 %i.kn, ptr %i.kl, align 16, !alias.scope !18716, !noalias !18705
  br label %_RNvMs4_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit154.i

_RNvMs4_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit154.i: ; preds = %bb.br, %bb.bq
  %.sroa.058.0187.i = phi i8 [ 0, %bb.bq ], [ %.sroa.058.0186.i, %bb.br ] ; 2 uses
  %.lobit1.i153.i = lshr i8 %.sroa.058.0187.i, 7
  %i.ko = zext nneg i8 %.lobit1.i153.i to i64
  %i.kp = and i8 %.sroa.058.0187.i, 127
  %i.kq = zext nneg i8 %i.kp to i128
  %i.kr = shl nuw i128 1, %i.kq
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ko ; 2 uses
  %i.kt = load i128, ptr %i.ks, align 16, !alias.scope !18716, !noalias !18705, !noundef !46
  %i.ku = or i128 %i.kr, %i.kt
  store i128 %i.ku, ptr %i.ks, align 16, !alias.scope !18716, !noalias !18705
  br label %bb.bg

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread.i: ; preds = %bb.bl, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i, %bb.bm, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18704
  invoke void @_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA11alloc_state(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai, i64 noundef %.sroa.9165.0252.i)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread.i
  %i.kv = load i32, ptr %i.d, align 8, !range !18701, !noalias !18704, !noundef !46 ; 2 uses
  %.not139.i = icmp eq i32 %i.kv, -1
  %i.kw = load i32, ptr %i.co, align 4, !noalias !18704 ; 5 uses
  br i1 %.not139.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc56
  %.sroa.5124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.14.8.copyload = load i64, ptr %.sroa.5124.0..sroa_idx.i, align 8, !noalias !18708
  %.sroa.18.8..sroa.5124.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.18.8.copyload = load i64, ptr %.sroa.18.8..sroa.5124.0..sroa_idx.i.sroa_idx, align 8, !noalias !18708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18704
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99

bb.bt:                                            ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18704
  invoke void @_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai, i32 noundef %.sroa.044.0254.i, i8 noundef %i.hh, i32 noundef %i.kw)
          to label %.noexc57 unwind label %.loopexit

.noexc57:                                         ; preds = %bb.bt
  %i.kx = load i32, ptr %i.c, align 8, !range !18701, !noalias !18704, !noundef !46 ; 2 uses
  %.not140.i = icmp eq i32 %i.kx, -1
  br i1 %.not140.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc57
  %.sroa.1162.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.1162.0.copyload64 = load i32, ptr %.sroa.1162.0..sroa_idx63, align 4, !noalias !18708
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.14.0.copyload68 = load i64, ptr %.sroa.14.0..sroa_idx67, align 8, !noalias !18708
  %.sroa.18.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.18.0.copyload72 = load i64, ptr %.sroa.18.0..sroa_idx71, align 8, !noalias !18708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18704
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99

bb.bv:                                            ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18704
  %i.ky = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 10
  %i.la = load i8, ptr %i.kz, align 2, !range !51, !noalias !18705, !noundef !46
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.lc = add i8 %i.hh, -65
  %or.cond4.i = icmp ult i8 %i.lc, 26
  br i1 %or.cond4.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ld = add i8 %i.hh, -97
  %or.cond5.i = icmp ult i8 %i.ld, 26
  %i.le = and i8 %i.hh, 95
  %spec.select143.i = select i1 %or.cond5.i, i8 %i.le, i8 %i.hh
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.lf = or disjoint i8 %i.hh, 32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.070.0.i = phi i8 [ %i.lf, %bb.by ], [ %spec.select143.i, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18704
  invoke void @_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai, i32 noundef %.sroa.044.0254.i, i8 noundef %.sroa.070.0.i, i32 noundef %i.kw)
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %bb.bz
  %i.lg = load i32, ptr %i.b, align 8, !range !18701, !noalias !18704, !noundef !46 ; 2 uses
  %.not142.i = icmp eq i32 %i.lg, -1
  br i1 %.not142.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.noexc58
  %.sroa.1162.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.1162.0.copyload66 = load i32, ptr %.sroa.1162.0..sroa_idx65, align 4, !noalias !18708
  %.sroa.14.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.14.0.copyload70 = load i64, ptr %.sroa.14.0..sroa_idx69, align 8, !noalias !18708
  %.sroa.18.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.18.0.copyload74 = load i64, ptr %.sroa.18.0..sroa_idx73, align 8, !noalias !18708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18704
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99

bb.cb:                                            ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18704
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bv, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i
  %.sroa.044.1.i = phi i32 [ %.sroa.0.0.i.i35, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i ], [ %i.kw, %bb.cb ], [ %i.kw, %bb.bv ] ; 2 uses
  %i.lh = icmp eq ptr %i.hf, %i.hb
  br i1 %i.lh, label %._crit_edge.i, label %.lr.ph255.i

_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %.noexc47, %.noexc48, %.noexc49, %.noexc50, %.noexc51
  %.sroa.059.0.copyload = phi i32 [ %i.hm, %.noexc49 ], [ %i.hn, %.noexc50 ], [ %i.ho, %.noexc51 ], [ %i.hl, %.noexc48 ], [ %i.hk, %.noexc47 ]
  %.sroa.1162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.1162.0.copyload = load i32, ptr %.sroa.1162.0..sroa_idx, align 4, !noalias !18708
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !18708
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !noalias !18708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18704
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99

_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99: ; preds = %bb.af, %bb.ae, %.lr.ph.preheader, %.lr.ph327.preheader, %.lr.ph334.preheader, %.lr.ph341.preheader, %.lr.ph, %.lr.ph894, %.lr.ph327, %.lr.ph908, %.lr.ph334, %.lr.ph923, %.lr.ph341, %.lr.ph938, %bb.bu, %bb.ca, %bb.bs, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit
  %.sroa.059.0108 = phi i32 [ %.sroa.059.0.copyload, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ 2, %.lr.ph938 ], [ %i.kv, %bb.bs ], [ %i.kx, %bb.bu ], [ %i.lg, %bb.ca ], [ 2, %.lr.ph908 ], [ 2, %.lr.ph923 ], [ 2, %.lr.ph894 ], [ 1, %.lr.ph341 ], [ 1, %.lr.ph334 ], [ 1, %.lr.ph327 ], [ 1, %.lr.ph ], [ 1, %.lr.ph327.preheader ], [ 1, %.lr.ph334.preheader ], [ 1, %bb.ae ], [ 1, %.lr.ph341.preheader ], [ 1, %.lr.ph.preheader ], [ 2, %bb.af ]
  %.sroa.1162.0107 = phi i32 [ %.sroa.1162.0.copyload, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.dr, %.lr.ph938 ], [ %i.kw, %bb.bs ], [ %.sroa.1162.0.copyload64, %bb.bu ], [ %.sroa.1162.0.copyload66, %bb.ca ], [ %i.dj, %.lr.ph908 ], [ %i.dn, %.lr.ph923 ], [ %i.df, %.lr.ph894 ], [ undef, %.lr.ph341 ], [ undef, %.lr.ph334 ], [ undef, %.lr.ph327 ], [ undef, %.lr.ph ], [ undef, %.lr.ph327.preheader ], [ undef, %.lr.ph334.preheader ], [ undef, %bb.ae ], [ undef, %.lr.ph341.preheader ], [ undef, %.lr.ph.preheader ], [ %i.db, %bb.af ]
  %.sroa.14.0106 = phi i64 [ %.sroa.14.0.copyload, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %.val1.i.jt18446744073709551614.i, %.lr.ph938 ], [ %.sroa.14.8.copyload, %bb.bs ], [ %.sroa.14.0.copyload68, %bb.bu ], [ %.sroa.14.0.copyload70, %bb.ca ], [ %.val1.i.jt2.i, %.lr.ph908 ], [ %.val1.i.jt18446744073709551615.i, %.lr.ph923 ], [ %.val1.i.jt0.i, %.lr.ph894 ], [ 2147483646, %.lr.ph341 ], [ 2147483646, %.lr.ph334 ], [ 2147483646, %.lr.ph327 ], [ 2147483646, %.lr.ph ], [ 2147483646, %.lr.ph327.preheader ], [ 2147483646, %.lr.ph334.preheader ], [ 2147483646, %bb.ae ], [ 2147483646, %.lr.ph341.preheader ], [ 2147483646, %.lr.ph.preheader ], [ %.val1.i.i, %bb.af ]
  %.sroa.18.0105 = phi i64 [ %.sroa.18.0.copyload, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ 2147483647, %.lr.ph341 ], [ %.sroa.18.8.copyload, %bb.bs ], [ %.sroa.18.0.copyload72, %bb.bu ], [ %.sroa.18.0.copyload74, %bb.ca ], [ 2147483647, %.lr.ph327 ], [ 2147483647, %.lr.ph334 ], [ 2147483647, %.lr.ph ], [ 2147483647, %.lr.ph938 ], [ 2147483647, %.lr.ph923 ], [ 2147483647, %.lr.ph908 ], [ 2147483647, %.lr.ph894 ], [ 2147483647, %.lr.ph341.preheader ], [ 2147483647, %.lr.ph334.preheader ], [ 2147483647, %.lr.ph327.preheader ], [ 2147483647, %.lr.ph.preheader ], [ 2147483647, %bb.ae ], [ 2147483647, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18704
  %i.li = inttoptr i64 %.sroa.14.0106 to ptr
  %1 = bitcast i64 %.sroa.18.0105 to <8 x i8>
  %2 = shufflevector <8 x i8> %1, <8 x i8> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.18.18.extract.shift = lshr i64 %.sroa.18.0105, 16
  %.sroa.18.18.extract.trunc = trunc nuw i64 %.sroa.18.18.extract.shift to i48
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i._crit_edge: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.lj = load i64, ptr %i.ai, align 16, !range !52, !alias.scope !18693, !noalias !18698, !noundef !46 ; 2 uses
  %i.lk = load i64, ptr %i.ck, align 16, !alias.scope !18693, !noalias !18698, !noundef !46 ; 4 uses
  %i.ll = icmp ugt i64 %i.lj, %i.lk
  br i1 %i.ll, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !18717)
  call void @llvm.experimental.noalias.scope.decl(metadata !18718), !noalias !18696
  %.val10.i.i26 = load ptr, ptr %i.cl, align 8, !alias.scope !18719, !noalias !18696, !nonnull !46, !noundef !46 ; 2 uses
  %i.lm = mul nuw i64 %i.lj, 20                   ; 2 uses
  %i.ln = icmp eq i64 %i.lk, 0
  br i1 %i.ln, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i30, label %bb.ce

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i30: ; preds = %bb.cd
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i26, i64 noundef %i.lm, i64 noundef range(i64 1, 9) 4) #62, !noalias !18720
  br label %.thread

.thread:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i30, %bb.ce
  %storemerge.i.i27 = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i30 ], [ %i.lp, %bb.ce ]
  store ptr %storemerge.i.i27, ptr %i.cl, align 8, !alias.scope !18719, !noalias !18696
  store i64 %i.lk, ptr %i.ai, align 16, !alias.scope !18719, !noalias !18696
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.lo = mul nuw i64 %i.lk, 20                   ; 2 uses
  %i.lp = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i26, i64 noundef %i.lm, i64 noundef range(i64 1, 9) 4, i64 noundef range(i64 1, 0) %i.lo) #62, !noalias !18720 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %.invoke.i.i.i.i, label %.thread

bb.cf:                                            ; preds = %.thread, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18700
  invoke void @_RNvMs4_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB5_12ByteClassSet12byte_classes(ptr noalias noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.cn, ptr noundef nonnull align 1 dereferenceable(256) %i.k, i64 256, i1 false), !noalias !18698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler24set_anchored_start_state(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.ch:                                            ; preds = %bb.cg
  %i.lr = load i32, ptr %i.j, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not107.i.i.i.i = icmp eq i32 %i.lr, -1
  br i1 %.not107.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.29.8..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.29.8.copyload32.i.i.i = load i32, ptr %.sroa.29.8..sroa_idx31.i.i.i, align 4, !noalias !18702
  %.sroa.33.8..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload76.i = load ptr, ptr %.sroa.33.8..sroa_idx40.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx40.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ls = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx40.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx40.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload81 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx40.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler31add_unanchored_start_state_loop(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler7densify(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.cl:                                            ; preds = %bb.ck
  %i.lt = load i32, ptr %i.i, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not108.i.i.i.i = icmp eq i32 %i.lt, -1
  br i1 %.not108.i.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.29.8..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.29.8.copyload34.i.i.i = load i32, ptr %.sroa.29.8..sroa_idx33.i.i.i, align 4, !noalias !18702
  %.sroa.33.8..sroa_idx41.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload77.i = load ptr, ptr %.sroa.33.8..sroa_idx41.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx41.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.lu = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx41.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx41.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload82 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx41.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler24fill_failure_transitions(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.co:                                            ; preds = %bb.cn
  %i.lv = load i32, ptr %i.h, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not109.i.i.i.i = icmp eq i32 %i.lv, -1
  br i1 %.not109.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.sroa.29.8..sroa_idx35.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.29.8.copyload36.i.i.i = load i32, ptr %.sroa.29.8..sroa_idx35.i.i.i, align 4, !noalias !18702
  %.sroa.33.8..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload78.i = load ptr, ptr %.sroa.33.8..sroa_idx42.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx42.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.lw = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx42.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx42.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload83 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx42.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler35close_start_state_loop_for_leftmost(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler7shuffle(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18700
  invoke void @_RNvMs1_NtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilterNtB5_7Builder5build(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(960) %i.r)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.ct:                                            ; preds = %bb.cs
  %i.lx = getelementptr inbounds nuw i8, ptr %i.r, i64 632 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18721)
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !18722, !noalias !18698, !noundef !46 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ma = atomicrmw sub ptr %i.ly, i64 1 release, align 8, !noalias !18723
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.cv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i unwind label %bb.cw, !noalias !18696

bb.cw:                                            ; preds = %bb.cv
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !18698
  br label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !18698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18700
  %i.md = load ptr, ptr %i.lx, align 8, !alias.scope !18693, !noalias !18698, !noundef !46
  %.not110.i.i.i.i = icmp eq ptr %i.md, null
  %i.me = getelementptr inbounds nuw i8, ptr %i.r, i64 932
  %.val.i.i.i = load i32, ptr %i.me, align 4, !noalias !18690
  %.val65.i.i.i = load i32, ptr %i.bz, align 4, !noalias !18690
  %.sroa.036.0.i.i.i.i = select i1 %.not110.i.i.i.i, i32 %.val.i.i.i, i32 %.val65.i.i.i
  store i32 %.sroa.036.0.i.i.i.i, ptr %i.bt, align 16, !alias.scope !18693, !noalias !18698
  %i.mf = load i64, ptr %i.aj, align 8, !range !52, !alias.scope !18693, !noalias !18698, !noundef !46 ; 2 uses
  %i.mg = load i64, ptr %i.ak, align 8, !alias.scope !18693, !noalias !18698, !noundef !46 ; 4 uses
  %i.mh = icmp ugt i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18724)
  call void @llvm.experimental.noalias.scope.decl(metadata !18725), !noalias !18696
  %.val10.i.i18 = load ptr, ptr %i.ao, align 16, !alias.scope !18726, !noalias !18696, !nonnull !46, !noundef !46 ; 2 uses
  %i.mi = mul nuw i64 %i.mf, 9                    ; 2 uses
  %i.mj = icmp eq i64 %i.mg, 0
  br i1 %i.mj, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i22, label %bb.cy

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i22: ; preds = %bb.cx
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i18, i64 noundef %i.mi, i64 noundef range(i64 1, 9) 1) #62, !noalias !18727
  br label %.thread112

.thread112:                                       ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i22, %bb.cy
  %storemerge.i.i19 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i22 ], [ %i.ml, %bb.cy ]
  store ptr %storemerge.i.i19, ptr %i.ao, align 16, !alias.scope !18726, !noalias !18696
  store i64 %i.mg, ptr %i.aj, align 8, !alias.scope !18726, !noalias !18696
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.mk = mul nuw i64 %i.mg, 9                    ; 2 uses
  %i.ml = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i18, i64 noundef %i.mi, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 1, 0) %i.mk) #62, !noalias !18727 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %.invoke.i.i.i.i, label %.thread112

bb.cz:                                            ; preds = %.thread112, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.mn = load i64, ptr %i.bc, align 16, !range !52, !alias.scope !18693, !noalias !18698, !noundef !46 ; 2 uses
  %i.mo = load i64, ptr %i.bd, align 16, !alias.scope !18693, !noalias !18698, !noundef !46 ; 4 uses
  %i.mp = icmp ugt i64 %i.mn, %i.mo
  br i1 %i.mp, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !18728)
  call void @llvm.experimental.noalias.scope.decl(metadata !18729), !noalias !18696
  %.val10.i.i10 = load ptr, ptr %i.bh, align 8, !alias.scope !18730, !noalias !18696, !nonnull !46, !noundef !46 ; 2 uses
  %i.mq = shl nuw i64 %i.mn, 2                    ; 2 uses
  %i.mr = icmp eq i64 %i.mo, 0
  br i1 %i.mr, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i14, label %bb.db

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i14: ; preds = %bb.da
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i10, i64 noundef %i.mq, i64 noundef range(i64 1, 9) 4) #62, !noalias !18731
  br label %.thread116

.thread116:                                       ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i14, %bb.db
  %storemerge.i.i11 = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i14 ], [ %i.mt, %bb.db ]
  store ptr %storemerge.i.i11, ptr %i.bh, align 8, !alias.scope !18730, !noalias !18696
  store i64 %i.mo, ptr %i.bc, align 16, !alias.scope !18730, !noalias !18696
  br label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ms = shl nuw i64 %i.mo, 2                    ; 2 uses
  %i.mt = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i10, i64 noundef %i.mq, i64 noundef range(i64 1, 9) 4, i64 noundef range(i64 1, 0) %i.ms) #62, !noalias !18731 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %.invoke.i.i.i.i, label %.thread116

bb.dc:                                            ; preds = %.thread116, %bb.cz
  %i.mv = load i64, ptr %i.as, align 8, !range !52, !alias.scope !18693, !noalias !18698, !noundef !46 ; 2 uses
  %i.mw = load i64, ptr %i.at, align 8, !alias.scope !18693, !noalias !18698, !noundef !46 ; 4 uses
  %i.mx = icmp ugt i64 %i.mv, %i.mw
  br i1 %i.mx, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !18732)
  call void @llvm.experimental.noalias.scope.decl(metadata !18733), !noalias !18696
  %.val10.i.i2 = load ptr, ptr %i.ax, align 16, !alias.scope !18734, !noalias !18696, !nonnull !46, !noundef !46 ; 2 uses
  %i.my = shl nuw i64 %i.mv, 3                    ; 2 uses
  %i.mz = icmp eq i64 %i.mw, 0
  br i1 %i.mz, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i6, label %bb.de

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i6: ; preds = %bb.dd
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i2, i64 noundef %i.my, i64 noundef range(i64 1, 9) 4) #62, !noalias !18735
  br label %.thread120

.thread120:                                       ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i6, %bb.de
  %storemerge.i.i3 = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i6 ], [ %i.nb, %bb.de ]
  store ptr %storemerge.i.i3, ptr %i.ax, align 16, !alias.scope !18734, !noalias !18696
  store i64 %i.mw, ptr %i.as, align 8, !alias.scope !18734, !noalias !18696
  br label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.na = shl nuw i64 %i.mw, 3                    ; 2 uses
  %i.nb = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i2, i64 noundef %i.my, i64 noundef range(i64 1, 9) 4, i64 noundef range(i64 1, 0) %i.na) #62, !noalias !18735 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %.invoke.i.i.i.i, label %.thread120

bb.df:                                            ; preds = %.thread120, %bb.dc
  %i.nd = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18693, !noalias !18698, !noundef !46 ; 2 uses
  %i.ne = load i64, ptr %i.cg, align 16, !alias.scope !18693, !noalias !18698, !noundef !46 ; 4 uses
  %i.nf = icmp ugt i64 %i.nd, %i.ne
  br i1 %i.nf, label %bb.dg, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !18736)
  call void @llvm.experimental.noalias.scope.decl(metadata !18737), !noalias !18696
  %.val10.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !18738, !noalias !18696, !nonnull !46, !noundef !46 ; 2 uses
  %i.ng = shl nuw i64 %i.nd, 2                    ; 2 uses
  %i.nh = icmp eq i64 %i.ne, 0
  br i1 %i.nh, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, label %bb.dh

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.dg
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i, i64 noundef %i.ng, i64 noundef range(i64 1, 9) 4) #62, !noalias !18739
  br label %.thread124

.thread124:                                       ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %bb.dh
  %storemerge.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i ], [ %i.nj, %bb.dh ]
  store ptr %storemerge.i.i, ptr %i.ci, align 8, !alias.scope !18738, !noalias !18696
  store i64 %i.ne, ptr %i.ch, align 16, !alias.scope !18738, !noalias !18696
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.ni = shl nuw i64 %i.ne, 2                    ; 2 uses
  %i.nj = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i, i64 noundef %i.ng, i64 noundef range(i64 1, 9) 4, i64 noundef range(i64 1, 0) %i.ni) #62, !noalias !18739 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.invoke.i.i.i.i, label %.thread124

.invoke.i.i.i.i:                                  ; preds = %bb.dh, %bb.de, %bb.db, %bb.cy, %bb.ce
  %.pn128 = phi i64 [ %i.ms, %bb.db ], [ %i.na, %bb.de ], [ %i.lo, %bb.ce ], [ %i.mk, %bb.cy ], [ %i.ni, %bb.dh ]
  %i.nl = phi i64 [ 4, %bb.db ], [ 4, %bb.de ], [ 4, %bb.ce ], [ 1, %bb.cy ], [ 4, %bb.dh ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.nl, i64 %.pn128) #61
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i: ; preds = %bb.cp, %bb.cm, %bb.ci, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k
  %.sroa.33.i.i.sroa.21.i.sroa.0.0 = phi i48 [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload83, %bb.cp ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload82, %bb.cm ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload81, %bb.ci ], [ %.sroa.18.18.extract.trunc, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99 ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload80, %bb.z ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload79, %bb.w ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload78, %bb.t ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload77, %bb.q ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload76, %bb.n ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload, %bb.k ]
  %.sroa.33.i.i.sroa.0.0.i = phi ptr [ %.sroa.33.i.i.sroa.0.0.copyload78.i, %bb.cp ], [ %.sroa.33.i.i.sroa.0.0.copyload77.i, %bb.cm ], [ %.sroa.33.i.i.sroa.0.0.copyload76.i, %bb.ci ], [ %i.li, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99 ], [ %.sroa.33.i.i.sroa.0.0.copyload74.i, %bb.z ], [ %.sroa.33.i.i.sroa.0.0.copyload73.i, %bb.w ], [ %.sroa.33.i.i.sroa.0.0.copyload72.i, %bb.t ], [ %.sroa.33.i.i.sroa.0.0.copyload71.i, %bb.q ], [ %.sroa.33.i.i.sroa.0.0.copyload70.i, %bb.n ], [ %.sroa.33.i.i.sroa.0.0.copyload.i, %bb.k ]
  %.sroa.29.0.i.i.i = phi i32 [ %.sroa.29.8.copyload36.i.i.i, %bb.cp ], [ %.sroa.29.8.copyload34.i.i.i, %bb.cm ], [ %.sroa.29.8.copyload32.i.i.i, %bb.ci ], [ %.sroa.1162.0107, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99 ], [ %.sroa.29.8.copyload28.i.i.i, %bb.z ], [ %.sroa.29.8.copyload26.i.i.i, %bb.w ], [ %i.bx, %bb.t ], [ %i.br, %bb.q ], [ %.sroa.451.0.copyload.i.i.i.i, %bb.n ], [ %.sroa.442.0.copyload.i.i.i.i, %bb.k ]
  %.sroa.17.0.i.i.i = phi i32 [ %i.lv, %bb.cp ], [ %i.lt, %bb.cm ], [ %i.lr, %bb.ci ], [ %.sroa.059.0108, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99 ], [ %i.cc, %bb.z ], [ %i.ca, %bb.w ], [ %i.bv, %bb.t ], [ %i.bp, %bb.q ], [ %i.bn, %bb.n ], [ %i.bl, %bb.k ]
  %i.nm = phi <2 x i8> [ %i.lw, %bb.cp ], [ %i.lu, %bb.cm ], [ %i.ls, %bb.ci ], [ %2, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99 ], [ %i.cd, %bb.z ], [ %i.cb, %bb.w ], [ %i.by, %bb.t ], [ %i.bs, %bb.q ], [ %i.bo, %bb.n ], [ %i.bm, %bb.k ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter7BuilderECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r), !noalias !18696
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguous3NFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai), !noalias !18696
  br label %bb.dj

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.cw
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.mc, %bb.cw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit139, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit148, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit167, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter7BuilderECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r), !noalias !18696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguous3NFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai)
          to label %common.resume.i.i unwind label %bb.di, !noalias !18696

bb.di:                                            ; preds = %.loopexit.split-lp
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !18696
  unreachable

common.resume.i.i:                                ; preds = %.body.thread.i.i, %.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.loopexit.split-lp ], [ %eh.lpad-body110.i.i, %.body.thread.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i: ; preds = %.thread124, %bb.df
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ai, align 16, !alias.scope !18740, !noalias !18741 ; 2 uses
  %.sroa.17.0.copyload.i.i.i = load i32, ptr %i.cl, align 8, !alias.scope !18740, !noalias !18741 ; 2 uses
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 524
  %.sroa.29.0.copyload.i.i.i = load i32, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4, !alias.scope !18740, !noalias !18741 ; 2 uses
  %.sroa.33.i.i.sroa.0.0.copyload79.i = load ptr, ptr %i.ck, align 16, !alias.scope !18740, !noalias !18741 ; 2 uses
  %i.no = load <2 x i8>, ptr %i.aj, align 8, !alias.scope !18740, !noalias !18741 ; 3 uses
  %.sroa.33.i.i.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 538
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload84 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa_idx.i, align 2, !alias.scope !18740, !noalias !18741 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.37.i.i.i, ptr noundef nonnull align 16 dereferenceable(408) %i.ao, i64 408, i1 false), !alias.scope !18740, !noalias !18741
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter7BuilderECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r), !noalias !18696
  %i.np = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.np, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, %bb.b
  %.sroa.15.i.sroa.12.i.sroa.0.0 = phi i48 [ %.sroa.04.i.sroa.9.i.sroa.8.i.sroa.0.0.copyload, %bb.b ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload84, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.33.i.i.sroa.21.i.sroa.0.0, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ]
  %.sroa.15.i.sroa.0.0.i = phi ptr [ %.sroa.04.i.sroa.9.i.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.33.i.i.sroa.0.0.copyload79.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.33.i.i.sroa.0.0.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ]
  %.sroa.13.0.ph.i.i = phi i32 [ %.sroa.04.i.sroa.8.0.copyload98.i.i, %bb.b ], [ %.sroa.29.0.copyload.i.i.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.29.0.i.i.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ]
  %.sroa.871.0.ph.i.i = phi i32 [ %.sroa.04.i.sroa.0.0.copyload94.i.i, %bb.b ], [ %.sroa.17.0.copyload.i.i.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.17.0.i.i.i, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ]
  %i.nq = phi <2 x i8> [ %i.af, %bb.b ], [ %i.no, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.nm, %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18689
  %.sroa.8.0.insert.ext.i = zext i32 %.sroa.871.0.ph.i.i to i64
  %.sroa.8.4.insert.ext.i = zext i32 %.sroa.13.0.ph.i.i to i64
  %.sroa.8.4.insert.shift.i = shl nuw i64 %.sroa.8.4.insert.ext.i, 32
  %.sroa.8.4.insert.insert.i = or disjoint i64 %.sroa.8.4.insert.shift.i, %.sroa.8.0.insert.ext.i
  %i.nr = inttoptr i64 %.sroa.8.4.insert.insert.i to ptr
  %i.ns = extractelement <2 x i8> %i.nq, i64 0
  %i.nt = extractelement <2 x i8> %i.nq, i64 1
  br label %bb.ds

.body.thread115.i.i:                              ; preds = %bb.dk
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.dk:                                            ; preds = %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.37.i.i.i, i64 408, i1 false), !noalias !18689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18689
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.sroa.33.i.i.sroa.0.0.copyload79.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !18689
  %.sroa.6.sroa.8.i.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.nu = extractelement <2 x i8> %i.no, i64 0
  store i8 %i.nu, ptr %.sroa.6.sroa.8.i.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !18689
  %.sroa.6.sroa.8.i.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  %i.nv = extractelement <2 x i8> %i.no, i64 1
  store i8 %i.nv, ptr %.sroa.6.sroa.8.i.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 1, !noalias !18689
  %.sroa.6.sroa.8.i.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 26
  store i48 %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload84, ptr %.sroa.6.sroa.8.i.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 2, !noalias !18689
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !noalias !18689
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.sroa.17.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i30.i, align 8, !noalias !18689
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %.sroa.29.0.copyload.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !18689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18689
  invoke void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous(ptr noalias noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %i.v)
          to label %bb.dm unwind label %.body.thread115.i.i, !noalias !18742

bb.dl:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18689
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguous3NFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.v), !noalias !18742
  %i.nw = extractelement <2 x ptr> %i.ob, i64 0
  %i.nx = extractelement <2 x ptr> %i.ob, i64 1
  br label %bb.ds

bb.dm:                                            ; preds = %bb.dk
  %i.ny = load i64, ptr %i.u, align 8, !range !58, !noalias !18689, !noundef !46 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, -1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ob = load <2 x ptr>, ptr %i.oa, align 8, !noalias !18689 ; 3 uses
  %.sroa.620.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.620.i.sroa.8.0.copyload61.i = load i8, ptr %.sroa.620.i.sroa.8.0..sroa_idx.i, align 8, !noalias !18689 ; 2 uses
  %.sroa.620.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 25
  %.sroa.620.i.sroa.9.0.copyload63.i = load i8, ptr %.sroa.620.i.sroa.9.0..sroa_idx.i, align 1, !noalias !18689 ; 2 uses
  %.sroa.620.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 26
  %.sroa.620.i.sroa.10.i.sroa.0.0.copyload = load i48, ptr %.sroa.620.i.sroa.10.0..sroa_idx.i, align 2, !noalias !18689 ; 2 uses
  br i1 %i.nz, label %bb.dl, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.326.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.326.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.552.0..sroa_idx.i.i, i64 392, i1 false), !noalias !18689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18689
  %.sroa.225.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store <2 x ptr> %i.ob, ptr %.sroa.225.0..sroa_idx.i.i, align 8, !noalias !18689
  %.sroa.620.i.sroa.8.0..sroa.225.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i8 %.sroa.620.i.sroa.8.0.copyload61.i, ptr %.sroa.620.i.sroa.8.0..sroa.225.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !18689
  %.sroa.620.i.sroa.9.0..sroa.225.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 41
  store i8 %.sroa.620.i.sroa.9.0.copyload63.i, ptr %.sroa.620.i.sroa.9.0..sroa.225.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !18689
  %.sroa.620.i.sroa.10.0..sroa.225.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 42
  store i48 %.sroa.620.i.sroa.10.i.sroa.0.0.copyload, ptr %.sroa.620.i.sroa.10.0..sroa.225.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !18689
  store i64 1, ptr %i.t, align 8, !noalias !18689
  %i.oc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.oc, align 8, !noalias !18689
  %i.od = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %i.ny, ptr %i.od, align 8, !noalias !18689
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !18743
  %i.oe = call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !18743 ; 3 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.do, label %_RNCNvNtCskLngH8kgpZI_15ruff_python_ast3str14PREFIX_MATCHER0B5_.exit, !prof !104

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 440) #61
          to label %.noexc67.i.i unwind label %bb.dp, !noalias !18742

.noexc67.i.i:                                     ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.do
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.od)
          to label %.body.thread.i.i unwind label %bb.dq, !noalias !18742

bb.dq:                                            ; preds = %bb.dp
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !18742
  unreachable

.body.thread.i.i:                                 ; preds = %bb.dp, %.body.thread115.i.i
  %eh.lpad-body110.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread115.i.i ], [ %i.og, %bb.dp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguous3NFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.v) #59
          to label %common.resume.i.i unwind label %bb.dr, !noalias !18742

bb.dr:                                            ; preds = %.body.thread.i.i
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !18742
  unreachable

bb.ds:                                            ; preds = %bb.dl, %bb.dj
  %.sroa.23.i.sroa.0.0 = phi i48 [ %.sroa.15.i.sroa.12.i.sroa.0.0, %bb.dj ], [ %.sroa.620.i.sroa.10.i.sroa.0.0.copyload, %bb.dl ]
  %.sroa.8.1.ph.i = phi ptr [ %i.nr, %bb.dj ], [ %i.nw, %bb.dl ]
  %.sroa.21.1.ph.i = phi i8 [ %i.nt, %bb.dj ], [ %.sroa.620.i.sroa.9.0.copyload63.i, %bb.dl ]
  %.sroa.19.1.ph.i = phi i8 [ %i.ns, %bb.dj ], [ %.sroa.620.i.sroa.8.0.copyload61.i, %bb.dl ]
  %.sroa.16.1.ph.i = phi ptr [ %.sroa.15.i.sroa.0.0.i, %bb.dj ], [ %i.nx, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18744
  store ptr %.sroa.8.1.ph.i, ptr %i.w, align 8, !noalias !18745
  %.sroa.16.8..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.16.1.ph.i, ptr %.sroa.16.8..sroa_idx4.i, align 8, !noalias !18745
  %.sroa.19.8..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i8 %.sroa.19.1.ph.i, ptr %.sroa.19.8..sroa_idx8.i, align 8, !noalias !18745
  %.sroa.21.8..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.w, i64 17
  store i8 %.sroa.21.1.ph.i, ptr %.sroa.21.8..sroa_idx12.i, align 1, !noalias !18745
  %.sroa.23.8..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  store i48 %.sroa.23.i.sroa.0.0, ptr %.sroa.23.8..sroa_idx16.i, align 2, !noalias !18745
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 43, ptr noundef nonnull %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #61, !noalias !18744
  unreachable

_RNCNvNtCskLngH8kgpZI_15ruff_python_ast3str14PREFIX_MATCHER0B5_.exit: ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.oe, ptr noundef nonnull align 8 dereferenceable(440) %i.t, i64 440, i1 false), !noalias !18742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18689
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguous3NFAECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.v), !noalias !18742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18689
  call void @llvm.experimental.noalias.scope.decl(metadata !18746)
  call void @llvm.experimental.noalias.scope.decl(metadata !18747)
  store ptr %i.oe, ptr %0, align 8, !alias.scope !18744
  %.sroa.16.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @33, ptr %.sroa.16.8..sroa_idx.i, align 8, !alias.scope !18744
  %.sroa.19.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.19.8..sroa_idx.i, align 8, !alias.scope !18744
  %.sroa.21.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 2, ptr %.sroa.21.8..sroa_idx.i, align 1, !alias.scope !18744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !18688
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCskLngH8kgpZI_15ruff_python_ast6script6FINDER0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 32 captures(none) dereferenceable(288) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [1 x i8], align 1                 ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_0
