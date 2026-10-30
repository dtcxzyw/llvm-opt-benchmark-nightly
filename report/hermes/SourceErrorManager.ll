Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SourceErrorManager?download=true
inline.NumInlined: 1564
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsE:bb.a
bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bn = ashr exact i64 %i.bl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951)
  %i.br = select i1 %i.bp, i64 2305843009213693951, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #23 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 %i.bi, ptr %i.bu, align 4, !tbaa !6
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %.sroa.0.1210, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.1210, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1210, i64 noundef %i.bl) #25
  %.pre260.pre = load ptr, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %.pre260 = phi ptr [ %.pre260.pre, %bb.r ], [ %.pre260266, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.pre260267 = phi ptr [ %.pre260, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.pre260266, %bb.n ]
  %i.bx = phi ptr [ %.pre260, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.be, %bb.n ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.bt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0.1210, %bb.n ] ; 2 uses
  %.pn = phi ptr [ %i.bu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.9.1211, %bb.n ]
  %.sroa.15.2 = phi ptr [ %i.bw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1212, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.by = icmp ult ptr %i.bf, %i.bx
  br i1 %i.by, label %.lr.ph, label %.loopexit194, !llvm.loop !248

._crit_edge.loopexit:                             ; preds = %.loopexit194
  %i.bz = ptrtoint ptr %.sroa.9.1.lcssa to i64
  %i.ca = ptrtoint ptr %.sroa.15.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %._crit_edge.loopexit, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %.sroa.0.1.lcssa, %._crit_edge.loopexit ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ] ; 6 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.bz, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %.sroa.15.0.lcssa.a = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.ca, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !163 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !100
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.cg = sub i64 %.sroa.9.0.lcssa, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 3 uses
  %i.ci = icmp ugt i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ce
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !6
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

bb.t:                                             ; preds = %._crit_edge
  %i.cl = trunc i64 %i.cb to i32
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit": ; preds = %bb.s, %bb.t
  %i.cm = phi i32 [ %i.ck, %bb.s ], [ %i.cl, %bb.t ] ; 5 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !259 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !260 ; 2 uses
  %.not62224 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not62224, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %i.cs = trunc i64 %i.cb to i32                  ; 2 uses
  br label %bb.u

._crit_edge230.loopexit:                          ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %i.ct = ptrtoint ptr %.sroa.13.1 to i64
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %.sroa.0161.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.0161.1, %._crit_edge230.loopexit ] ; 6 uses
  %.sroa.8.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.8.1, %._crit_edge230.loopexit ] ; 3 uses
  %.sroa.13.0.lcssa = phi i64 [ 0, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %i.ct, %._crit_edge230.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cu = add i64 %i.cb, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cv, ptr %6, align 8, !tbaa !108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cu, i8 noundef signext 32) #24
  %.not190234 = icmp eq ptr %.sroa.0161.0.lcssa, %.sroa.8.0.lcssa ; 2 uses
  br i1 %.not190234, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %._crit_edge230
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.pre262 = load i64, ptr %i.cw, align 8, !tbaa !84
  br label %bb.ae

