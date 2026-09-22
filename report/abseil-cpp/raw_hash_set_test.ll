Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE:bb.a
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.o, !noalias !6837 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc39.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !6837
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !6837
  br label %bb.p

bb.o:                                             ; preds = %.noexc39.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !6837
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !6837
  br label %.body.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !279, !noalias !6837
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !283, !noalias !6837
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !6837, !inline_history !17

_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.p
  %i.bw = zext i1 %i.bv to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bw, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !6837
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.r:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i
  %i.bx = ptrtoint ptr %.sroa.13.199.i to i64
  %i.by = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 8 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !6837

.noexc43.i:                                       ; preds = %bb.s
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cb = add i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 9223372036854775807)
  %i.ce = select i1 %i.cc, i64 9223372036854775807, i64 %i.cd ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !6837 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz ; 2 uses
  store i8 %i.bw, ptr %i.cg, align 1, !tbaa !161, !noalias !6837
  %i.ch = icmp sgt i64 %i.bz, 0
  br i1 %i.ch, label %bb.t, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.t:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %.sroa.053.197.i, i64 %i.bz, i1 false), !noalias !6837
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.t, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bz) #44, !noalias !6837
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.q
  %.sroa.053.3.i = phi ptr [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.q ] ; 2 uses
  %.pn65.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.q ]
  %.sroa.13.3.i = phi ptr [ %i.ci, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.q ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.cj = add i64 %.019100.i, 1                   ; 2 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !349, !noalias !6837 ; 2 uses
  %i.cl = load ptr, ptr %i.v, align 8, !tbaa !348, !noalias !6837 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %.not27.i = icmp eq i64 %i.cj, %i.cp
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6831

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.p, %bb.n, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cq = phi ptr [ %i.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cs = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !6837
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !384, !alias.scope !6837
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.db = mul i64 %i.cy, %.024.lcssa.i            ; 5 uses
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.j, !noalias !6837

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false), !alias.scope !6837
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #47
          to label %.noexc46.i unwind label %bb.j, !noalias !6837 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !385, !alias.scope !6837
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !386, !alias.scope !6837
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dd, i8 0, i64 %i.db, i1 false), !noalias !6837
  br label %bb.v

bb.v:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dg = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.di, align 8, !tbaa !387, !alias.scope !6837
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.v
  %.pre151.i = load ptr, ptr %i.cu, align 8, !tbaa !349, !noalias !6837 ; 6 uses
  %.pre152.i = load ptr, ptr %i.ct, align 8, !tbaa !348, !noalias !6837 ; 3 uses
  %i.dj = ptrtoint ptr %.pre151.i to i64
  %i.dk = ptrtoint ptr %.pre152.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  %min.iters.check167 = icmp ult i64 %i.dm, 32
  %i.dn = and i64 %i.dm, 28
  %n.vec = and i64 %i.dm, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  %n.vec169 = and i64 %i.dm, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dm, %n.vec169
  %xtraiter = and i64 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.do = phi ptr [ %i.et, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.eu, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.do, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.dp = mul i64 %i.cy, %.018123.i
  %i.dq = add i64 %i.dp, %i.dh
  %i.dr = mul i64 %.018123.i, %i.cy
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 7 uses
  %i.dt = sub i64 %.sroa.051.0122.i166, %i.dq
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !6837
  %wide.load168 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !161, !noalias !6837
  %i.dw = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dx = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = zext <16 x i1> %i.dx to <16 x i8>
  %i.ea = getelementptr i8, ptr %i.ds, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !6837
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !161, !noalias !6837
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !6832

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ed = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !6837
  %i.ee = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ef = zext <4 x i1> %i.ee to <4 x i8>
  %i.eg = getelementptr i8, ptr %i.ds, i64 %index170
  store <4 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !161, !noalias !6837
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6833

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.en, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.ei, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ej = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !6837
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.ds, i64 %.0117.i.prol
  store i8 %i.el, ptr %i.em, align 1, !tbaa !161, !noalias !6837
  %i.en = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !6834

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.en, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %i.eo = sub nsw i64 %.0117.i.ph, %i.dm
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !6837
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_12StringPolicyEJNS5_10StringHashENS5_8StringEqESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge124.i
  %i.eq = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.er = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.es) #44, !noalias !6837
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_12StringPolicyEJNS5_10StringHashENS5_8StringEqESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.et = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.du, %middle.block ], [ %i.ed, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fm, %vec.epilog.scalar.ph ]
  %i.eu = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.eu, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !6835

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fs, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fm, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ew = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !6837
  %i.ex = icmp ne i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = getelementptr i8, ptr %i.ds, i64 %.0117.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !161, !noalias !6837
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !161, !noalias !6837
  %i.fc = icmp ne i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i8
  %i.fe = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !161, !noalias !6837
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fh = load i8, ptr %i.fa, align 1, !tbaa !161, !noalias !6837
  %i.fi = icmp ne i8 %i.fh, 0
  %i.fj = zext i1 %i.fi to i8
  %i.fk = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 2
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !161, !noalias !6837
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !161, !noalias !6837
  %i.fo = icmp ne i8 %i.fn, 0
  %i.fp = zext i1 %i.fo to i8
  %i.fq = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 3
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !161, !noalias !6837
  %i.fs = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fs, %i.dm
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !6836

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.j
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.o ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.j ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.o ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.j ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.an, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !6837
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_12StringPolicyEJNS5_10StringHashENS5_8StringEqESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.w, %._crit_edge124.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_12StringPolicyEJNS5_10StringHashENS5_8StringEqESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fw = phi i1 [ false, %bb.x ], [ %i.fv, %bb.y ]
  %i.fx = load ptr, ptr %i.da, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !386
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gd = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.gf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !161
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gk, %i.ge
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !163
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #44
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18BadTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE:bb.a
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.o, !noalias !7350 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc39.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !7350
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !7350
  br label %bb.p

bb.o:                                             ; preds = %.noexc39.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !7350
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !7350
  br label %.body.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !260, !noalias !7350
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !262, !noalias !7350
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !7350, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.p
  %i.bw = zext i1 %i.bv to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bw, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !7350
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.r:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bx = ptrtoint ptr %.sroa.13.199.i to i64
  %i.by = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 8 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !7350

.noexc43.i:                                       ; preds = %bb.s
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cb = add i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 9223372036854775807)
  %i.ce = select i1 %i.cc, i64 9223372036854775807, i64 %i.cd ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !7350 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz ; 2 uses
  store i8 %i.bw, ptr %i.cg, align 1, !tbaa !161, !noalias !7350
  %i.ch = icmp sgt i64 %i.bz, 0
  br i1 %i.ch, label %bb.t, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.t:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %.sroa.053.197.i, i64 %i.bz, i1 false), !noalias !7350
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.t, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bz) #44, !noalias !7350
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.q
  %.sroa.053.3.i = phi ptr [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.q ] ; 2 uses
  %.pn65.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.q ]
  %.sroa.13.3.i = phi ptr [ %i.ci, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.q ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.cj = add i64 %.019100.i, 1                   ; 2 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !420, !noalias !7350 ; 2 uses
  %i.cl = load ptr, ptr %i.v, align 8, !tbaa !419, !noalias !7350 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %.not27.i = icmp eq i64 %i.cj, %i.cp
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7344

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.p, %bb.n, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cq = phi ptr [ %i.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cs = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11BadFastHashESt8equal_toIlESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !7350
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !384, !alias.scope !7350
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.db = mul i64 %i.cy, %.024.lcssa.i            ; 5 uses
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.j, !noalias !7350

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false), !alias.scope !7350
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #47
          to label %.noexc46.i unwind label %bb.j, !noalias !7350 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !385, !alias.scope !7350
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !386, !alias.scope !7350
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dd, i8 0, i64 %i.db, i1 false), !noalias !7350
  br label %bb.v

bb.v:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dg = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.di, align 8, !tbaa !387, !alias.scope !7350
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.v
  %.pre151.i = load ptr, ptr %i.cu, align 8, !tbaa !420, !noalias !7350 ; 6 uses
  %.pre152.i = load ptr, ptr %i.ct, align 8, !tbaa !419, !noalias !7350 ; 3 uses
  %i.dj = ptrtoint ptr %.pre151.i to i64
  %i.dk = ptrtoint ptr %.pre152.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  %min.iters.check167 = icmp ult i64 %i.dm, 32
  %i.dn = and i64 %i.dm, 28
  %n.vec = and i64 %i.dm, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  %n.vec169 = and i64 %i.dm, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dm, %n.vec169
  %xtraiter = and i64 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.do = phi ptr [ %i.et, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.eu, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.do, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.dp = mul i64 %i.cy, %.018123.i
  %i.dq = add i64 %i.dp, %i.dh
  %i.dr = mul i64 %.018123.i, %i.cy
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 7 uses
  %i.dt = sub i64 %.sroa.051.0122.i166, %i.dq
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !7350
  %wide.load168 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !161, !noalias !7350
  %i.dw = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dx = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = zext <16 x i1> %i.dx to <16 x i8>
  %i.ea = getelementptr i8, ptr %i.ds, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !7350
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !161, !noalias !7350
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !7345

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ed = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !7350
  %i.ee = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ef = zext <4 x i1> %i.ee to <4 x i8>
  %i.eg = getelementptr i8, ptr %i.ds, i64 %index170
  store <4 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !161, !noalias !7350
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.en, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.ei, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ej = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !7350
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.ds, i64 %.0117.i.prol
  store i8 %i.el, ptr %i.em, align 1, !tbaa !161, !noalias !7350
  %i.en = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !7347

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.en, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %i.eo = sub nsw i64 %.0117.i.ph, %i.dm
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !7350
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18BadTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJNS5_11BadFastHashESt8equal_toIlESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge124.i
  %i.eq = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.er = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.es) #44, !noalias !7350
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18BadTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJNS5_11BadFastHashESt8equal_toIlESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.et = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.du, %middle.block ], [ %i.ed, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fm, %vec.epilog.scalar.ph ]
  %i.eu = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.eu, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !7348

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fs, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fm, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ew = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !7350
  %i.ex = icmp ne i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = getelementptr i8, ptr %i.ds, i64 %.0117.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !161, !noalias !7350
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !161, !noalias !7350
  %i.fc = icmp ne i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i8
  %i.fe = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !161, !noalias !7350
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fh = load i8, ptr %i.fa, align 1, !tbaa !161, !noalias !7350
  %i.fi = icmp ne i8 %i.fh, 0
  %i.fj = zext i1 %i.fi to i8
  %i.fk = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 2
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !161, !noalias !7350
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !161, !noalias !7350
  %i.fo = icmp ne i8 %i.fn, 0
  %i.fp = zext i1 %i.fo to i8
  %i.fq = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 3
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !161, !noalias !7350
  %i.fs = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fs, %i.dm
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !7349

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.j
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.o ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.j ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.o ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.j ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.an, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !7350
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18BadTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJNS5_11BadFastHashESt8equal_toIlESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.w, %._crit_edge124.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18BadTableEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJNS5_11BadFastHashESt8equal_toIlESaIiEEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fw = phi i1 [ false, %bb.x ], [ %i.fv, %bb.y ]
  %i.fx = load ptr, ptr %i.da, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !386
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gd = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.gf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !161
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gk, %i.ge
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !163
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #44
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb0ESaIlEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE:bb.a
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.o, !noalias !8010 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc39.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !8010
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !8010
  br label %bb.p

bb.o:                                             ; preds = %.noexc39.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !8010
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !8010
  br label %.body.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !260, !noalias !8010
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !262, !noalias !8010
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !8010, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.p
  %i.bw = zext i1 %i.bv to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bw, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !8010
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.r:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bx = ptrtoint ptr %.sroa.13.199.i to i64
  %i.by = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 8 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !8010

.noexc43.i:                                       ; preds = %bb.s
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cb = add i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 9223372036854775807)
  %i.ce = select i1 %i.cc, i64 9223372036854775807, i64 %i.cd ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !8010 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz ; 2 uses
  store i8 %i.bw, ptr %i.cg, align 1, !tbaa !161, !noalias !8010
  %i.ch = icmp sgt i64 %i.bz, 0
  br i1 %i.ch, label %bb.t, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.t:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %.sroa.053.197.i, i64 %i.bz, i1 false), !noalias !8010
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.t, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bz) #44, !noalias !8010
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.q
  %.sroa.053.3.i = phi ptr [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.q ] ; 2 uses
  %.pn65.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.q ]
  %.sroa.13.3.i = phi ptr [ %i.ci, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.q ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.cj = add i64 %.019100.i, 1                   ; 2 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !420, !noalias !8010 ; 2 uses
  %i.cl = load ptr, ptr %i.v, align 8, !tbaa !419, !noalias !8010 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %.not27.i = icmp eq i64 %i.cj, %i.cp
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8004

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.p, %bb.n, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cq = phi ptr [ %i.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cs = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !8010
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !384, !alias.scope !8010
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.db = mul i64 %i.cy, %.024.lcssa.i            ; 5 uses
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.j, !noalias !8010

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false), !alias.scope !8010
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #47
          to label %.noexc46.i unwind label %bb.j, !noalias !8010 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !385, !alias.scope !8010
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !386, !alias.scope !8010
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dd, i8 0, i64 %i.db, i1 false), !noalias !8010
  br label %bb.v

bb.v:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dg = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.di, align 8, !tbaa !387, !alias.scope !8010
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.v
  %.pre151.i = load ptr, ptr %i.cu, align 8, !tbaa !420, !noalias !8010 ; 6 uses
  %.pre152.i = load ptr, ptr %i.ct, align 8, !tbaa !419, !noalias !8010 ; 3 uses
  %i.dj = ptrtoint ptr %.pre151.i to i64
  %i.dk = ptrtoint ptr %.pre152.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  %min.iters.check167 = icmp ult i64 %i.dm, 32
  %i.dn = and i64 %i.dm, 28
  %n.vec = and i64 %i.dm, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  %n.vec169 = and i64 %i.dm, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dm, %n.vec169
  %xtraiter = and i64 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.do = phi ptr [ %i.et, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.eu, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.do, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.dp = mul i64 %i.cy, %.018123.i
  %i.dq = add i64 %i.dp, %i.dh
  %i.dr = mul i64 %.018123.i, %i.cy
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 7 uses
  %i.dt = sub i64 %.sroa.051.0122.i166, %i.dq
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !8010
  %wide.load168 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !161, !noalias !8010
  %i.dw = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dx = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = zext <16 x i1> %i.dx to <16 x i8>
  %i.ea = getelementptr i8, ptr %i.ds, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !8010
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !161, !noalias !8010
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !8005

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ed = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !8010
  %i.ee = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ef = zext <4 x i1> %i.ee to <4 x i8>
  %i.eg = getelementptr i8, ptr %i.ds, i64 %index170
  store <4 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !161, !noalias !8010
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8006

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.en, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.ei, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ej = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !8010
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.ds, i64 %.0117.i.prol
  store i8 %i.el, ptr %i.em, align 1, !tbaa !161, !noalias !8010
  %i.en = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !8007

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.en, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %i.eo = sub nsw i64 %.0117.i.ph, %i.dm
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !8010
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb0ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge124.i
  %i.eq = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.er = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.es) #44, !noalias !8010
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb0ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.et = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.du, %middle.block ], [ %i.ed, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fm, %vec.epilog.scalar.ph ]
  %i.eu = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.eu, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !8008

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fs, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fm, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ew = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !8010
  %i.ex = icmp ne i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = getelementptr i8, ptr %i.ds, i64 %.0117.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !161, !noalias !8010
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !161, !noalias !8010
  %i.fc = icmp ne i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i8
  %i.fe = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !161, !noalias !8010
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fh = load i8, ptr %i.fa, align 1, !tbaa !161, !noalias !8010
  %i.fi = icmp ne i8 %i.fh, 0
  %i.fj = zext i1 %i.fi to i8
  %i.fk = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 2
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !161, !noalias !8010
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !161, !noalias !8010
  %i.fo = icmp ne i8 %i.fn, 0
  %i.fp = zext i1 %i.fo to i8
  %i.fq = getelementptr i8, ptr %i.ds, i64 %.0117.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 3
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !161, !noalias !8010
  %i.fs = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fs, %i.dm
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !8009

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.j
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.o ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.j ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.o ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.j ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.an, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !8010
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb0ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.w, %._crit_edge124.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb0ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fw = phi i1 [ false, %bb.x ], [ %i.fv, %bb.y ]
  %i.fx = load ptr, ptr %i.da, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !386
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gd = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.gf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !161
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gk, %i.ge
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !163
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #44
end_hunk_2
begin_hunk_3_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5TableE15MatchAndExplainES9_PNS_19MatchResultListenerE:bb.a
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.r, !noalias !8468 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc47.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !8468
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !8468
  br label %bb.s

bb.r:                                             ; preds = %.noexc47.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !8468
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !8468
  br label %.body48.i

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc46.i
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !485, !noalias !8468
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !8476, !noalias !8468
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0134.i, ptr noundef nonnull %5)
          to label %_ZNK7testing8internal11MatcherBaseIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !8468, !inline_history !8461

_ZNK7testing8internal11MatcherBaseIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.s
  %i.de = zext i1 %i.dd to i8                     ; 2 uses
  %.not.i.i51.i = icmp eq ptr %.sroa.9.1123.i, %.sroa.13.1124.i
  br i1 %.not.i.i51.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  store i8 %i.de, ptr %.sroa.9.1123.i, align 1, !tbaa !161, !noalias !8468
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  %i.df = ptrtoint ptr %.sroa.13.1124.i to i64
  %i.dg = ptrtoint ptr %.sroa.064.1122.i to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 8 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775807
  br i1 %i.di, label %bb.v, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc53.i unwind label %.loopexit.split-lp.i, !noalias !8468