bb.u:                                             ; preds = %.lr.ph229, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %.052228 = phi ptr [ %i.cp, %.lr.ph229 ], [ %i.ec, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 3 uses
  %.sroa.13.0227 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.13.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 5 uses
  %.sroa.8.0226 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.8.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.0161.0225 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.0161.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 6 uses
  %i.cx = load i32, ptr %.052228, align 4, !tbaa !262
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i64 %i.ch, %i.cy
  br i1 %i.cz, label %bb.v, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !6
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75": ; preds = %bb.u, %bb.v
  %i.dc = phi i32 [ %i.db, %bb.v ], [ %i.cs, %bb.u ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.052228, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !263
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp ugt i64 %i.ch, %i.df
  br i1 %i.dg, label %bb.w, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

bb.w:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !6
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76": ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75", %bb.w
  %i.dj = phi i32 [ %i.di, %bb.w ], [ %i.cs, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75" ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.8.0226, %.sroa.13.0227
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  store i32 %i.dc, ptr %.sroa.8.0226, align 4, !tbaa !262
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.8.0226, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !263
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

bb.y:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  %i.dl = ptrtoint ptr %.sroa.13.0227 to i64
  %i.dm = ptrtoint ptr %.sroa.0161.0225 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.z, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i.a = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.a)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i32 %i.dc, ptr %i.dw, align 4, !tbaa !262
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dj, ptr %i.dx, align 4, !tbaa !263
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0161.0225, %.sroa.13.0227
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.dv, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0161.0225, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !265
  store i64 %i.dy, ptr %.012.i.i.i.i.i, align 4, !alias.scope !264
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, %.sroa.13.0227
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dv, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ea, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.0161.0225, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0225, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, %bb.aa
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.0161.1 = phi ptr [ %i.dv, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0161.0225, %bb.x ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.8.0226, %bb.x ]
  %.sroa.13.1 = phi ptr [ %i.eb, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0227, %bb.x ] ; 2 uses
  %.sroa.8.1 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.052228, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.ec, %i.cr
  br i1 %.not62, label %._crit_edge230.loopexit, label %bb.u

._crit_edge238:                                   ; preds = %_ZSt4fillIPccEvT_S1_RKT0_.exit, %._crit_edge230
  %.sroa.speculated139 = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cn)
  %i.ed = load ptr, ptr %6, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.speculated139
  store i8 94, ptr %i.ee, align 1, !tbaa !107
  %i.ef = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 32, i64 noundef -1) #24
  %i.eg = add i64 %i.ef, 1                        ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !84 ; 2 uses
  %i.ej = icmp ugt i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.ab:                                            ; preds = %._crit_edge238
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %i.eg, i64 noundef %i.ei) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %._crit_edge238
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !84
  %i.ek = load ptr, ptr %6, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eg
  store i8 0, ptr %i.el, align 1, !tbaa !107
  %i.em = load i64, ptr %i.f, align 8, !tbaa !163 ; 4 uses
  %.not191 = icmp eq i64 %i.em, 0
  br i1 %.not191, label %.preheader, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.en = load ptr, ptr %4, align 8, !tbaa !166   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.ac
  %.0915.i.i = phi i64 [ %i.er, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.0915.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !165
  %i.eq = icmp eq i32 %i.ep, 9
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.er = add nuw i64 %.0915.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.em
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, label %.lr.ph.i.i, !llvm.loop !253

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.0915.i.i
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit
  %i.et = phi ptr [ %i.es, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit ], [ null, %bb.ad ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.et, null
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.en to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 2
  %.0.i78 = select i1 %.not.i77, i64 -1, i64 %i.ex ; 2 uses
  %i.ey = icmp ult i64 %.0.i78, %i.em
  br i1 %i.ey, label %.lr.ph244, label %.preheader

bb.ae:                                            ; preds = %.lr.ph237, %_ZSt4fillIPccEvT_S1_RKT0_.exit
  %i.ez = phi i64 [ %.pre262, %.lr.ph237 ], [ %i.fi, %_ZSt4fillIPccEvT_S1_RKT0_.exit ] ; 4 uses
  %.sroa.0151.0235 = phi ptr [ %.sroa.0161.0.lcssa, %.lr.ph237 ], [ %i.fj, %_ZSt4fillIPccEvT_S1_RKT0_.exit ] ; 3 uses
  %i.fa = load i32, ptr %.sroa.0151.0235, align 4, !tbaa !262 ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 3 uses
  %i.fc = icmp ugt i64 %i.ez, %i.fb
  br i1 %i.fc, label %bb.af, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0151.0235, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !263 ; 2 uses
  %.not.i.i.i80 = icmp eq i32 %i.fe, %i.fa
  br i1 %.not.i.i.i80, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = zext i32 %i.fe to i64
  %.sroa.speculated145 = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.ff)
  %i.fg = load ptr, ptr %6, align 8, !tbaa !83
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fb
  %gepdiff = sub nsw i64 %.sroa.speculated145, %i.fb
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fh, i8 126, i64 %gepdiff, i1 false)
  %.pre261 = load i64, ptr %i.cw, align 8, !tbaa !84
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %bb.ag, %bb.af, %bb.ae
  %i.fi = phi i64 [ %.pre261, %bb.ag ], [ %i.ez, %bb.af ], [ %i.ez, %bb.ae ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0151.0235, i64 8 ; 2 uses
  %.not190 = icmp eq ptr %i.fj, %.sroa.8.0.lcssa
  br i1 %.not190, label %._crit_edge238, label %bb.ae

.preheader:                                       ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit
  %.lcssa196 = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %i.fu, %bb.ah ]
  br i1 %.not190234, label %.loopexit, label %.lr.ph248