.noexc53.i:                                       ; preds = %bb.v
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.dj = add i64 %.sroa.speculated.i.i.i.i.i, %i.dh ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.dh
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 9223372036854775807)
  %i.dm = select i1 %i.dk, i64 9223372036854775807, i64 %i.dl ; 3 uses
  %.not.i.i.i.i52.i = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52.i)
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #47
          to label %.noexc54.i unwind label %.loopexit.i, !noalias !8468 ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dh ; 2 uses
  store i8 %i.de, ptr %i.do, align 1, !tbaa !161, !noalias !8468
  %i.dp = icmp sgt i64 %i.dh, 0
  br i1 %i.dp, label %bb.w, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.w:                                             ; preds = %.noexc54.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr align 1 %.sroa.064.1122.i, i64 %i.dh, i1 false), !noalias !8468
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.w, %.noexc54.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.064.1122.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.1122.i, i64 noundef %i.dh) #44, !noalias !8468
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.t
  %.sroa.064.3.i = phi ptr [ %i.dn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.064.1122.i, %bb.t ] ; 2 uses
  %.pn76.i = phi ptr [ %i.do, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.1123.i, %bb.t ]
  %.sroa.13.3.i = phi ptr [ %i.dq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.1124.i, %bb.t ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn76.i, i64 1 ; 2 uses
  %i.dr = add i64 %.019125.i, 1                   ; 2 uses
  %.val34.i = load ptr, ptr %i.am, align 8, !tbaa !480, !noalias !8468 ; 3 uses
  %.val35.i = load ptr, ptr %i.an, align 8, !tbaa !481, !noalias !8468 ; 2 uses
  %i.ds = ptrtoint ptr %.val35.i to i64
  %i.dt = ptrtoint ptr %.val34.i to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 24
  %.not27.i = icmp eq i64 %i.dr, %i.dv
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8462

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.s, %bb.q, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

.loopexit.split-lp.i:                             ; preds = %bb.v
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

._crit_edge137.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i
  %i.dw = phi ptr [ %i.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.val33.i = phi ptr [ %.val33.pre.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %.val33186.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.val32.i = phi ptr [ %.val32.pre.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %.val32183.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.064.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %.sroa.064.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge137_crit_edge.i ], [ %i.ch, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIZNS3_50Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5ValueLb0ELb0EEEJZNS5_8TestBodyEvE1HEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = ptrtoint ptr %.val33.i to i64
  %i.ea = ptrtoint ptr %.val32.i to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %8, align 8, !tbaa !383, !alias.scope !8468
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !384, !alias.scope !8468
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ef = mul i64 %i.ec, %.024.lcssa.i            ; 5 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge137.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc55.i unwind label %bb.m, !noalias !8468

.noexc55.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge137.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false), !alias.scope !8468
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #47
          to label %.noexc56.i unwind label %bb.m, !noalias !8468 ; 4 uses

.noexc56.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !385, !alias.scope !8468
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !386, !alias.scope !8468
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eh, i8 0, i64 %i.ef, i1 false), !noalias !8468
  br label %bb.y

bb.y:                                             ; preds = %.noexc56.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.ek = phi ptr [ %i.eh, %.noexc56.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.noexc56.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.em, align 8, !tbaa !387, !alias.scope !8468
  %.not149.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not149.i, label %._crit_edge152.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.y
  %.val141.pre.i = load ptr, ptr %i.dx, align 8, !tbaa !480, !noalias !8468 ; 6 uses
  %.val31142.pre.i = load ptr, ptr %i.dy, align 8, !tbaa !481, !noalias !8468 ; 3 uses
  %i.en = ptrtoint ptr %.val31142.pre.i to i64
  %i.eo = ptrtoint ptr %.val141.pre.i to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.eq, 4
  %min.iters.check178 = icmp ult i64 %i.eq, 32
  %i.er = and i64 %i.eq, 28
  %n.vec = and i64 %i.eq, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  %n.vec180 = and i64 %i.eq, -4                   ; 4 uses
  %cmp.n185 = icmp eq i64 %i.eq, %n.vec180
  %xtraiter = and i64 %i.eq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge147.i, %.preheader.preheader.i
  %.val141.i = phi ptr [ %.val141187.i, %._crit_edge147.i ], [ %.val141.pre.i, %.preheader.preheader.i ]
  %.018151.i = phi i64 [ %i.fw, %._crit_edge147.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.062.0150.i = phi ptr [ %.sroa.062.1.lcssa.i, %._crit_edge147.i ], [ %.sroa.064.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25143.i = icmp eq ptr %.val31142.pre.i, %.val141.i
  br i1 %.not25143.i, label %._crit_edge147.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.062.0150.i177 = ptrtoaddr ptr %.sroa.062.0150.i to i64
  %i.es = mul i64 %i.ec, %.018151.i
  %i.et = add i64 %i.es, %i.el
  %i.eu = mul i64 %.018151.i, %i.ec
  %i.ev = getelementptr i8, ptr %i.ek, i64 %i.eu  ; 7 uses
  %i.ew = sub i64 %.sroa.062.0150.i177, %i.et
  %diff.check = icmp ugt i64 %i.ew, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = getelementptr i8, ptr %.sroa.062.0150.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.062.0150.i, i64 %index ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !8468
  %wide.load179 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !161, !noalias !8468
  %i.ez = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.fa = icmp ne <16 x i8> %wide.load179, zeroinitializer
  %i.fb = zext <16 x i1> %i.ez to <16 x i8>
  %i.fc = zext <16 x i1> %i.fa to <16 x i8>
  %i.fd = getelementptr i8, ptr %i.ev, i64 %index ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  store <16 x i8> %i.fb, ptr %i.fd, align 1, !tbaa !161, !noalias !8468
  store <16 x i8> %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !8468
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !8463

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge147.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fg = getelementptr i8, ptr %.sroa.062.0150.i, i64 %n.vec180 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %.sroa.062.0150.i, i64 %index181
  %wide.load183 = load <4 x i8>, ptr %next.gep182, align 1, !tbaa !161, !noalias !8468
  %i.fh = icmp ne <4 x i8> %wide.load183, zeroinitializer
  %i.fi = zext <4 x i1> %i.fh to <4 x i8>
  %i.fj = getelementptr i8, ptr %i.ev, i64 %index181
  store <4 x i8> %i.fi, ptr %i.fj, align 1, !tbaa !161, !noalias !8468
  %index.next184 = add nuw i64 %index181, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next184, %n.vec180
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8464

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %._crit_edge147.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0145.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec180, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.062.1144.i.ph = phi ptr [ %.sroa.062.0150.i, %iter.check ], [ %i.ex, %vec.epilog.iter.check ], [ %i.fg, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0145.i.prol = phi i64 [ %i.fq, %vec.epilog.scalar.ph.prol ], [ %.0145.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.062.1144.i.prol = phi ptr [ %i.fl, %vec.epilog.scalar.ph.prol ], [ %.sroa.062.1144.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.062.1144.i.prol, i64 1 ; 3 uses
  %i.fm = load i8, ptr %.sroa.062.1144.i.prol, align 1, !tbaa !161, !noalias !8468
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.ev, i64 %.0145.i.prol
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !161, !noalias !8468
  %i.fq = add i64 %.0145.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !8465

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %.0145.i.unr = phi i64 [ %.0145.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fq, %vec.epilog.scalar.ph.prol ]
  %.sroa.062.1144.i.unr = phi ptr [ %.sroa.062.1144.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %i.fr = sub nsw i64 %.0145.i.ph, %i.eq
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %._crit_edge147.i, label %vec.epilog.scalar.ph

._crit_edge152.i:                                 ; preds = %._crit_edge147.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !8468
  %.not.i.i.i57.i = icmp eq ptr %.sroa.064.0.lcssa.i, null
  br i1 %.not.i.i.i57.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5TableE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIZNS6_8TestBodyEvE5ValueLb0ELb0EEEJZNS6_8TestBodyEvE1HEE14const_iteratorEEENS0_11MatchMatrixET_SK_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPNS_19MatchResultListenerE.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge152.i
  %i.ft = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.fu = ptrtoint ptr %.sroa.064.0.lcssa.i to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0.lcssa.i, i64 noundef %i.fv) #44, !noalias !8468
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5TableE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIZNS6_8TestBodyEvE5ValueLb0ELb0EEEJZNS6_8TestBodyEvE1HEE14const_iteratorEEENS0_11MatchMatrixET_SK_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPNS_19MatchResultListenerE.exit

._crit_edge147.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.val141187.i = phi ptr [ %.val31142.pre.i, %.preheader.i ], [ %.val141.pre.i, %middle.block ], [ %.val141.pre.i, %vec.epilog.middle.block ], [ %.val141.pre.i, %vec.epilog.scalar.ph ], [ %.val141.pre.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.062.1.lcssa.i = phi ptr [ %.sroa.062.0150.i, %.preheader.i ], [ %i.ex, %middle.block ], [ %i.fg, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.go, %vec.epilog.scalar.ph ]
  %i.fw = add nuw i64 %.018151.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.fw, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge152.i, label %.preheader.i, !llvm.loop !8466

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0145.i = phi i64 [ %i.gu, %vec.epilog.scalar.ph ], [ %.0145.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.062.1144.i = phi ptr [ %i.go, %vec.epilog.scalar.ph ], [ %.sroa.062.1144.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.062.1144.i, i64 1
  %i.fy = load i8, ptr %.sroa.062.1144.i, align 1, !tbaa !161, !noalias !8468
  %i.fz = icmp ne i8 %i.fy, 0
  %i.ga = zext i1 %i.fz to i8
  %i.gb = getelementptr i8, ptr %i.ev, i64 %.0145.i
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !161, !noalias !8468
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.062.1144.i, i64 2
  %i.gd = load i8, ptr %i.fx, align 1, !tbaa !161, !noalias !8468
  %i.ge = icmp ne i8 %i.gd, 0
  %i.gf = zext i1 %i.ge to i8
  %i.gg = getelementptr i8, ptr %i.ev, i64 %.0145.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 1
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !161, !noalias !8468
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.062.1144.i, i64 3
  %i.gj = load i8, ptr %i.gc, align 1, !tbaa !161, !noalias !8468
  %i.gk = icmp ne i8 %i.gj, 0
  %i.gl = zext i1 %i.gk to i8
  %i.gm = getelementptr i8, ptr %i.ev, i64 %.0145.i
  %i.gn = getelementptr i8, ptr %i.gm, i64 2
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !161, !noalias !8468
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.062.1144.i, i64 4 ; 2 uses
  %i.gp = load i8, ptr %i.gi, align 1, !tbaa !161, !noalias !8468
  %i.gq = icmp ne i8 %i.gp, 0
  %i.gr = zext i1 %i.gq to i8
  %i.gs = getelementptr i8, ptr %i.ev, i64 %.0145.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 3
  store i8 %i.gr, ptr %i.gt, align 1, !tbaa !161, !noalias !8468
  %i.gu = add i64 %.0145.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.gu, %i.eq
  br i1 %.not25.i.3, label %._crit_edge147.i, label %vec.epilog.scalar.ph, !llvm.loop !8467

.body48.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.r, %.body.i, %bb.m
  %.sroa.064.2.i = phi ptr [ %.sroa.064.1122.i, %bb.r ], [ %.sroa.064.0131.i, %.body.i ], [ %.sroa.064.0.lcssa.i, %bb.m ], [ %.sroa.064.1122.i, %.loopexit.i ], [ %.sroa.064.1122.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1124.i, %bb.r ], [ %.sroa.13.0133.i, %.body.i ], [ %.sroa.13.0.lcssa.i, %bb.m ], [ %.sroa.13.1124.i, %.loopexit.i ], [ %.sroa.13.1124.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.da, %bb.r ], [ %.pn.i, %.body.i ], [ %i.ca, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !8468
  %.not.i.i.i59.i = icmp eq ptr %.sroa.064.2.i, null
  br i1 %.not.i.i.i59.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5TableE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIZNS6_8TestBodyEvE5ValueLb0ELb0EEEJZNS6_8TestBodyEvE1HEE14const_iteratorEEENS0_11MatchMatrixET_SK_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.z, %._crit_edge152.i
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gw = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKZN4absl12lts_2026052618container_internal12_GLOBAL__N_150Table_IteratorEmplaceConstructibleRequirement_Test8TestBodyEvE5TableE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIZNS6_8TestBodyEvE5ValueLb0ELb0EEEJZNS6_8TestBodyEvE1HEE14const_iteratorEEENS0_11MatchMatrixET_SK_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPNS_19MatchResultListenerE.exit
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gy = phi i1 [ false, %bb.aa ], [ %i.gx, %bb.ab ]
  %i.gz = load ptr, ptr %i.ee, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !386
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  %i.hf = load ptr, ptr %7, align 8, !tbaa !155   ; 3 uses
  %i.hg = load ptr, ptr %i.dw, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hf, %i.hg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.hf, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.hh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i14
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !161
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.hm, %i.hg
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.hn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.hf, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !163
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #44
end_hunk_3
begin_hunk_4_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEENS0_11MatchMatrixET_SN_PS2_IS9_SaIS9_EEPNS_19MatchResultListenerE:bb.a
.noexc36:                                         ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !279
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !283
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %.loopexit, !inline_history !17

_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.197
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  store i8 %i.be, ptr %.sroa.9.196, align 1, !tbaa !161
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.bf = ptrtoint ptr %.sroa.13.197 to i64
  %i.bg = ptrtoint ptr %.sroa.050.195 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 8 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bj = add i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bh
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 9223372036854775807)
  %i.bm = select i1 %i.bk, i64 9223372036854775807, i64 %i.bl ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #47
          to label %.noexc41 unwind label %.loopexit ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !161
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %.sroa.050.195, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.195, i64 noundef %i.bh) #44
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.n
  %.sroa.050.3 = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.195, %bb.n ] ; 2 uses
  %.pn65 = phi ptr [ %i.bo, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.196, %bb.n ]
  %.sroa.13.3 = phi ptr [ %i.bq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.197, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 1 ; 2 uses
  %i.br = add i64 %.01998, 1                      ; 2 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !349 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !348 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %.not27 = icmp eq i64 %i.br, %i.bx
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !8913

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge108:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge
  %i.by = phi ptr [ %.pre144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ap, %._crit_edge ]
  %i.bz = phi ptr [ %.pre142, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.aq, %._crit_edge ]
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ar, %._crit_edge ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 4 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !383
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !384
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = mul i64 %i.cf, %.024.lcssa              ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #47
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !385
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !386
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ci, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cn = phi ptr [ %i.ck, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !387
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.s
  %.pre145 = load ptr, ptr %i.cb, align 8, !tbaa !349 ; 6 uses
  %.pre146 = load ptr, ptr %i.ca, align 8, !tbaa !348 ; 3 uses
  %i.cq = ptrtoint ptr %.pre145 to i64
  %i.cr = ptrtoint ptr %.pre146 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.ct, 4
  %min.iters.check214 = icmp ult i64 %i.ct, 32
  %i.cu = and i64 %i.ct, 28
  %n.vec = and i64 %i.ct, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec216 = and i64 %i.ct, -4                   ; 4 uses
  %cmp.n221 = icmp eq i64 %i.ct, %n.vec216
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge116
  %i.cv = phi ptr [ %.pre145, %.preheader.lr.ph ], [ %i.eb, %._crit_edge116 ]
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ec, %._crit_edge116 ] ; 3 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 7 uses
  %.not25112 = icmp eq ptr %i.cv, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.sroa.048.0119213 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %i.cw = mul i64 %i.cf, %.018120
  %i.cx = add i64 %i.cw, %i.co
  %i.cy = mul i64 %.018120, %i.cf
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy  ; 7 uses
  %i.da = sub i64 %.sroa.048.0119213, %i.cx
  %diff.check = icmp ugt i64 %i.da, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161
  %wide.load215 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !161
  %i.dd = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.de = icmp ne <16 x i8> %wide.load215, zeroinitializer
  %i.df = zext <16 x i1> %i.dd to <16 x i8>
  %i.dg = zext <16 x i1> %i.de to <16 x i8>
  %i.dh = getelementptr i8, ptr %i.cz, i64 %index ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store <16 x i8> %i.df, ptr %i.dh, align 1, !tbaa !161
  store <16 x i8> %i.dg, ptr %i.di, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !8914

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dk = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.sroa.048.0119, i64 %index217
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !161
  %i.dl = icmp ne <4 x i8> %wide.load219, zeroinitializer
  %i.dm = zext <4 x i1> %i.dl to <4 x i8>
  %i.dn = getelementptr i8, ptr %i.cz, i64 %index217
  store <4 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !161
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next220, %n.vec216
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8915

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n221, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.du, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dp, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.dq = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !161
  %i.dr = icmp ne i8 %i.dq, 0
  %i.ds = zext i1 %i.dr to i8
  %i.dt = getelementptr i8, ptr %i.cz, i64 %.0114.prol
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !161
  %i.du = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !8916

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.du, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %i.dv = sub nsw i64 %.0114.ph, %i.ct
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge121
  %i.dx = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.dy = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dz) #44
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge121, %bb.t
  ret void

bb.u:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.eb = phi ptr [ %.pre146, %.preheader ], [ %.pre145, %middle.block ], [ %.pre145, %vec.epilog.middle.block ], [ %.pre145, %vec.epilog.scalar.ph ], [ %.pre145, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0119, %.preheader ], [ %i.db, %middle.block ], [ %i.dk, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.eu, %vec.epilog.scalar.ph ]
  %i.ec = add nuw i64 %.018120, 1                 ; 2 uses
  %.not = icmp eq i64 %i.ec, %.024.lcssa
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !8917

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.fa, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.eu, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.ee = load i8, ptr %.sroa.048.1113, align 1, !tbaa !161
  %i.ef = icmp ne i8 %i.ee, 0
  %i.eg = zext i1 %i.ef to i8
  %i.eh = getelementptr i8, ptr %i.cz, i64 %.0114
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !161
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !161
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.el, ptr %i.en, align 1, !tbaa !161
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !161
  %i.eq = icmp ne i8 %i.ep, 0
  %i.er = zext i1 %i.eq to i8
  %i.es = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.et = getelementptr i8, ptr %i.es, i64 2
  store i8 %i.er, ptr %i.et, align 1, !tbaa !161
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !161
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.ez = getelementptr i8, ptr %i.ey, i64 3
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !161
  %i.fa = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.fa, %i.ct
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !8918

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.050.2 = phi ptr [ %.sroa.050.195, %bb.l ], [ %.sroa.050.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.195, %.loopexit ], [ %.sroa.050.195, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.197, %bb.l ], [ %.sroa.13.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa, %bb.u ], [ %.sroa.13.197, %.loopexit ], [ %.sroa.13.197, %.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ea, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.fb = ptrtoint ptr %.sroa.13.2 to i64
  %i.fc = ptrtoint ptr %.sroa.050.2 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fd) #44
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEEE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !542
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !536
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !542
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !161
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEED2Ev.exit unwind label %bb.d, !inline_history !53

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #48, !inline_history !543
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536
  %i.c = icmp ne ptr %i.b, null
end_hunk_4
begin_hunk_5_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorIlSaIlEEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKlS4_EEEENS0_11MatchMatrixET_SF_PS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEPNS_19MatchResultListenerE:bb.a
.noexc36:                                         ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !260
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !262
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %.loopexit, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.197
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  store i8 %i.be, ptr %.sroa.9.196, align 1, !tbaa !161
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.bf = ptrtoint ptr %.sroa.13.197 to i64
  %i.bg = ptrtoint ptr %.sroa.050.195 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 8 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bj = add i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bh
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 9223372036854775807)
  %i.bm = select i1 %i.bk, i64 9223372036854775807, i64 %i.bl ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #47
          to label %.noexc41 unwind label %.loopexit ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !161
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %.sroa.050.195, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.195, i64 noundef %i.bh) #44
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.n
  %.sroa.050.3 = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.195, %bb.n ] ; 2 uses
  %.pn65 = phi ptr [ %i.bo, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.196, %bb.n ]
  %.sroa.13.3 = phi ptr [ %i.bq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.197, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 1 ; 2 uses
  %i.br = add i64 %.01998, 1                      ; 2 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !420 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !419 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %.not27 = icmp eq i64 %i.br, %i.bx
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !9639

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge108:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge
  %i.by = phi ptr [ %.pre144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ap, %._crit_edge ]
  %i.bz = phi ptr [ %.pre142, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.aq, %._crit_edge ]
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ar, %._crit_edge ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 4 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !383
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !384
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = mul i64 %i.cf, %.024.lcssa              ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #47
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !385
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !386
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ci, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cn = phi ptr [ %i.ck, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !387
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.s
  %.pre145 = load ptr, ptr %i.cb, align 8, !tbaa !420 ; 6 uses
  %.pre146 = load ptr, ptr %i.ca, align 8, !tbaa !419 ; 3 uses
  %i.cq = ptrtoint ptr %.pre145 to i64
  %i.cr = ptrtoint ptr %.pre146 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.ct, 4
  %min.iters.check214 = icmp ult i64 %i.ct, 32
  %i.cu = and i64 %i.ct, 28
  %n.vec = and i64 %i.ct, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec216 = and i64 %i.ct, -4                   ; 4 uses
  %cmp.n221 = icmp eq i64 %i.ct, %n.vec216
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge116
  %i.cv = phi ptr [ %.pre145, %.preheader.lr.ph ], [ %i.eb, %._crit_edge116 ]
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ec, %._crit_edge116 ] ; 3 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 7 uses
  %.not25112 = icmp eq ptr %i.cv, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.sroa.048.0119213 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %i.cw = mul i64 %i.cf, %.018120
  %i.cx = add i64 %i.cw, %i.co
  %i.cy = mul i64 %.018120, %i.cf
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy  ; 7 uses
  %i.da = sub i64 %.sroa.048.0119213, %i.cx
  %diff.check = icmp ugt i64 %i.da, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161
  %wide.load215 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !161
  %i.dd = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.de = icmp ne <16 x i8> %wide.load215, zeroinitializer
  %i.df = zext <16 x i1> %i.dd to <16 x i8>
  %i.dg = zext <16 x i1> %i.de to <16 x i8>
  %i.dh = getelementptr i8, ptr %i.cz, i64 %index ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store <16 x i8> %i.df, ptr %i.dh, align 1, !tbaa !161
  store <16 x i8> %i.dg, ptr %i.di, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !9640

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dk = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.sroa.048.0119, i64 %index217
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !161
  %i.dl = icmp ne <4 x i8> %wide.load219, zeroinitializer
  %i.dm = zext <4 x i1> %i.dl to <4 x i8>
  %i.dn = getelementptr i8, ptr %i.cz, i64 %index217
  store <4 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !161
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next220, %n.vec216
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9641

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n221, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.du, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dp, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.dq = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !161
  %i.dr = icmp ne i8 %i.dq, 0
  %i.ds = zext i1 %i.dr to i8
  %i.dt = getelementptr i8, ptr %i.cz, i64 %.0114.prol
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !161
  %i.du = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !9642

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.du, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %i.dv = sub nsw i64 %.0114.ph, %i.ct
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge121
  %i.dx = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.dy = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dz) #44
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge121, %bb.t
  ret void

bb.u:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.eb = phi ptr [ %.pre146, %.preheader ], [ %.pre145, %middle.block ], [ %.pre145, %vec.epilog.middle.block ], [ %.pre145, %vec.epilog.scalar.ph ], [ %.pre145, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0119, %.preheader ], [ %i.db, %middle.block ], [ %i.dk, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.eu, %vec.epilog.scalar.ph ]
  %i.ec = add nuw i64 %.018120, 1                 ; 2 uses
  %.not = icmp eq i64 %i.ec, %.024.lcssa
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !9643

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.fa, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.eu, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.ee = load i8, ptr %.sroa.048.1113, align 1, !tbaa !161
  %i.ef = icmp ne i8 %i.ee, 0
  %i.eg = zext i1 %i.ef to i8
  %i.eh = getelementptr i8, ptr %i.cz, i64 %.0114
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !161
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !161
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.el, ptr %i.en, align 1, !tbaa !161
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !161
  %i.eq = icmp ne i8 %i.ep, 0
  %i.er = zext i1 %i.eq to i8
  %i.es = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.et = getelementptr i8, ptr %i.es, i64 2
  store i8 %i.er, ptr %i.et, align 1, !tbaa !161
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !161
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.ez = getelementptr i8, ptr %i.ey, i64 3
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !161
  %i.fa = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.fa, %i.ct
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !9644

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.050.2 = phi ptr [ %.sroa.050.195, %bb.l ], [ %.sroa.050.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.195, %.loopexit ], [ %.sroa.050.195, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.197, %bb.l ], [ %.sroa.13.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa, %bb.u ], [ %.sroa.13.197, %.loopexit ], [ %.sroa.13.197, %.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ea, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.fb = ptrtoint ptr %.sroa.13.2 to i64
  %i.fc = ptrtoint ptr %.sroa.050.2 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fd) #44
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt6vectorIlSaIlEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEEE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !595
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !595
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !161
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEED2Ev.exit unwind label %bb.d, !inline_history !55

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #48, !inline_history !596
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorIlSaIlEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.c = icmp ne ptr %i.b, null
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEED2Ev:bb.a
  %i.m = xor i64 %notmask.i.i.i.i.i, -1
  %i.n = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %i.n)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1679", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 33685504
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12163
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i8, ptr %i.f, align 8, !tbaa !161, !noalias !12163
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12163
  %i.g = trunc i32 %.val7.val.i.i to i8
  %i.h = icmp eq i8 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12163
  store ptr %1, ptr %3, align 8, !tbaa !670, !noalias !12163
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12163
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIaEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12163
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12163, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12163
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12164 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12164
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %i.r = load i32, ptr %2, align 4, !tbaa !188, !noalias !12164 ; 2 uses
  %i.s = and i32 %i.r, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.q, %i.t
  %i.v = zext nneg i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ab = lshr i64 %i.z, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val5.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12164 ; 3 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = trunc i32 %i.r to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.z, %bb.e ], [ %i.bc, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.aa          ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1), !noalias !12164
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !161, !noalias !12164 ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.af, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32
  %i.an = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.am) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.an, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.av, %.critedge.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nuw i64 %.sroa.640.0.i, %i.ap
  %i.ar = and i64 %i.aq, %i.aa                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.ar
  %.val3.i = load i8, ptr %i.as, align 1, !tbaa !161, !noalias !12164
  %i.at = icmp eq i8 %.val3.i, %i.ag
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.au = add i32 %.sroa.025.069.i, -1
  %i.av = and i32 %i.au, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.aw = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.az, 0
  br i1 %.not62.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ba = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i32 %i.az, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12164
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12164
  %.val.i.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12164
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.640.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val5.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.ba, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i4, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.be, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bf, align 8, !tbaa !673
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIaEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !tbaa !161
  %i.a = zext i8 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !12165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12167

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12168

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12169

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i8, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i8 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !241

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !241

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEED2Ev:bb.a
  %i.n = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 2, i64 noundef 2, i1 noundef zeroext %i.n)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1728", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 8590065664
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12242
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i16, ptr %i.f, align 8, !tbaa !604, !noalias !12242
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12242
  %i.g = trunc i32 %.val7.val.i.i to i16
  %i.h = icmp eq i16 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12242
  store ptr %1, ptr %3, align 8, !tbaa !684, !noalias !12242
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12242
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIsEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12242
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12242, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12242
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12243 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12243
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %i.r = load i32, ptr %2, align 4, !tbaa !188, !noalias !12243 ; 2 uses
  %i.s = and i32 %i.r, 65535
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.q, %i.t
  %i.v = zext nneg i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ab = lshr i64 %i.z, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val5.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12243 ; 3 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = trunc i32 %i.r to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.z, %bb.e ], [ %i.bc, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.aa          ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.val5.i, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1), !noalias !12243
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !161, !noalias !12243 ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.af, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32
  %i.an = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.am) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.an, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.av, %.critedge.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nuw i64 %.sroa.640.0.i, %i.ap
  %i.ar = and i64 %i.aq, %i.aa                    ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.val5.i, i64 %i.ar
  %.val3.i = load i16, ptr %i.as, align 2, !tbaa !604, !noalias !12243
  %i.at = icmp eq i16 %.val3.i, %i.ag
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.au = add i32 %.sroa.025.069.i, -1
  %i.av = and i32 %i.au, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.aw = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.az, 0
  br i1 %.not62.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ba = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i32 %i.az, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12243
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12243
  %.val.i.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12243
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.640.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val5.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.ba, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i4, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.be, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bf, align 8, !tbaa !687
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIsEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i16, ptr %1, align 2, !tbaa !604
  %i.a = zext i16 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  %i.e = shl i64 %n.vec, 1                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  %i.h = and i64 %3, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 2, !tbaa !604
  %wide.load17 = load <8 x i16>, ptr %i.j, align 2, !tbaa !604
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !604
  store <8 x i16> %wide.load17, ptr %i.k, align 2, !tbaa !604
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !691

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 3 uses
  %i.m = shl i64 %n.vec20, 1                      ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 %i.m
  %i.p = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.q = shl i64 %index21, 1                      ; 2 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.q
  %next.gep23 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 2, !tbaa !604
  store <4 x i16> %wide.load24, ptr %next.gep22, align 2, !tbaa !604
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12245

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.s = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.u, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i16, ptr %.0913.prol, align 2, !tbaa !604
  store i16 %.val1.val.val.i.prol, ptr %.014.prol, align 2, !tbaa !604
  %i.t = add i64 %.01012.prol, -1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12246

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.s, 7
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.an, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.am, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.al, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i16, ptr %.0913, align 2, !tbaa !604
  store i16 %.val1.val.val.i, ptr %.014, align 2, !tbaa !604
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.1 = load i16, ptr %i.x, align 2, !tbaa !604
  store i16 %.val1.val.val.i.1, ptr %i.y, align 2, !tbaa !604
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.2 = load i16, ptr %i.z, align 2, !tbaa !604
  store i16 %.val1.val.val.i.2, ptr %i.aa, align 2, !tbaa !604
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.3 = load i16, ptr %i.ab, align 2, !tbaa !604
  store i16 %.val1.val.val.i.3, ptr %i.ac, align 2, !tbaa !604
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.val1.val.val.i.4 = load i16, ptr %i.ad, align 2, !tbaa !604
  store i16 %.val1.val.val.i.4, ptr %i.ae, align 2, !tbaa !604
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 10
  %.val1.val.val.i.5 = load i16, ptr %i.af, align 2, !tbaa !604
  store i16 %.val1.val.val.i.5, ptr %i.ag, align 2, !tbaa !604
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.014, i64 12
  %.val1.val.val.i.6 = load i16, ptr %i.ah, align 2, !tbaa !604
  store i16 %.val1.val.val.i.6, ptr %i.ai, align 2, !tbaa !604
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 14
  %.val1.val.val.i.7 = load i16, ptr %i.aj, align 2, !tbaa !604
  store i16 %.val1.val.val.i.7, ptr %i.ak, align 2, !tbaa !604
  %i.al = add i64 %.01012, -8                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12247

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i16, ptr %i.y, align 2, !tbaa !604 ; 2 uses
  %i.ac = zext i16 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !241

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !241
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEED2Ev:bb.a
_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1854", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 5 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12532)
  %i.c = icmp ult i64 %.val, 33685504
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !12532 ; 2 uses
  %.val5.i = load i8, ptr %.val3.i, align 1, !tbaa !161, !noalias !12532
  %.val4.val.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12532
  %i.e = trunc i32 %.val4.val.i to i8
  %i.f = icmp eq i8 %.val5.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !12532
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val3.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !12532
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !721, !alias.scope !12532
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12532
  store ptr %1, ptr %3, align 8, !tbaa !726, !noalias !12532
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !248, !noalias !12532
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIhEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !12532 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.j, ptr %0, align 8, !alias.scope !12532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !12532
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.l, align 8, !tbaa !721, !alias.scope !12532
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12532
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12533)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !161, !noalias !12533 ; 3 uses
  %i.n = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.n
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12533
  %i.o = lshr i64 %.val, 8
  %i.p = and i64 %i.o, 255
  %i.q = load i32, ptr %2, align 4, !tbaa !188, !noalias !12533 ; 2 uses
  %i.r = and i32 %i.q, 255
  %i.s = zext nneg i32 %i.r to i64
  %i.t = xor i64 %i.p, %i.s
  %i.u = zext nneg i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64                   ; 3 uses
  %i.z = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.aa = lshr i64 %i.y, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val3.i4 = load ptr, ptr %i.ac, align 8, !tbaa !161, !noalias !12533 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.af = trunc i32 %i.q to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i = phi i64 [ %i.y, %bb.f ], [ %i.bb, %bb.i ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.i ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.z           ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3.i4, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1), !noalias !12533
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !tbaa !161, !noalias !12533 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ae, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = zext i16 %i.ak to i32
  %i.am = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.am, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.au, %.critedge.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw i64 %.sroa.640.0.i, %i.ao
  %i.aq = and i64 %i.ap, %i.z                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3.i4, i64 %i.aq
  %.val5.i5 = load i8, ptr %i.ar, align 1, !tbaa !161, !noalias !12533
  %i.as = icmp eq i8 %.val5.i5, %i.af
  br i1 %i.as, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.at = add i32 %.sroa.025.069.i, -1
  %i.au = and i32 %i.at, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.g
  %i.av = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.ay, 0
  br i1 %.not62.i, label %bb.i, label %bb.h, !prof !233

bb.h:                                             ; preds = %._crit_edge.i
  %i.az = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.y, i32 %i.ay, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12533
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.m, align 8, !tbaa !161, !noalias !12533
  %.val.i.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !161, !noalias !12533
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ba = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.640.0.i
  br label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.h
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.h ], [ %.val3.i4, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.h ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.az, %bb.h ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.h ], [ 0, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  store ptr %i.bc, ptr %0, align 8, !alias.scope !12533
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !12533
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i, ptr %i.be, align 8, !tbaa !721, !alias.scope !12533
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIhEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !tbaa !161
  %i.a = zext i8 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE19transfer_n_slots_fnEPvSE_SE_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !12534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12536

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12537

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS1_21MinimumAlignmentAllocIcEEEEPvS5_m(ptr noundef %0, i64 noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 3 uses
  %i.b = icmp ugt i64 %i.a, 9223372036854775799
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS1_21MinimumAlignmentAllocIcEEEEPvPT0_m.exit, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.a, -9
  br i1 %i.c, label %.noexc.i, label %.noexc4.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #45
  unreachable

.noexc4.i:                                        ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS1_21MinimumAlignmentAllocIcEEEEPvPT0_m.exit: ; preds = %bb.a
  %i.d = and i64 %i.a, 9223372036854775800
  %i.e = add nuw nsw i64 %i.d, 8
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  ret ptr %i.g
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_21MinimumAlignmentAllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !233 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = add i64 %i.o, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.q) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEED2Ev:bb.a
  %i.n = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 2, i64 noundef 1, i1 noundef zeroext %i.n)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1909", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 8590065664
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12801
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i16, ptr %i.f, align 8, !noalias !12801
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12801
  %i.g = trunc i32 %.val7.val.i.i to i16
  %i.h = icmp eq i16 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12801
  store ptr %1, ptr %3, align 8, !tbaa !740, !noalias !12801
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12801
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_112AlignedValueIhLi2EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12801 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12801
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12801, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12801
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12802 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12802
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %.val3.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12802 ; 2 uses
  %.sroa.0.0.insert.insert1.i.i.i = and i32 %.val3.i, 65535
  %.sroa.0.0.insert.insert.i.i.i = zext nneg i32 %.sroa.0.0.insert.insert1.i.i.i to i64
  %i.r = xor i64 %i.q, %.sroa.0.0.insert.insert.i.i.i
  %i.s = zext nneg i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 3 uses
  %i.x = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.y = lshr i64 %i.w, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val8.i = load ptr, ptr %i.aa, align 8, !tbaa !161, !noalias !12802 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = trunc i32 %.val3.i to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.w, %bb.e ], [ %i.az, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.643.0.i = and i64 %.pn.i, %i.x           ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.val8.i, i64 %.sroa.643.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1), !noalias !12802
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.643.0.i
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !161, !noalias !12802 ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ac, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aj) #49, !srcloc !240 ; 2 uses
  %.not71.i = icmp eq i32 %i.ak, 0
  br i1 %.not71.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.028.072.i = phi i32 [ %i.as, %.critedge.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.al = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.028.072.i, i1 true)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nuw i64 %.sroa.643.0.i, %i.am
  %i.ao = and i64 %i.an, %i.x                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.val8.i, i64 %i.ao
  %.val5.i = load i16, ptr %i.ap, align 1, !noalias !12802
  %i.aq = icmp eq i16 %.val5.i, %i.ad
  br i1 %i.aq, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.ar = add i32 %.sroa.028.072.i, -1
  %i.as = and i32 %i.ar, %.sroa.028.072.i         ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.at = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32
  %i.aw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av) #49, !srcloc !240 ; 2 uses
  %.not65.i = icmp eq i32 %i.aw, 0
  br i1 %.not65.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ax = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.w, i32 %i.aw, i64 %.sroa.643.0.i, i64 %.sroa.14.0.i), !noalias !12802
  %.sroa.0.0.copyload.i.i.i.i11.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12802
  %.val.i.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !161, !noalias !12802
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.ay = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.643.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val8.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i11.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i11.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.353.ph.i = phi i64 [ %i.ax, %bb.g ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i11.i, i64 %.353.ph.i
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i4, i64 %.353.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i11.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.ba, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.bb, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bc, align 8, !tbaa !743
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIS6_EELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i16, ptr %1, align 1, !tbaa !161
  %i.a = zext i16 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE19transfer_n_slots_fnEPvS9_S9_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  %i.e = shl i64 %n.vec, 1                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  %i.h = and i64 %3, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <8 x i16>, ptr %i.j, align 1, !tbaa !161
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <8 x i16> %wide.load17, ptr %i.k, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !691

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 3 uses
  %i.m = shl i64 %n.vec20, 1                      ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 %i.m
  %i.p = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.q = shl i64 %index21, 1                      ; 2 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.q
  %next.gep23 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i16> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12804

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.s = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.u, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i16, ptr %.0913.prol, align 1, !tbaa !161
  store i16 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.t = add i64 %.01012.prol, -1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12805

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.s, 7
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.an, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.am, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.al, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i16, ptr %.0913, align 1, !tbaa !161
  store i16 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.1 = load i16, ptr %i.x, align 1, !tbaa !161
  store i16 %.val1.val.val.i.1, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.2 = load i16, ptr %i.z, align 1, !tbaa !161
  store i16 %.val1.val.val.i.2, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.3 = load i16, ptr %i.ab, align 1, !tbaa !161
  store i16 %.val1.val.val.i.3, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.val1.val.val.i.4 = load i16, ptr %i.ad, align 1, !tbaa !161
  store i16 %.val1.val.val.i.4, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 10
  %.val1.val.val.i.5 = load i16, ptr %i.af, align 1, !tbaa !161
  store i16 %.val1.val.val.i.5, ptr %i.ag, align 1, !tbaa !161
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.014, i64 12
  %.val1.val.val.i.6 = load i16, ptr %i.ah, align 1, !tbaa !161
  store i16 %.val1.val.val.i.6, ptr %i.ai, align 1, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 14
  %.val1.val.val.i.7 = load i16, ptr %i.aj, align 1, !tbaa !161
  store i16 %.val1.val.val.i.7, ptr %i.ak, align 1, !tbaa !161
  %i.al = add i64 %.01012, -8                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12806

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSE_PFvSE_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12807

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i16, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i16 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !241

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !241
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146SmallTableResizeTest_InsertIntoSmallTable_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEE8TestBodyEv:bb.a

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i100
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !182 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i112, label %_ZNK7testing15AssertionResult15failure_messageEv.exit113, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit113

_ZNK7testing15AssertionResult15failure_messageEv.exit113: ; preds = %bb.ar, %bb.aq
  %i.fq = phi ptr [ %i.fp, %bb.ar ], [ @.str.31, %bb.aq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1310, ptr noundef %i.fq)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.fr = load ptr, ptr %13, align 8, !tbaa !170  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.at
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !141
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %bb.at, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %bb.ay

bb.au:                                            ; preds = %bb.ap
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit119

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #43
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn39 = phi { ptr, i32 } [ %i.fx, %bb.aw ], [ %i.fw, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.fy = load ptr, ptr %13, align 8, !tbaa !170  ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.ax
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !141
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(128) %i.fy) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %bb.ax, %bb.au
  %.pn39.pn = phi { ptr, i32 } [ %i.fv, %bb.au ], [ %.pn39, %bb.ax ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #43
  br label %bb.ba

bb.ay:                                            ; preds = %bb.an, %_ZN7testing7MessageD2Ev.exit116
  %i.gc = load ptr, ptr %i.k, align 8, !tbaa !182 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit124, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !160 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.az
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !161
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit124

_ZN7testing15AssertionResultD2Ev.exit124:         ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.gi = load i32, ptr %i.d, align 4, !tbaa !188 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !188
  %i.gk = load i32, ptr %i.a, align 4, !tbaa !188 ; 2 uses
  %.not.not = icmp slt i32 %i.gi, %i.gk
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !13071

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119, %bb.ao
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit119 ], [ %i.fn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZN7testing7MessageD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba, %_ZN7testing7MessageD2Ev.exit80
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.ba ], [ %.pn34.pn.pn, %_ZN7testing7MessageD2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.bf

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit124, %bb.t
  %i.gl = phi i32 [ %i.bg, %bb.t ], [ %i.gk, %_ZN7testing15AssertionResultD2Ev.exit124 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.a, align 4, !tbaa !188
  %i.gn = icmp slt i32 %i.gl, 31
  br i1 %i.gn, label %bb.b, label %.loopexit, !llvm.loop !13072

.loopexit:                                        ; preds = %._crit_edge, %bb.bb, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.val2.i.i = load i64, ptr %2, align 8          ; 2 uses
  %i.go = and i64 %.val2.i.i, 255
  %i.gp = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %i.gp)
  %i.gq = and i64 %.val2.i.i, 254
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr %2, ptr %1, align 8, !tbaa !782
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 10, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_12AlignedValueItLi5EEELb1ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.be

.noexc.i:                                         ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.i.i = load i64, ptr %2, align 8        ; 2 uses
  %i.gs = and i64 %.val2.i.i.i, 255               ; 2 uses
  %notmask.i.i.i.i.i.i125 = shl nsw i64 -1, %i.gs ; 4 uses
  %i.gt = add nsw i64 %notmask.i.i.i.i.i.i125, 281474976710655
  %i.gu = or i64 %i.gt, %notmask.i.i.i.i.i.i125
  %i.gv = icmp eq i64 %i.gu, -1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp ne i64 %i.gs, 0
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i64 %notmask.i.i.i.i.i.i125, -281474976710657
  call void @llvm.assume(i1 %i.gx)
  %i.gy = and i64 %.val2.i.i.i, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.gz = xor i64 %notmask.i.i.i.i.i.i125, -1
  %i.ha = icmp ne i64 %i.gy, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.gz, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i, i64 noundef 10, i64 noundef 2, i1 noundef zeroext %i.ha)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i, %bb.bd
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit: ; preds = %.loopexit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.bf:                                            ; preds = %bb.bc, %bb.u, %bb.g
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.bc ], [ %.pn27.pn.pn, %bb.u ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(10) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !188, !noalias !13094 ; 3 uses
  %i.b = and i32 %i.a, -65536
  %.lobit.i = ashr i32 %i.a, 31
  %8 = load i64, ptr %3, align 2, !noalias !13094
  %9 = zext i32 %.lobit.i to i64
  %10 = shl nuw i64 %9, 32
  %i.c = zext i32 %i.b to i64
  %i.d = or disjoint i64 %10, %i.c
  %i.e = and i32 %i.a, 65535
  %i.f = zext nneg i32 %i.e to i64
  %i.g = or disjoint i64 %i.d, %i.f
  %i.h = icmp eq i64 %8, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43, !noalias !13095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13098)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43, !noalias !13099
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5), !noalias !13099
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 2 dereferenceable(10) %3, i64 noundef 10, ptr noundef nonnull %i.i)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i unwind label %bb.g, !noalias !13099

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !13100)
  call void @llvm.experimental.noalias.scope.decl(metadata !13101)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !164, !alias.scope !13102, !noalias !13095
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !165, !alias.scope !13102, !noalias !13095
  store i8 0, ptr %i.j, align 8, !tbaa !161, !alias.scope !13102, !noalias !13095
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184, !noalias !13103 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13103 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i.i.i.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !185, !noalias !13103 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i.i.i.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i unwind label %bb.e, !noalias !13095 ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !160, !alias.scope !13102, !noalias !13095 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.j, align 8, !tbaa !161, !alias.scope !13102, !noalias !13095
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #44, !noalias !13095
  br label %.body.i.i.i.i.i