.lr.ph244:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89
  %.058243 = phi i64 [ %.0.i87, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %.0.i78, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ] ; 6 uses
  %i.fk = and i64 %.058243, 7
  %i.fl = sub nuw nsw i64 8, %i.fk                ; 3 uses
  %i.fm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7replaceEmmmDi(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.058243, i64 noundef 1, i64 noundef %i.fl, i32 noundef zeroext 32) ; 0 uses
  %i.fn = load i64, ptr %i.eh, align 8, !tbaa !84
  %i.fo = icmp ult i64 %.058243, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit: ; preds = %.lr.ph244
  %i.fp = load ptr, ptr %6, align 8, !tbaa !83
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.058243
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !107
  %i.fs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.058243, i64 noundef 1, i64 noundef %i.fl, i8 noundef signext %i.fr) #24 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, %.lr.ph244
  %i.ft = add nsw i64 %i.fl, %.058243             ; 3 uses
  %i.fu = load i64, ptr %i.f, align 8, !tbaa !163 ; 5 uses
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.fw = load ptr, ptr %4, align 8, !tbaa !166   ; 2 uses
  %i.fx = sub nuw i64 %i.fu, %i.ft
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.ft ; 2 uses
  br label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %bb.aj, %bb.ai
  %.0915.i.i83 = phi i64 [ %i.gc, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.0915.i.i83
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !165
  %i.gb = icmp eq i32 %i.ga, 9
  br i1 %i.gb, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i82
  %i.gc = add nuw i64 %.0915.i.i83, 1             ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %i.gc, %i.fx
  br i1 %exitcond.not.i.i84, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89, label %.lr.ph.i.i82, !llvm.loop !253

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit: ; preds = %.lr.ph.i.i82
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.0915.i.i83
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit
  %i.ge = phi ptr [ %i.gd, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit ], [ null, %bb.aj ] ; 2 uses
  %.not.i86 = icmp eq ptr %i.ge, null
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.fw to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2
  %.0.i87 = select i1 %.not.i86, i64 -1, i64 %i.gi ; 2 uses
  %i.gj = icmp ult i64 %.0.i87, %i.fu
  br i1 %i.gj, label %.lr.ph244, label %.preheader, !llvm.loop !254

.lr.ph248:                                        ; preds = %.preheader, %bb.am
  %.sroa.0135.0247 = phi ptr [ %i.gp, %bb.am ], [ %.sroa.0161.0.lcssa, %.preheader ] ; 3 uses
  %i.gk = load i32, ptr %.sroa.0135.0247, align 4, !tbaa !262 ; 3 uses
  %.not63 = icmp ugt i32 %i.gk, %i.cm
  br i1 %.not63, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph248
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0135.0247, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !263 ; 2 uses
  %i.gn = icmp ult i32 %i.cm, %i.gm
  br i1 %i.gn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.go = sub nuw i32 %i.gm, %i.gk
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak, %.lr.ph248
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0135.0247, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.gp, %.sroa.8.0.lcssa
  br i1 %.not192, label %.loopexit, label %.lr.ph248

.loopexit:                                        ; preds = %bb.am, %.preheader, %bb.al
  %.257 = phi i32 [ %i.gk, %bb.al ], [ %i.cm, %.preheader ], [ %i.cm, %bb.am ]
  %.2 = phi i32 [ %i.go, %bb.al ], [ 1, %.preheader ], [ 1, %bb.am ] ; 2 uses
  %i.gq = sext i32 %.2 to i64
  %i.gr = add nsw i64 %i.gq, 16
  %.sroa.speculated126 = call i64 @llvm.umax.i64(i64 %3, i64 %i.gr) ; 8 uses
  %i.gs = icmp ugt i64 %.lcssa196, %.sroa.speculated126
  br i1 %i.gs, label %bb.an, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPDiNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEcEvT_SA_RKT0_.exit102

bb.an:                                            ; preds = %.loopexit
  %i.gt = sdiv i32 %.2, 2
  %i.gu = add nsw i32 %i.gt, %.257
  %i.gv = lshr i64 %.sroa.speculated126, 1
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = sub i32 %i.gu, %i.gw                    ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit92: ; preds = %bb.an
  %i.gz = zext nneg i32 %i.gx to i64              ; 3 uses
  %i.ha = load i64, ptr %i.eh, align 8, !tbaa !84
  %spec.select.i.i91 = call noundef i64 @llvm.umin.i64(i64 %i.gz, i64 %i.ha)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %spec.select.i.i91) #24
  %i.hb = load i64, ptr %i.f, align 8, !tbaa !163 ; 6 uses
  %spec.select.i.i93 = call noundef i64 @llvm.umin.i64(i64 %i.gz, i64 %i.hb) ; 3 uses
  %i.hc = icmp ugt i64 %i.hb, %i.gz
  %.pre12.i.i = load ptr, ptr %4, align 8, !tbaa !166 ; 6 uses
  br i1 %i.hc, label %bb.ao, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPDiNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEcEvT_SA_RKT0_.exit

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit92
end_hunk_0
begin_hunk_1_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_":bb.a
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !107
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !83
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !84
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !84
  %i.cd = load i64, ptr %i.bq, align 8, !tbaa !107
  store i64 %i.cd, ptr %i.bn, align 8, !tbaa !107
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ce = load i64, ptr %i.bn, align 8, !tbaa !107
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !83
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !84
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !84
  %i.ci = load i64, ptr %i.bq, align 8, !tbaa !107
  store i64 %i.ci, ptr %i.bn, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.bq, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.cj = phi ptr [ %i.bm, %bb.g ], [ %i.bq, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.ck, align 8, !tbaa !84
  store i8 0, ptr %i.cj, align 1, !tbaa !107
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8
  store i64 %i.cn, ptr %i.cl, align 8
  %i.co = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cp = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !325

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 32, i1 false)
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !83  ; 6 uses
  %i.cr = icmp eq ptr %i.cq, %i.j
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !83  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.f                 ; 2 uses
  %.pre26 = load i64, ptr %i.g, align 8, !tbaa !84 ; 5 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.cu = icmp ult i64 %.pre26, 16
  call void @llvm.assume(i1 %i.cu)
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.j, !prof !152