bb.f:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i unwind label %bb.e, !noalias !13095

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !13099 ; 2 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !141, !noalias !13099
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !13099
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8, !noalias !13095
  %i.ag = getelementptr inbounds i8, ptr %5, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !141, !noalias !13099
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !13099
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !141, !noalias !13099
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !141, !noalias !13099
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !160, !noalias !13099 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !161, !noalias !13099
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #44, !noalias !13095
  br label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

common.resume.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, %.body.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.e, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #43, !noalias !13095
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !13099
  br label %common.resume.i.i

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !141, !noalias !13099
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #43, !noalias !13095
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !13099 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !141, !noalias !13099
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !13099
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !noalias !13095
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !141, !noalias !13099
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !187, !noalias !13099
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #43, !noalias !13095
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !13099
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43, !noalias !13095
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.i, !noalias !13095

_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.ay = load ptr, ptr %7, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !161, !noalias !13095
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !13095
  %i.bd = load ptr, ptr %6, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !161, !noalias !13095
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #44
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.j:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.j
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !161, !noalias !13095
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !13095
  %i.bo = load ptr, ptr %6, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.j
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !161, !noalias !13095
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !13095
  br label %common.resume.i.i

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !13095
  br label %_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit: ; preds = %bb.b, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_10
begin_hunk_11_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ESaIlEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !17823
  br label %bb.n

bb.m:                                             ; preds = %.noexc39.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !17823
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !17823
  br label %.body.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !260, !noalias !17823
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !262, !noalias !17823
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !17823, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.n
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bu, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !17823
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bv = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bw = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %bb.q, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !17823

.noexc43.i:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.bz = add i64 %.sroa.speculated.i.i.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bx
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 9223372036854775807)
  %i.cc = select i1 %i.ca, i64 9223372036854775807, i64 %i.cb ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !17823 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx ; 2 uses
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !161, !noalias !17823
  %i.cf = icmp sgt i64 %i.bx, 0
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %.sroa.053.197.i, i64 %i.bx, i1 false), !noalias !17823
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bx) #44, !noalias !17823
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.o
  %.sroa.053.3.i = phi ptr [ %i.cd, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.o ] ; 2 uses
  %.pn65.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.o ]
  %.sroa.13.3.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.o ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ch = add i64 %.019100.i, 1                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !420, !noalias !17823 ; 2 uses
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !419, !noalias !17823 ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %.not27.i = icmp eq i64 %i.ch, %i.cn
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17817

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.l, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.noexc4.i.i, %.noexc.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.au, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !17823
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !17823
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.t, !noalias !17823

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !17823
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.t, !noalias !17823 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !17823
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !17823
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !17823
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !17823
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !420, !noalias !17823 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !419, !noalias !17823 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !17823
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !17823
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !17823
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !17823
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !17818

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !17823
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !17823
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17819

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !17823
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !17823
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17820

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !17823
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !17823
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !17821

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !17823
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !17823
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !17823
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !17823
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !17823
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !17823
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !17823
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !17823
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !17822

.body.i:                                          ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.m ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.t ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.m ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.t ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.co, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !17823
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_11
begin_hunk_12_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS8_EEEE15MatchAndExplainESC_PNS_19MatchResultListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !17973
  br label %bb.o

bb.n:                                             ; preds = %.noexc46.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !17973
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !17973
  br label %.body.i

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc45.i
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !625, !noalias !17973
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !627, !noalias !17973
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0118.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110SizedValueILi24EEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !17973, !inline_history !61

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110SizedValueILi24EEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.o
  %i.bq = zext i1 %i.bp to i8                     ; 2 uses
  %.not.i.i48.i = icmp eq ptr %.sroa.9.1107.i, %.sroa.13.1108.i
  br i1 %.not.i.i48.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110SizedValueILi24EEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bq, ptr %.sroa.9.1107.i, align 1, !tbaa !161, !noalias !17973
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110SizedValueILi24EEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  %i.br = ptrtoint ptr %.sroa.13.1108.i to i64
  %i.bs = ptrtoint ptr %.sroa.060.1106.i to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775807
  br i1 %i.bu, label %bb.r, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc50.i unwind label %.loopexit.split-lp.i, !noalias !17973

.noexc50.i:                                       ; preds = %bb.r
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bv = add i64 %.sroa.speculated.i.i.i.i.i, %i.bt ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 9223372036854775807)
  %i.by = select i1 %i.bw, i64 9223372036854775807, i64 %i.bx ; 3 uses
  %.not.i.i.i.i49.i = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i.i49.i)
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #47
          to label %.noexc51.i unwind label %.loopexit.i, !noalias !17973 ; 4 uses