bb.j:                                             ; preds = %bb.i
  switch i64 %.pre26, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !107
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cs, i64 %.pre26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !84  ; 2 uses
  store i64 %i.cw, ptr %i.c, align 8, !tbaa !84
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !107
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !83
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !84
  %i.cz = load i64, ptr %i.f, align 8, !tbaa !107
  store i64 %i.cz, ptr %i.j, align 8, !tbaa !107
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.da = load i64, ptr %i.j, align 8, !tbaa !107
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !83
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !84
  %i.db = load i64, ptr %i.f, align 8, !tbaa !107
  store i64 %i.db, ptr %i.j, align 8, !tbaa !107
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !83
  store i64 %i.da, ptr %i.f, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.f, ptr %i.e, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.m, %bb.n
  %i.dc = phi ptr [ %i.cq, %bb.m ], [ %i.f, %bb.n ], [ %i.cs, %bb.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.dc, align 1, !tbaa !107
  %i.dd = load i64, ptr %i.h, align 8
  store i64 %i.dd, ptr %i.k, align 8
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.f
  br i1 %i.df, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !107
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.025)
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !326

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_"(ptr %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 11 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !108
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !84   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !83
  %i.k = load i64, ptr %i.e, align 8, !tbaa !107
  store i64 %i.k, ptr %i.c, align 8, !tbaa !107
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !84
  store ptr %i.e, ptr %i.b, align 8, !tbaa !83
  store i64 0, ptr %i.m, align 8, !tbaa !84
  store i8 0, ptr %i.e, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  %i.s = phi i64 [ %i.l, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit ], [ %.pre21, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ] ; 3 uses
  %.sroa.015.0 = phi ptr [ %0, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit ], [ %.sroa.0.0, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ] ; 22 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -72 ; 3 uses
  %i.t = load i32, ptr %1, align 8, !tbaa !116
  %i.u = icmp eq i32 %i.t, 0
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %or.cond.not15.i.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = icmp eq i64 %i.s, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.x, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.z = load i128, ptr %i.y, align 1
  %i.aa = xor i128 %i.z, 43134731028289254705102659877621165940
  %i.ab = getelementptr i8, ptr %i.y, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 133449583543812656632503265877593235577
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.c
  %i.ai = load i32, ptr %.sroa.0.0, align 8, !tbaa !116
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %or.cond7.not17.i.i = select i1 %i.aj, i1 %i.am, i1 false
  %i.an = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -32 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 23
  %or.cond13.i.i = select i1 %or.cond7.not17.i.i, i1 %i.ap, i1 false
  br i1 %or.cond13.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %i.aq = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %i.as = load i128, ptr %i.ar, align 1
  %i.at = xor i128 %i.as, 43134731028289254705102659877621165940
  %i.au = getelementptr i8, ptr %i.ar, i64 7
  %i.av = load i128, ptr %i.au, align 1
  %i.aw = xor i128 %i.av, 133449583543812656632503265877593235577
  %i.ax = or i128 %i.at, %i.aw
  %i.ay = icmp ne i128 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %.old = icmp ult ptr %i.v, %i.al
  br i1 %.old, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -40 ; 4 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !83 ; 5 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -24 ; 6 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh                ; 2 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bj = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.ao, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !107
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !84
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !107
  %.pre.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !83
  store i64 %i.ao, ptr %i.bp, align 8, !tbaa !84
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !107
  store i64 %i.bq, ptr %i.be, align 8, !tbaa !107
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = load i64, ptr %i.be, align 8, !tbaa !107
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.ao, ptr %i.bs, align 8, !tbaa !84
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !107
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !107
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !83
  store i64 %i.br, ptr %i.bh, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g, %bb.h
  %i.bu = phi ptr [ %i.bd, %bb.g ], [ %i.bh, %bb.h ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.an, align 8, !tbaa !84
  store i8 0, ptr %i.bu, align 1, !tbaa !107
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.bw = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  %.pre21 = load i64, ptr %i.n, align 8
  br label %bb.c, !llvm.loop !327

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  %.lcssa = phi i64 [ %i.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i ], [ 23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ], [ %i.s, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit" ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !83  ; 6 uses
  %i.cd = icmp eq ptr %i.cc, %i.c                 ; 2 uses
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %.thread.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ce = icmp ult i64 %.lcssa, 16
  call void @llvm.assume(i1 %i.ce)
  %.not21.i.i.i5 = icmp eq ptr %1, %.sroa.015.0
  br i1 %.not21.i.i.i5, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, label %bb.j, !prof !152

bb.j:                                             ; preds = %bb.i
  switch i64 %.lcssa, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !107
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.cc, i64 %.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6: ; preds = %bb.l, %bb.k, %bb.j
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !84  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !84
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !107
  %.pre.i.i.i7 = load ptr, ptr %i.a, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

.thread.i.i.i9:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !83
  store i64 %.lcssa, ptr %i.ck, align 8, !tbaa !84
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !107
  store i64 %i.cl, ptr %i.ca, align 8, !tbaa !107
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2
  %i.cm = load i64, ptr %i.ca, align 8, !tbaa !107
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %.lcssa, ptr %i.cn, align 8, !tbaa !84
  %i.co = load i64, ptr %i.c, align 8, !tbaa !107
  store i64 %i.co, ptr %i.ca, align 8, !tbaa !107
  %.not.i.i.i4 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !83
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3, %.thread.i.i.i9
  store ptr %i.c, ptr %i.a, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6, %bb.m, %bb.n
  %i.cp = phi ptr [ %i.bz, %bb.m ], [ %i.c, %bb.n ], [ %i.cc, %bb.i ], [ %.pre.i.i.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6 ]
  store i64 0, ptr %i.n, align 8, !tbaa !84
  store i8 0, ptr %i.cp, align 1, !tbaa !107
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.cr = load i64, ptr %i.o, align 8
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.c
  br i1 %i.ct, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !107
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !111
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !117
  store i32 %i.r, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.s, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load <2 x ptr>, ptr %4, align 8, !tbaa !117
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !108
  %i.x = load ptr, ptr %5, align 8, !tbaa !83     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !84 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.x, ptr %i.v, align 8, !tbaa !83
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !107
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !107
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !84
  store ptr %i.y, ptr %5, align 8, !tbaa !83
  store i64 0, ptr %i.ag, align 8, !tbaa !84
  store i8 0, ptr %i.y, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !119
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 32, i1 false), !alias.scope !337
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !108, !alias.scope !335
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !83, !alias.scope !336 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !84, !alias.scope !336 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !337
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !83, !alias.scope !335
  %i.at = load i64, ptr %i.an, align 8, !tbaa !107, !alias.scope !336
  store i64 %i.at, ptr %i.al, align 8, !tbaa !107, !alias.scope !335
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !84, !alias.scope !336
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.au = phi i64 [ %i.aq, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !84, !alias.scope !335
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !83, !alias.scope !336
  store i64 0, ptr %i.av, align 8, !tbaa !84, !alias.scope !336
  store i8 0, ptr %i.an, align 8, !tbaa !107, !alias.scope !336
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !336
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !335
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !331

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26
  %.012.i.i.i21 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %i.bc, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i22 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %1, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i22, i64 32, i1 false), !alias.scope !340
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 48 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !108, !alias.scope !338
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !83, !alias.scope !339 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 48 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23

bb.e:                                             ; preds = %.lr.ph.i.i.i20
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84, !alias.scope !339 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23: ; preds = %.lr.ph.i.i.i20
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !83, !alias.scope !338
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !107, !alias.scope !339
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !107, !alias.scope !338
  %.phi.trans.insert.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %.pre.i.i.i.i25 = load i64, ptr %.phi.trans.insert.i.i.i.i24, align 8, !tbaa !84, !alias.scope !339
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23, %bb.e
end_hunk_1