.noexc51.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt ; 2 uses
  store i8 %i.bq, ptr %i.ca, align 1, !tbaa !161, !noalias !17973
  %i.cb = icmp sgt i64 %i.bt, 0
  br i1 %i.cb, label %bb.s, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.s:                                             ; preds = %.noexc51.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %.sroa.060.1106.i, i64 %i.bt, i1 false), !noalias !17973
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.s, %.noexc51.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.060.1106.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.1106.i, i64 noundef %i.bt) #44, !noalias !17973
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.p
  %.sroa.060.3.i = phi ptr [ %i.bz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.060.1106.i, %bb.p ] ; 2 uses
  %.pn72.i = phi ptr [ %i.ca, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.1107.i, %bb.p ]
  %.sroa.13.3.i = phi ptr [ %i.cc, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.1108.i, %bb.p ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn72.i, i64 1 ; 2 uses
  %i.cd = add i64 %.019109.i, 1                   ; 2 uses
  %.val36.i = load ptr, ptr %i.v, align 8, !tbaa !835, !noalias !17973 ; 3 uses
  %.val37.i = load ptr, ptr %i.w, align 8, !tbaa !834, !noalias !17973 ; 2 uses
  %i.ce = ptrtoint ptr %.val37.i to i64
  %i.cf = ptrtoint ptr %.val36.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24
  %.not27.i = icmp eq i64 %i.cd, %i.ch
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17967

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.o, %bb.m, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %.noexc4.i.i, %.noexc.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge121.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i
  %i.cj = phi ptr [ %i.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.val35.i = phi ptr [ %.val35.pre.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %.val35164.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.val34.i = phi ptr [ %.val34.pre.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %.val34161.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.060.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %.sroa.060.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge121_crit_edge.i ], [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = ptrtoint ptr %.val35.i to i64
  %i.cn = ptrtoint ptr %.val34.i to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !17973
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !384, !alias.scope !17973
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cs = mul i64 %i.cp, %.024.lcssa.i            ; 5 uses
  %i.ct = icmp slt i64 %i.cs, 0
  br i1 %i.ct, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge121.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc52.i unwind label %bb.u, !noalias !17973

.noexc52.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge121.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false), !alias.scope !17973
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #47
          to label %.noexc53.i unwind label %bb.u, !noalias !17973 ; 4 uses

.noexc53.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !385, !alias.scope !17973
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !386, !alias.scope !17973
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cu, i8 0, i64 %i.cs, i1 false), !noalias !17973
  br label %bb.v

bb.v:                                             ; preds = %.noexc53.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cx = phi ptr [ %i.cu, %.noexc53.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.noexc53.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cz, align 8, !tbaa !387, !alias.scope !17973
  %.not133.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not133.i, label %._crit_edge136.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.v
  %.val32125.pre.i = load ptr, ptr %i.ck, align 8, !tbaa !835, !noalias !17973 ; 6 uses
  %.val33126.pre.i = load ptr, ptr %i.cl, align 8, !tbaa !834, !noalias !17973 ; 3 uses
  %i.da = ptrtoint ptr %.val33126.pre.i to i64
  %i.db = ptrtoint ptr %.val32125.pre.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dd, 4
  %min.iters.check149 = icmp ult i64 %i.dd, 32
  %i.de = and i64 %i.dd, 28
  %n.vec = and i64 %i.dd, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  %n.vec151 = and i64 %i.dd, -4                   ; 4 uses
  %cmp.n156 = icmp eq i64 %i.dd, %n.vec151
  %xtraiter = and i64 %i.dd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge131.i, %.preheader.preheader.i
  %.val32125.i = phi ptr [ %.val32125165.i, %._crit_edge131.i ], [ %.val32125.pre.i, %.preheader.preheader.i ]
  %.018135.i = phi i64 [ %i.ej, %._crit_edge131.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.058.0134.i = phi ptr [ %.sroa.058.1.lcssa.i, %._crit_edge131.i ], [ %.sroa.060.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25127.i = icmp eq ptr %.val33126.pre.i, %.val32125.i
  br i1 %.not25127.i, label %._crit_edge131.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.058.0134.i148 = ptrtoaddr ptr %.sroa.058.0134.i to i64
  %i.df = mul i64 %i.cp, %.018135.i
  %i.dg = add i64 %i.df, %i.cy
  %i.dh = mul i64 %.018135.i, %i.cp
  %i.di = getelementptr i8, ptr %i.cx, i64 %i.dh  ; 7 uses
  %i.dj = sub i64 %.sroa.058.0134.i148, %i.dg
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dk = getelementptr i8, ptr %.sroa.058.0134.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.058.0134.i, i64 %index ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !17973
  %wide.load150 = load <16 x i8>, ptr %i.dl, align 1, !tbaa !161, !noalias !17973
  %i.dm = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dn = icmp ne <16 x i8> %wide.load150, zeroinitializer
  %i.do = zext <16 x i1> %i.dm to <16 x i8>
  %i.dp = zext <16 x i1> %i.dn to <16 x i8>
  %i.dq = getelementptr i8, ptr %i.di, i64 %index ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  store <16 x i8> %i.do, ptr %i.dq, align 1, !tbaa !161, !noalias !17973
  store <16 x i8> %i.dp, ptr %i.dr, align 1, !tbaa !161, !noalias !17973
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !17968

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge131.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dt = getelementptr i8, ptr %.sroa.058.0134.i, i64 %n.vec151 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep153 = getelementptr i8, ptr %.sroa.058.0134.i, i64 %index152
  %wide.load154 = load <4 x i8>, ptr %next.gep153, align 1, !tbaa !161, !noalias !17973
  %i.du = icmp ne <4 x i8> %wide.load154, zeroinitializer
  %i.dv = zext <4 x i1> %i.du to <4 x i8>
  %i.dw = getelementptr i8, ptr %i.di, i64 %index152
  store <4 x i8> %i.dv, ptr %i.dw, align 1, !tbaa !161, !noalias !17973
  %index.next155 = add nuw i64 %index152, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n156, label %._crit_edge131.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0129.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec151, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.058.1128.i.ph = phi ptr [ %.sroa.058.0134.i, %iter.check ], [ %i.dk, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0129.i.prol = phi i64 [ %i.ed, %vec.epilog.scalar.ph.prol ], [ %.0129.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.058.1128.i.prol = phi ptr [ %i.dy, %vec.epilog.scalar.ph.prol ], [ %.sroa.058.1128.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.058.1128.i.prol, i64 1 ; 3 uses
  %i.dz = load i8, ptr %.sroa.058.1128.i.prol, align 1, !tbaa !161, !noalias !17973
  %i.ea = icmp ne i8 %i.dz, 0
  %i.eb = zext i1 %i.ea to i8
  %i.ec = getelementptr i8, ptr %i.di, i64 %.0129.i.prol
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !161, !noalias !17973
  %i.ed = add i64 %.0129.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17970

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dy, %vec.epilog.scalar.ph.prol ]
  %.0129.i.unr = phi i64 [ %.0129.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ed, %vec.epilog.scalar.ph.prol ]
  %.sroa.058.1128.i.unr = phi ptr [ %.sroa.058.1128.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dy, %vec.epilog.scalar.ph.prol ]
  %i.ee = sub nsw i64 %.0129.i.ph, %i.dd
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge131.i, label %vec.epilog.scalar.ph

._crit_edge136.i:                                 ; preds = %._crit_edge131.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !17973
  %.not.i.i.i.i = icmp eq ptr %.sroa.060.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS8_EEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIS8_Lb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge136.i
  %i.eg = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eh = ptrtoint ptr %.sroa.060.0.lcssa.i to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0.lcssa.i, i64 noundef %i.ei) #44, !noalias !17973
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS8_EEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIS8_Lb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit

._crit_edge131.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.val32125165.i = phi ptr [ %.val33126.pre.i, %.preheader.i ], [ %.val32125.pre.i, %middle.block ], [ %.val32125.pre.i, %vec.epilog.middle.block ], [ %.val32125.pre.i, %vec.epilog.scalar.ph ], [ %.val32125.pre.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.058.1.lcssa.i = phi ptr [ %.sroa.058.0134.i, %.preheader.i ], [ %i.dk, %middle.block ], [ %i.dt, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fb, %vec.epilog.scalar.ph ]
  %i.ej = add nuw i64 %.018135.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.ej, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge136.i, label %.preheader.i, !llvm.loop !17971

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0129.i = phi i64 [ %i.fh, %vec.epilog.scalar.ph ], [ %.0129.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.058.1128.i = phi ptr [ %i.fb, %vec.epilog.scalar.ph ], [ %.sroa.058.1128.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.058.1128.i, i64 1
  %i.el = load i8, ptr %.sroa.058.1128.i, align 1, !tbaa !161, !noalias !17973
  %i.em = icmp ne i8 %i.el, 0
  %i.en = zext i1 %i.em to i8
  %i.eo = getelementptr i8, ptr %i.di, i64 %.0129.i
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !161, !noalias !17973
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.058.1128.i, i64 2
  %i.eq = load i8, ptr %i.ek, align 1, !tbaa !161, !noalias !17973
  %i.er = icmp ne i8 %i.eq, 0
  %i.es = zext i1 %i.er to i8
  %i.et = getelementptr i8, ptr %i.di, i64 %.0129.i
  %i.eu = getelementptr i8, ptr %i.et, i64 1
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !161, !noalias !17973
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.058.1128.i, i64 3
  %i.ew = load i8, ptr %i.ep, align 1, !tbaa !161, !noalias !17973
  %i.ex = icmp ne i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = getelementptr i8, ptr %i.di, i64 %.0129.i
  %i.fa = getelementptr i8, ptr %i.ez, i64 2
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !161, !noalias !17973
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.058.1128.i, i64 4 ; 2 uses
  %i.fc = load i8, ptr %i.ev, align 1, !tbaa !161, !noalias !17973
  %i.fd = icmp ne i8 %i.fc, 0
  %i.fe = zext i1 %i.fd to i8
  %i.ff = getelementptr i8, ptr %i.di, i64 %.0129.i
  %i.fg = getelementptr i8, ptr %i.ff, i64 3
  store i8 %i.fe, ptr %i.fg, align 1, !tbaa !161, !noalias !17973
  %i.fh = add i64 %.0129.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fh, %i.dd
  br i1 %.not25.i.3, label %._crit_edge131.i, label %vec.epilog.scalar.ph, !llvm.loop !17972

.body.i:                                          ; preds = %bb.u, %.loopexit.split-lp.i, %.loopexit.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %.sroa.060.2.i = phi ptr [ %.sroa.060.1106.i, %bb.n ], [ %.sroa.060.0115.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %.sroa.060.0.lcssa.i, %bb.u ], [ %.sroa.060.1106.i, %.loopexit.i ], [ %.sroa.060.1106.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1108.i, %bb.n ], [ %.sroa.13.0117.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %.sroa.13.0.lcssa.i, %bb.u ], [ %.sroa.13.1108.i, %.loopexit.i ], [ %.sroa.13.1108.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %i.ci, %bb.u ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !17973
  %.not.i.i.i55.i = icmp eq ptr %.sroa.060.2.i, null
  br i1 %.not.i.i.i55.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS8_EEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIS8_Lb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.w, %._crit_edge136.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fj = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS8_EEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIS8_Lb0ELb0EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SL_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPNS_19MatchResultListenerE.exit
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fk = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fl = phi i1 [ false, %bb.x ], [ %i.fk, %bb.y ]
  %i.fm = load ptr, ptr %i.cr, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !386
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.fs = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.ft = load ptr, ptr %i.cj, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fs, %i.ft
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fs, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !161
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.fz, %i.ft
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.ga = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fs, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !163
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #44
end_hunk_12
begin_hunk_13_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ESaIlEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18122
  br label %bb.n

bb.m:                                             ; preds = %.noexc39.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !18122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18122
  br label %.body.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !260, !noalias !18122
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !262, !noalias !18122
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !18122, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.n
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bu, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !18122
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bv = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bw = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %bb.q, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !18122

.noexc43.i:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.bz = add i64 %.sroa.speculated.i.i.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bx
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 9223372036854775807)
  %i.cc = select i1 %i.ca, i64 9223372036854775807, i64 %i.cb ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !18122 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx ; 2 uses
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !161, !noalias !18122
  %i.cf = icmp sgt i64 %i.bx, 0
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %.sroa.053.197.i, i64 %i.bx, i1 false), !noalias !18122
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bx) #44, !noalias !18122
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.o
  %.sroa.053.3.i = phi ptr [ %i.cd, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.o ] ; 2 uses
  %.pn65.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.o ]
  %.sroa.13.3.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.o ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ch = add i64 %.019100.i, 1                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !420, !noalias !18122 ; 2 uses
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !419, !noalias !18122 ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %.not27.i = icmp eq i64 %i.ch, %i.cn
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18116

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.l, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.noexc4.i.i, %.noexc.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.au, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !18122
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !18122
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.t, !noalias !18122

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !18122
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.t, !noalias !18122 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !18122
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !18122
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !18122
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !18122
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !420, !noalias !18122 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !419, !noalias !18122 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !18122
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !18122
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !18122
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !18122
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !18117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !18122
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !18122
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !18122
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !18122
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !18119

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18122
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !18122
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !18120

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !18122
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !18122
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !18122
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !18122
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !18122
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !18122
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !18122
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !18122
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !18121

.body.i:                                          ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.m ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.t ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.m ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.t ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.co, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18122
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ESaIlEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJEE14const_iteratorEEENS0_11MatchMatrixET_SJ_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_13
begin_hunk_14_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18274
  br label %bb.n

bb.m:                                             ; preds = %.noexc39.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !18274
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18274
  br label %.body.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !260, !noalias !18274
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !262, !noalias !18274
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !18274, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.n
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bu, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !18274
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bv = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bw = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %bb.q, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !18274

.noexc43.i:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.bz = add i64 %.sroa.speculated.i.i.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bx
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 9223372036854775807)
  %i.cc = select i1 %i.ca, i64 9223372036854775807, i64 %i.cb ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !18274 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx ; 2 uses
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !161, !noalias !18274
  %i.cf = icmp sgt i64 %i.bx, 0
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %.sroa.053.197.i, i64 %i.bx, i1 false), !noalias !18274
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bx) #44, !noalias !18274
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.o
  %.sroa.053.3.i = phi ptr [ %i.cd, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.o ] ; 2 uses
  %.pn65.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.o ]
  %.sroa.13.3.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.o ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ch = add i64 %.019100.i, 1                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !420, !noalias !18274 ; 2 uses
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !419, !noalias !18274 ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %.not27.i = icmp eq i64 %i.ch, %i.cn
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18268

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.l, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.noexc4.i.i, %.noexc.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.au, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !18274
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !18274
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.t, !noalias !18274

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !18274
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.t, !noalias !18274 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !18274
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !18274
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !18274
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !18274
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !420, !noalias !18274 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !419, !noalias !18274 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !18274
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !18274
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !18274
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !18274
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !18269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !18274
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !18274
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !18274
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !18274
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !18271

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18274
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !18274
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !18272

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !18274
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !18274
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !18274
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !18274
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !18274
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !18274
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !18274
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !18274
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !18273

.body.i:                                          ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.m ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.t ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.m ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.t ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.co, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18274
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb1ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb1ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_14
begin_hunk_15_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18426
  br label %bb.n

bb.m:                                             ; preds = %.noexc39.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !18426
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18426
  br label %.body.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !260, !noalias !18426
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !262, !noalias !18426
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !18426, !inline_history !15

_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.n
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bu, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !18426
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit.i
  %i.bv = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bw = ptrtoint ptr %.sroa.053.197.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %bb.q, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !18426

.noexc43.i:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.bz = add i64 %.sroa.speculated.i.i.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bx
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 9223372036854775807)
  %i.cc = select i1 %i.ca, i64 9223372036854775807, i64 %i.cb ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !18426 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx ; 2 uses
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !161, !noalias !18426
  %i.cf = icmp sgt i64 %i.bx, 0
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %.sroa.053.197.i, i64 %i.bx, i1 false), !noalias !18426
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.bx) #44, !noalias !18426
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.o
  %.sroa.053.3.i = phi ptr [ %i.cd, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.o ] ; 2 uses
  %.pn65.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.o ]
  %.sroa.13.3.i = phi ptr [ %i.cg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.o ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ch = add i64 %.019100.i, 1                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !420, !noalias !18426 ; 2 uses
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !419, !noalias !18426 ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %.not27.i = icmp eq i64 %i.ch, %i.cn
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18420

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.l, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.noexc4.i.i, %.noexc.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.au, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !18426
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !18426
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.t, !noalias !18426

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !18426
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.t, !noalias !18426 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !18426
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !18426
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !18426
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !18426
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !420, !noalias !18426 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !419, !noalias !18426 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !18426
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !18426
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !18426
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !18426
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !18421

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !18426
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !18426
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18422

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !18426
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !18426
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !18423

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18426
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !18426
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !18424

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !18426
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !18426
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !18426
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !18426
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !18426
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !18426
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !18426
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !18426
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !18425

.body.i:                                          ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.m ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.t ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.m ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.t ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.co, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18426
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_110ValueTableIlLb0ELb1ENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEE15AnalyzeElementsINS4_12raw_hash_setINS5_11ValuePolicyIlLb0ELb1EEEJNS3_13hash_internal4HashIlEESt8equal_toIlES8_EE14const_iteratorEEENS0_11MatchMatrixET_SP_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_126AlignOneTest_AlignOne_TestINS2_10ValueTableIhLb0ELb0ESaIhEEEE8TestBodyEv:bb.a
bb.ce:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i, %bb.cd
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev.exit: ; preds = %.loopexit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void

bb.cf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit163, %bb.bo, %bb.av
  %.pn64.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.av ], [ %.pn60.pn.pn, %bb.bo ], [ %.pn64.pn.pn, %_ZN7testing7MessageD2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2IlEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load ptr, ptr %5, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %3, align 8, !tbaa !166
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit:           ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !160    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !161
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr %5, align 8, !tbaa !170    ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIlEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !160    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !161
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.o, %bb.e ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !170    ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit12, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit12

_ZN7testing7MessageD2Ev.exit12:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.2764, align 8           ; 4 uses
  %.val3.i = load i64, ptr %0, align 8            ; 4 uses
  %i.a = and i64 %.val3.i, 255                    ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.a         ; 4 uses
  %i.b = add nsw i64 %notmask.i.i.i.i, 511        ; 2 uses
  %i.c = or i64 %i.b, %notmask.i.i.i.i
  %i.d = icmp eq i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %notmask.i.i.i.i, -513
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.val3.i, 254
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %.val3.i, 33685504
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr %0, ptr %1, align 8, !tbaa !888
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.pre.i = load i64, ptr %0, align 8      ; 2 uses
  %.pre.i = and i64 %.val2.i.pre.i, 255
  %.pre5.i = shl nsw i64 -1, %.pre.i              ; 2 uses
  %.pre6.i = add nsw i64 %.pre5.i, 511
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i: ; preds = %.noexc, %bb.c
  %.pre-phi7.i = phi i64 [ %i.b, %bb.c ], [ %.pre6.i, %.noexc ]
  %notmask.i.i.i.i.pre-phi.i = phi i64 [ %notmask.i.i.i.i, %bb.c ], [ %.pre5.i, %.noexc ] ; 3 uses
  %.val2.i.i = phi i64 [ %.val3.i, %bb.c ], [ %.val2.i.pre.i, %.noexc ]
  %i.j = or i64 %notmask.i.i.i.i.pre-phi.i, %.pre-phi7.i
  %i.k = icmp eq i64 %i.j, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i, -513
  call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %.val2.i.i, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !161
  %i.n = xor i64 %notmask.i.i.i.i.pre-phi.i, -1
  %i.o = icmp ne i64 %i.m, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %i.o)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !21332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21333

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21334

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !21335

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !21336

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val52 = load i8, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i8 %.val52 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !241

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !241

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15MatchAndExplainESF_PNS_19MatchResultListenerE:bb.a
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.n, !noalias !21911 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc39.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !21911
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !21911
  br label %bb.o

bb.n:                                             ; preds = %.noexc39.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !21911
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !21911
  br label %.body.i

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !926, !noalias !21911
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !946, !noalias !21911
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(5) %.val32.val.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !21911, !inline_history !128

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.o
  %i.bv = zext i1 %i.bu to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bv, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !21911
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i
  %i.bw = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bx = ptrtoint ptr %.sroa.053.197.i to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 8 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775807
  br i1 %i.bz, label %bb.r, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !21911

.noexc43.i:                                       ; preds = %bb.r
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i.i.i.i, %i.by ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.by
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !21911 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.by ; 2 uses
  store i8 %i.bv, ptr %i.cf, align 1, !tbaa !161, !noalias !21911
  %i.cg = icmp sgt i64 %i.by, 0
  br i1 %i.cg, label %bb.s, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.s:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %.sroa.053.197.i, i64 %i.by, i1 false), !noalias !21911
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.s, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.by) #44, !noalias !21911
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.p
  %.sroa.053.3.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.p ] ; 2 uses
  %.pn65.i = phi ptr [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.p ]
  %.sroa.13.3.i = phi ptr [ %i.ch, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.p ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ci = add i64 %.019100.i, 1                   ; 2 uses
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !931, !noalias !21911 ; 2 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !933, !noalias !21911 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 24
  %.not27.i = icmp eq i64 %i.ci, %i.co
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21905

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.o, %bb.m, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !21911
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !21911
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.i, !noalias !21911

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !21911
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.i, !noalias !21911 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !21911
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !21911
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !21911
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !21911
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !931, !noalias !21911 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !933, !noalias !21911 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !21911
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !21911
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !21911
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !21911
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !21906

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !21911
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !21911
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !21911
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !21911
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !21908

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !21911
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17NodeHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !21911
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17NodeHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !21909

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !21911
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !21911
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !21911
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !21911
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !21911
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !21911
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !21911
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !21911
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !21910

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.n ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.i ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.n ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.i ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.am, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !21911
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17NodeHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17NodeHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_17
begin_hunk_18_@_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613flat_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15MatchAndExplainESF_PNS_19MatchResultListenerE:bb.a
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.n, !noalias !22046 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc39.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !22046
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !22046
  br label %bb.o

bb.n:                                             ; preds = %.noexc39.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43, !noalias !22046
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !22046
  br label %.body.i

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc38.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !926, !noalias !22046
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !946, !noalias !22046
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.6.0108.i, ptr noundef nonnull %4)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i unwind label %.loopexit.i, !noalias !22046, !inline_history !128

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i: ; preds = %bb.o
  %i.bv = zext i1 %i.bu to i8                     ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.9.198.i, %.sroa.13.199.i
  br i1 %.not.i.i41.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i
  store i8 %i.bv, ptr %.sroa.9.198.i, align 1, !tbaa !161, !noalias !22046
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit.i
  %i.bw = ptrtoint ptr %.sroa.13.199.i to i64
  %i.bx = ptrtoint ptr %.sroa.053.197.i to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 8 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775807
  br i1 %i.bz, label %bb.r, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc43.i unwind label %.loopexit.split-lp.i, !noalias !22046

.noexc43.i:                                       ; preds = %bb.r
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i.i.i.i, %i.by ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.by
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i.i.i42.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42.i)
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #47
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !22046 ; 4 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.by ; 2 uses
  store i8 %i.bv, ptr %i.cf, align 1, !tbaa !161, !noalias !22046
  %i.cg = icmp sgt i64 %i.by, 0
  br i1 %i.cg, label %bb.s, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.s:                                             ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %.sroa.053.197.i, i64 %i.by, i1 false), !noalias !22046
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.s, %.noexc44.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.053.197.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.197.i, i64 noundef %i.by) #44, !noalias !22046
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.p
  %.sroa.053.3.i = phi ptr [ %i.ce, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.053.197.i, %bb.p ] ; 2 uses
  %.pn65.i = phi ptr [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.198.i, %bb.p ]
  %.sroa.13.3.i = phi ptr [ %i.ch, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.199.i, %bb.p ] ; 2 uses
  %.sroa.9.2.i = getelementptr inbounds nuw i8, ptr %.pn65.i, i64 1 ; 2 uses
  %i.ci = add i64 %.019100.i, 1                   ; 2 uses
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !931, !noalias !22046 ; 2 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !933, !noalias !22046 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 24
  %.not27.i = icmp eq i64 %i.ci, %i.co
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22040

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.o, %bb.m, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge111.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i
  %i.cp = phi ptr [ %i.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cq = phi ptr [ %.pre150.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.av, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.cr = phi ptr [ %.pre148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.053.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.053.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 5 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %.sroa.13.1.lcssa.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge111_crit_edge.i ], [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13test_internal23CopyableMovableInstanceEEEJNS1_12_GLOBAL__N_119InstanceTrackerHashEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  store i64 %.024.lcssa.i, ptr %7, align 8, !tbaa !383, !alias.scope !22046
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !384, !alias.scope !22046
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.da = mul i64 %i.cx, %.024.lcssa.i            ; 5 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.noexc.i.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge111.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.404) #45
          to label %.noexc45.i unwind label %bb.i, !noalias !22046

.noexc45.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false), !alias.scope !22046
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #47
          to label %.noexc46.i unwind label %bb.i, !noalias !22046 ; 4 uses

.noexc46.i:                                       ; preds = %.noexc4.i.i
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !385, !alias.scope !22046
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !386, !alias.scope !22046
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false), !noalias !22046
  br label %bb.u

bb.u:                                             ; preds = %.noexc46.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.df = phi ptr [ %i.dc, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.noexc46.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !387, !alias.scope !22046
  %.not121.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not121.i, label %._crit_edge124.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  %.pre151.i = load ptr, ptr %i.ct, align 8, !tbaa !931, !noalias !22046 ; 6 uses
  %.pre152.i = load ptr, ptr %i.cs, align 8, !tbaa !933, !noalias !22046 ; 3 uses
  %i.di = ptrtoint ptr %.pre151.i to i64
  %i.dj = ptrtoint ptr %.pre152.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %min.iters.check167 = icmp ult i64 %i.dl, 32
  %i.dm = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec169 = and i64 %i.dl, -4                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.dl, %n.vec169
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge119.i, %.preheader.preheader.i
  %i.dn = phi ptr [ %i.es, %._crit_edge119.i ], [ %.pre151.i, %.preheader.preheader.i ]
  %.018123.i = phi i64 [ %i.et, %._crit_edge119.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %.sroa.051.0122.i = phi ptr [ %.sroa.051.1.lcssa.i, %._crit_edge119.i ], [ %.sroa.053.0.lcssa.i, %.preheader.preheader.i ] ; 7 uses
  %.not25115.i = icmp eq ptr %i.dn, %.pre152.i
  br i1 %.not25115.i, label %._crit_edge119.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %.sroa.051.0122.i166 = ptrtoaddr ptr %.sroa.051.0122.i to i64
  %i.do = mul i64 %i.cx, %.018123.i
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = mul i64 %.018123.i, %i.cx
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq  ; 7 uses
  %i.ds = sub i64 %.sroa.051.0122.i166, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !161, !noalias !22046
  %wide.load168 = load <16 x i8>, ptr %i.du, align 1, !tbaa !161, !noalias !22046
  %i.dv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.dw = icmp ne <16 x i8> %wide.load168, zeroinitializer
  %i.dx = zext <16 x i1> %i.dv to <16 x i8>
  %i.dy = zext <16 x i1> %i.dw to <16 x i8>
  %i.dz = getelementptr i8, ptr %i.dr, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !161, !noalias !22046
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !161, !noalias !22046
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !22041

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ec = getelementptr i8, ptr %.sroa.051.0122.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.051.0122.i, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %next.gep171, align 1, !tbaa !161, !noalias !22046
  %i.ed = icmp ne <4 x i8> %wide.load172, zeroinitializer
  %i.ee = zext <4 x i1> %i.ed to <4 x i8>
  %i.ef = getelementptr i8, ptr %i.dr, i64 %index170
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !161, !noalias !22046
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22042

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge119.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0117.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec169, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.051.1116.i.ph = phi ptr [ %.sroa.051.0122.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0117.i.prol = phi i64 [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.051.1116.i.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i.prol, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.051.1116.i.prol, align 1, !tbaa !161, !noalias !22046
  %i.ej = icmp ne i8 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dr, i64 %.0117.i.prol
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !161, !noalias !22046
  %i.em = add i64 %.0117.i.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22043

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.0117.i.unr = phi i64 [ %.0117.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.sroa.051.1116.i.unr = phi ptr [ %.sroa.051.1116.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.en = sub nsw i64 %.0117.i.ph, %i.dl
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge119.i, label %vec.epilog.scalar.ph

._crit_edge124.i:                                 ; preds = %._crit_edge119.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !22046
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613flat_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17FlatHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge124.i
  %i.ep = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.eq = ptrtoint ptr %.sroa.053.0.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa.i, i64 noundef %i.er) #44, !noalias !22046
  br label %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613flat_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17FlatHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit

._crit_edge119.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.es = phi ptr [ %.pre152.i, %.preheader.i ], [ %.pre151.i, %middle.block ], [ %.pre151.i, %vec.epilog.middle.block ], [ %.pre151.i, %vec.epilog.scalar.ph ], [ %.pre151.i, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.051.1.lcssa.i = phi ptr [ %.sroa.051.0122.i, %.preheader.i ], [ %i.dt, %middle.block ], [ %i.ec, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fl, %vec.epilog.scalar.ph ]
  %i.et = add nuw i64 %.018123.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.et, %.024.lcssa.i
  br i1 %.not.i, label %._crit_edge124.i, label %.preheader.i, !llvm.loop !22044

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0117.i = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.0117.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.051.1116.i = phi ptr [ %i.fl, %vec.epilog.scalar.ph ], [ %.sroa.051.1116.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 1
  %i.ev = load i8, ptr %.sroa.051.1116.i, align 1, !tbaa !161, !noalias !22046
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.0117.i
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !161, !noalias !22046
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 2
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !161, !noalias !22046
  %i.fb = icmp ne i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !161, !noalias !22046
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 3
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !161, !noalias !22046
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !161, !noalias !22046
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.051.1116.i, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.ff, align 1, !tbaa !161, !noalias !22046
  %i.fn = icmp ne i8 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.dr, i64 %.0117.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 3
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !161, !noalias !22046
  %i.fr = add i64 %.0117.i, 4                     ; 2 uses
  %.not25.i.3 = icmp eq i64 %i.fr, %i.dl
  br i1 %.not25.i.3, label %._crit_edge119.i, label %vec.epilog.scalar.ph, !llvm.loop !22045

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.i
  %.sroa.053.2.i = phi ptr [ %.sroa.053.197.i, %bb.n ], [ %.sroa.053.0105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.053.0.lcssa.i, %bb.i ], [ %.sroa.053.197.i, %.loopexit.i ], [ %.sroa.053.197.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.199.i, %bb.n ], [ %.sroa.13.0107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.13.0.lcssa.i, %bb.i ], [ %.sroa.13.199.i, %.loopexit.i ], [ %.sroa.13.199.i, %.loopexit.split-lp.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %i.am, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !22046
  %.not.i.i.i48.i = icmp eq ptr %.sroa.053.2.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %.body.sink.split

_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613flat_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17FlatHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit: ; preds = %bb.v, %._crit_edge124.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052613flat_hash_setINS3_13test_internal23CopyableMovableInstanceENS3_18container_internal12_GLOBAL__N_119InstanceTrackerHashESt8equal_toIS6_ESaIS6_EEEE15AnalyzeElementsINS7_12raw_hash_setINS7_17FlatHashSetPolicyIS6_EEJS9_EE14const_iteratorEEENS0_11MatchMatrixET_SO_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPNS_19MatchResultListenerE.exit
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = phi i1 [ false, %bb.w ], [ %i.fu, %bb.x ]
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !385 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i13, label %_ZN7testing8internal11MatchMatrixD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !386
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #44
  br label %_ZN7testing8internal11MatchMatrixD2Ev.exit

_ZN7testing8internal11MatchMatrixD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.gc = load ptr, ptr %6, align 8, !tbaa !155   ; 3 uses
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZN7testing8internal11MatchMatrixD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !161
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.gj, %i.gd
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal11MatchMatrixD2Ev.exit
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %_ZN7testing8internal11MatchMatrixD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !163
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #44
end_hunk_18
