Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder9BuildFileERKNS0_19FileDescriptorProtoE:bb.a
bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cf = load i8, ptr %i.by, align 1, !tbaa !22
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !23
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.cl, ptr %i.aa, align 8, !tbaa !104
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %bb.m
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !554 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !554
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.y, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !818 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -32 ; 2 uses
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !20 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !22
  %i.dd = add i64 %i.dc, 1
  tail call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #41
  %.pre141 = load ptr, ptr %i.q, align 8, !tbaa !818
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

bb.r:                                             ; preds = %.lr.ph65, %bb.y
  %i.de = phi i32 [ %i.cn, %.lr.ph65 ], [ %i.ep, %bb.y ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.df = sext i32 %i.de to i64
  %.not58 = icmp slt i64 %indvars.iv, %i.df
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = sub nsw i32 %i.dg, %i.de
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !557
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = add i64 %i.dj, -1
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = zext nneg i32 %i.dh to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %.0.i.i.i.i.i = select i1 %i.dl, ptr %i.ct, ptr %i.dq
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %i.cu, align 8, !tbaa !557
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 1
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = add i64 %i.ds, -1
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv
  %.0.i.i.i.i.i76 = select i1 %i.du, ptr %i.cu, ptr %i.dy
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.in = phi ptr [ %.0.i.i.i.i.i, %bb.s ], [ %.0.i.i.i.i.i76, %bb.t ]
  %i.dz = load ptr, ptr %.in, align 8, !tbaa !323 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !23 ; 3 uses
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !818
  %i.ee = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ed, i64 %i.ec, ptr %i.ea)
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.eg = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !264 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool14FindFileByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ei, i64 %i.ec, ptr %i.ea)
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %._crit_edge67, label %bb.y

._crit_edge67:                                    ; preds = %bb.w
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge67, %bb.v
  %i.em = phi ptr [ %.pre, %._crit_edge67 ], [ %i.eg, %bb.v ]
  %i.en = load ptr, ptr %i.cs, align 8, !tbaa !1166, !nonnull !51, !align !644
  %i.eo = tail call noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool29TryFindFileInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %i.em, i64 %i.ec, ptr %i.ea, ptr noundef nonnull align 8 dereferenceable(736) %i.en) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = load i32, ptr %i.cm, align 8, !tbaa !554 ; 2 uses
  %i.eq = load i32, ptr %i.co, align 8, !tbaa !554
  %i.er = add nsw i32 %i.eq, %i.ep
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.r, label %._crit_edge, !llvm.loop !1167

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l, %bb.k
  %i.eu = phi ptr [ %.pre141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.cv, %._crit_edge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !114
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 328 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !116 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 336
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.ew, %i.ey
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 176
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 152
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 344
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 368
  %i.fd = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !117 ; 2 uses
  %i.fe = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !118 ; 2 uses
  %i.ff = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !119 ; 2 uses
  %i.fg = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !120 ; 2 uses
  %i.fh = shufflevector <2 x ptr> %i.fd, <2 x ptr> %i.fe, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x ptr> %i.ff, <2 x ptr> %i.fg, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.fj = shufflevector <4 x ptr> %i.fh, <4 x ptr> %i.fi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = ptrtoint <4 x ptr> %i.fj to <4 x i64>
  %i.fl = shufflevector <2 x ptr> %i.fd, <2 x ptr> %i.fe, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fm = shufflevector <2 x ptr> %i.ff, <2 x ptr> %i.fg, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.fn = shufflevector <4 x ptr> %i.fl, <4 x ptr> %i.fm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fo = ptrtoint <4 x ptr> %i.fn to <4 x i64>
  %i.fp = sub <4 x i64> %i.fk, %i.fo
  %i.fq = lshr exact <4 x i64> %i.fp, splat (i64 3)
  %i.fr = trunc <4 x i64> %i.fq to <4 x i32>
  store <4 x i32> %i.fr, ptr %i.ew, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eu, i64 392
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 400
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !121
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !56
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = lshr exact i64 %i.fz, 4
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr %i.fs, align 4, !tbaa !122
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  store ptr %i.gc, ptr %i.ev, align 8, !tbaa !116
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eu, i64 320
  call void @_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ge = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #45, !noalias !1168 ; 41 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ge, i8 0, i64 224, i1 false), !noalias !1168
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 112 ; 12 uses
  store i32 184, ptr %i.gf, align 8, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 124 ; 2 uses
  store i32 1, ptr %i.gg, align 4, !tbaa !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 116 ; 2 uses
  store i32 2, ptr %i.gh, align 4, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !3  ; 2 uses
  %i.gk = and i32 %i.gj, 2048
  %.not.i80 = icmp eq i32 %i.gk, 0
  br i1 %.not.i80, label %bb.ab, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISK_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISK_EEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 164
  store i32 1, ptr %i.gl, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISK_EEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.gm = and i32 %i.gj, 4096
  %.not62.i = icmp eq i32 %i.gm, 0
  br i1 %.not62.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_17ServiceDescriptorEEEvi.exit.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS9_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS9_EEvi.exit.i: ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 120
  store i32 1, ptr %i.gn, align 8, !tbaa !3
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_17ServiceDescriptorEEEvi.exit.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_17ServiceDescriptorEEEvi.exit.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS9_EEvi.exit.i, %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.gp = load ptr, ptr %i.bc, align 8, !tbaa !276
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = and i64 %i.gq, -4
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !23 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !554 ; 3 uses
  %i.gx = shl i32 %i.gw, 6
  %i.gy = add i32 %i.gx, 184                      ; 3 uses
  store i32 %i.gy, ptr %i.gf, align 8, !tbaa !3
  %i.gz = load ptr, ptr %i.go, align 8, !tbaa !557
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = and i64 %i.ha, 1
  %i.hc = icmp eq i64 %i.hb, 0
  %i.hd = add i64 %i.ha, -1
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = select i1 %i.hc, ptr %i.go, ptr %i.hf   ; 3 uses
  %i.hh = sext i32 %i.gw to i64
  %.idx.i.i = shl nsw i64 %i.hh, 3
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i ; 2 uses
  %.not2527.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not2527.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_17ServiceDescriptorEEEvi.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 156 ; 2 uses
  %.not.i45.i = icmp eq i64 %i.gu, 0
  %i.hk = add i64 %i.gu, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ge, i64 160 ; 2 uses
  br i1 %.not.i45.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i
  %i.hm = phi i32 [ %i.ju, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.hn = phi i32 [ %i.hu, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.022.028.us.i.i = phi ptr [ %i.jw, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i ], [ %i.hg, %.lr.ph.i.i ] ; 2 uses
  %i.ho = phi i32 [ %i.jv, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i ], [ %i.gy, %.lr.ph.i.i ]
  %i.hp = load ptr, ptr %.sroa.022.028.us.i.i, align 8, !tbaa !323 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = and i32 %i.hr, 4
  %.not26.us.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not26.us.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.us.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.ht = add nsw i32 %i.hn, 1                    ; 2 uses
  store i32 %i.ht, ptr %i.hj, align 4, !tbaa !3
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.hu = phi i32 [ %i.ht, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.us.i.i ], [ %i.hn, %.lr.ph.split.us.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !276
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = and i64 %i.hx, -4
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !23 ; 2 uses
  %i.ic = trunc i64 %i.ib to i32
  %i.id = add i32 %i.ic, 12
  %i.ie = and i32 %i.id, -8
  %i.if = add i32 %i.ie, %i.ho                    ; 2 uses
  store i32 %i.if, ptr %i.gf, align 8, !tbaa !3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !554
  %i.ij = mul i32 %i.ii, 80
  %i.ik = add i32 %i.if, %i.ij                    ; 3 uses
  store i32 %i.ik, ptr %i.gf, align 8, !tbaa !3
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !557
  %i.im = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.in = and i64 %i.im, 1
  %i.io = icmp eq i64 %i.in, 0
  %i.ip = add i64 %i.im, -1
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = select i1 %i.io, ptr %i.ig, ptr %i.ir   ; 2 uses
  %i.it = load i32, ptr %i.ih, align 8, !tbaa !554 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %.idx.i.us.i.i = shl nsw i64 %i.iu, 3
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 %.idx.i.us.i.i
  %.not16.i.us.i.i = icmp eq i32 %i.it, 0
  br i1 %.not16.i.us.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i
  %i.iw = add i64 %i.ib, 1
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i: ; preds = %bb.ac, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i
  %i.ix = phi i32 [ %i.hm, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i ], [ %i.jr, %bb.ac ]
  %i.iy = phi i32 [ %i.hm, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i ], [ %i.js, %bb.ac ] ; 2 uses
  %.sroa.012.017.i.us.i.i = phi ptr [ %i.is, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i ], [ %i.jt, %bb.ac ] ; 2 uses
  %i.iz = phi i32 [ %i.ik, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.us.i.i ], [ %i.jm, %bb.ac ]
  %i.ja = load ptr, ptr %.sroa.012.017.i.us.i.i, align 8, !tbaa !323 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !276
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = and i64 %i.jd, -4
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !23
  %i.ji = add i64 %i.iw, %i.jh
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = add i32 %i.jj, 12
  %i.jl = and i32 %i.jk, -8
  %i.jm = add i32 %i.jl, %i.iz                    ; 3 uses
  store i32 %i.jm, ptr %i.gf, align 8, !tbaa !3
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !3
  %i.jp = and i32 %i.jo, 8
  %.not15.i.us.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not15.i.us.i.i, label %bb.ac, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.us.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.us.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i
  %i.jq = add nsw i32 %i.iy, 1                    ; 3 uses
  store i32 %i.jq, ptr %i.hl, align 8, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.us.i.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i
  %i.jr = phi i32 [ %i.jq, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.us.i.i ], [ %i.ix, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i ] ; 2 uses
  %i.js = phi i32 [ %i.jq, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.us.i.i ], [ %i.iy, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.us.i.i, i64 8 ; 2 uses
  %.not.i21.us.i.i = icmp eq ptr %i.jt, %i.iv
  br i1 %.not.i21.us.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.us.i.i

_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i: ; preds = %bb.ac, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i
  %i.ju = phi i32 [ %i.hm, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i ], [ %i.jr, %bb.ac ]
  %i.jv = phi i32 [ %i.ik, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.us.i.i ], [ %i.jm, %bb.ac ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.022.028.us.i.i, i64 8 ; 2 uses
  %.not25.us.i.i = icmp eq ptr %i.jw, %i.hi
  br i1 %.not25.us.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i
  %i.jx = phi i32 [ %i.mg, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.jy = phi i32 [ %i.kf, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.022.028.i.i = phi ptr [ %i.mi, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i ], [ %i.hg, %.lr.ph.i.i ] ; 2 uses
  %i.jz = phi i32 [ %i.mh, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i ], [ %i.gy, %.lr.ph.i.i ]
  %i.ka = load ptr, ptr %.sroa.022.028.i.i, align 8, !tbaa !323 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = and i32 %i.kc, 4
  %.not26.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not26.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.i.i: ; preds = %.lr.ph.split.i.i
  %i.ke = add nsw i32 %i.jy, 1                    ; 2 uses
  store i32 %i.ke, ptr %i.hj, align 4, !tbaa !3
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.i.i, %.lr.ph.split.i.i
  %i.kf = phi i32 [ %i.ke, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISI_EEvi.exit.i.i ], [ %i.jy, %.lr.ph.split.i.i ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !276
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = and i64 %i.ki, -4
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !23
  %i.kn = add i64 %i.hk, %i.km                    ; 2 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = add i32 %i.ko, 12
  %i.kq = and i32 %i.kp, -8
  %i.kr = add i32 %i.kq, %i.jz                    ; 2 uses
  store i32 %i.kr, ptr %i.gf, align 8, !tbaa !3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !554
  %i.kv = mul i32 %i.ku, 80
  %i.kw = add i32 %i.kr, %i.kv                    ; 3 uses
  store i32 %i.kw, ptr %i.gf, align 8, !tbaa !3
  %i.kx = load ptr, ptr %i.ks, align 8, !tbaa !557
  %i.ky = ptrtoint ptr %i.kx to i64               ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = icmp eq i64 %i.kz, 0
  %i.lb = add i64 %i.ky, -1
  %i.lc = inttoptr i64 %i.lb to ptr
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = select i1 %i.la, ptr %i.ks, ptr %i.ld   ; 2 uses
  %i.lf = load i32, ptr %i.kt, align 8, !tbaa !554 ; 2 uses
  %i.lg = sext i32 %i.lf to i64
  %.idx.i.i.i = shl nsw i64 %i.lg, 3
  %i.lh = getelementptr inbounds i8, ptr %i.le, i64 %.idx.i.i.i
  %.not16.i.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not16.i.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i
  %i.li = add i64 %i.kn, 1
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i: ; preds = %bb.ad, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i
  %i.lj = phi i32 [ %i.jx, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i ], [ %i.md, %bb.ad ]
  %i.lk = phi i32 [ %i.jx, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i ], [ %i.me, %bb.ad ] ; 2 uses
  %.sroa.012.017.i.i.i = phi ptr [ %i.le, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i ], [ %i.mf, %bb.ad ] ; 2 uses
  %i.ll = phi i32 [ %i.kw, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.lr.ph.i.i.i ], [ %i.ly, %bb.ad ]
  %i.lm = load ptr, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !323 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !276
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = and i64 %i.lp, -4
  %i.lr = inttoptr i64 %i.lq to ptr
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !23
  %i.lu = add i64 %i.li, %i.lt
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = add i32 %i.lv, 12
  %i.lx = and i32 %i.lw, -8
  %i.ly = add i32 %i.lx, %i.ll                    ; 3 uses
  store i32 %i.ly, ptr %i.gf, align 8, !tbaa !3
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !3
  %i.mb = and i32 %i.ma, 8
  %.not15.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %.not15.i.i.i, label %bb.ad, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i
  %i.mc = add nsw i32 %i.lk, 1                    ; 3 uses
  store i32 %i.mc, ptr %i.hl, align 8, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.i.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i
  %i.md = phi i32 [ %i.mc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.i.i ], [ %i.lj, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i ] ; 2 uses
  %i.me = phi i32 [ %i.mc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISJ_EEvi.exit.i.i.i ], [ %i.lk, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.mf, %i.lh
  br i1 %.not.i21.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i.i.i

_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i: ; preds = %bb.ad, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i
  %i.mg = phi i32 [ %i.jx, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i ], [ %i.md, %bb.ad ]
  %i.mh = phi i32 [ %i.kw, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_16MethodDescriptorEEEvi.exit.i.i.i ], [ %i.ly, %bb.ad ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i.i, i64 8 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.mi, %i.hi
  br i1 %.not25.i.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i, label %.lr.ph.split.i.i

_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i: ; preds = %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i.i, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.us.i.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_17ServiceDescriptorEEEvi.exit.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_15DescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mj, i64 noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(224) %i.ge)
          to label %.noexc81 unwind label %bb.bm

.noexc81:                                         ; preds = %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ml = load ptr, ptr %i.bc, align 8, !tbaa !276
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = and i64 %i.mm, -4
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !23
  invoke fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mk, i64 noundef %i.mq, ptr noundef nonnull align 8 dereferenceable(224) %i.ge)
          to label %.noexc82 unwind label %bb.bm

.noexc82:                                         ; preds = %.noexc81
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ms = load ptr, ptr %i.bc, align 8, !tbaa !276
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = and i64 %i.mt, -4
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !23
  invoke fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mr, i64 noundef %i.mx, ptr noundef nonnull align 8 dereferenceable(224) %i.ge)
          to label %.noexc83 unwind label %bb.bm

.noexc83:                                         ; preds = %.noexc82
  %.val.i46.i = load ptr, ptr %i.ge, align 8, !tbaa !270
  %.not.i47.i = icmp eq ptr %.val.i46.i, null
  br i1 %.not.i47.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISt17basic_string_viewIcS6_EEEvi.exit.i, label %bb.ae, !prof !322

bb.ae:                                            ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
          to label %.noexc84 unwind label %bb.bm

.noexc84:                                         ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i48.i unwind label %bb.af

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i48.i: ; preds = %.noexc84
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #42
  unreachable

bb.af:                                            ; preds = %.noexc84
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISt17basic_string_viewIcS6_EEEvi.exit.i: ; preds = %.noexc83
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !566
  %i.nb = shl i32 %i.na, 2
  %i.nc = add i32 %i.nb, 4
  %i.nd = and i32 %i.nc, -8
  %i.ne = load i32, ptr %i.gf, align 8, !tbaa !3
  %i.nf = add i32 %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !566
  %i.ni = shl i32 %i.nh, 2
  %i.nj = add i32 %i.ni, 4
  %i.nk = and i32 %i.nj, -8
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !554
  %i.nn = shl i32 %i.nm, 3
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.np = load i32, ptr %i.no, align 8, !tbaa !554 ; 5 uses
  %i.nq = shl i32 %i.np, 4
  %i.nr = add i32 %i.nf, %i.nn
  %i.ns = add i32 %i.nr, %i.nk                    ; 2 uses
  %i.nt = add i32 %i.ns, %i.nq                    ; 3 uses
  store i32 %i.nt, ptr %i.gf, align 8, !tbaa !3
  %i.nu = icmp sgt i32 %i.np, 0
  br i1 %i.nu, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISt17basic_string_viewIcS6_EEEvi.exit.i
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !557
  %.fr69.i = freeze ptr %i.nw                     ; 2 uses
  %i.nx = ptrtoint ptr %.fr69.i to i64            ; 2 uses
  %i.ny = and i64 %i.nx, 1
  %i.nz = icmp eq i64 %i.ny, 0
  %i.oa = add i64 %i.nx, -1
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 5 uses
  br i1 %i.nz, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.split.us.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.i
  %i.od = zext nneg i32 %i.np to i64              ; 2 uses
  %xtraiter = and i64 %i.od, 3                    ; 3 uses
  %i.oe = icmp ult i32 %i.np, 4
  br i1 %i.oe, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader
  %unroll_iter = and i64 %i.od, 2147483644
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.split.us.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.lr.ph.i
  %i.of = getelementptr inbounds nuw i8, ptr %.fr69.i, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !23
  %i.oh = trunc i64 %i.og to i32
  %i.oi = add i32 %i.oh, 7
  %i.oj = and i32 %i.oi, -8
  %i.ok = add i32 %i.oj, 16
  %i.ol = mul i32 %i.ok, %i.np
  %i.om = add i32 %i.ns, %i.ol
  br label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new
  %i.on = phi i32 [ %i.nt, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new ], [ %i.pw, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new ], [ %indvars.iv.next.i.3, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader.new ], [ %niter.next.3, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ]
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !323
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !23
  %i.os = trunc i64 %i.or to i32
  %i.ot = add i32 %i.os, 7
  %i.ou = and i32 %i.ot, -8
  %i.ov = add i32 %i.ou, %i.on
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !323
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !23
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = add i32 %i.pb, 7
  %i.pd = and i32 %i.pc, -8
  %i.pe = add i32 %i.pd, %i.ov
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !323
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !23
  %i.pk = trunc i64 %i.pj to i32
  %i.pl = add i32 %i.pk, 7
  %i.pm = and i32 %i.pl, -8
  %i.pn = add i32 %i.pm, %i.pe
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !323
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !23
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = add i32 %i.pt, 7
  %i.pv = and i32 %i.pu, -8
  %i.pw = add i32 %i.pv, %i.pn                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split.loopexit.unr-lcssa, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, !llvm.loop !1171

_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split.loopexit.unr-lcssa: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader: ; preds = %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split.loopexit.unr-lcssa, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader
  %.epil.init = phi i32 [ %i.nt, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader ], [ %i.pw, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.preheader ], [ %indvars.iv.next.i.3, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE.exit.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader
  %i.px = phi i32 [ %i.qf, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil ], [ %.epil.init, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil ], [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i.epil.preheader ]
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i.epil
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !323
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !23
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = add i32 %i.qc, 7
  %i.qe = and i32 %i.qd, -8
  %i.qf = add i32 %i.qe, %i.px                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf17DescriptorBuilder10AddPackageESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageEPNS0_14FileDescriptorEb:bb.a
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.t:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.u:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !679
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.t, %bb.u
  %.0.i = phi ptr [ null, %bb.o ], [ %i.az, %bb.p ], [ %i.bb, %bb.q ], [ %i.bf, %bb.r ], [ %i.bh, %bb.s ], [ %i.bl, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.bn, %bb.t ], [ %i.br, %bb.u ]
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store ptr %12, ptr %16, align 8, !tbaa !1219
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.a, ptr %i.bs, align 8, !tbaa !120
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder10AddPackageESt17basic_string_viewIcSt11char_traitsIcEERKNS4_7MessageEPNS4_14FileDescriptorEbE3$_1NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.bt, align 8, !tbaa !1210
  store ptr %16, ptr %15, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.v

bb.v:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %bb.n, %_ZN6google8protobuf17DescriptorBuilder18ValidateSymbolNameESt17basic_string_viewIcSt11char_traitsIcEES5_RKNS0_7MessageE.exit50, %_ZN6google8protobuf17DescriptorBuilder18ValidateSymbolNameESt17basic_string_viewIcSt11char_traitsIcEES5_RKNS0_7MessageE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder18ValidateSymbolNameESt17basic_string_viewIcSt11char_traitsIcEES5_RKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %8 = alloca %class.anon.354, align 8            ; 4 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull @.str.136)
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.034 = phi ptr [ %i.j, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = load i8, ptr %.034, align 1, !tbaa !22   ; 3 uses
  %i.e = and i8 %i.d, -33
  %i.f = add i8 %i.e, -91
  %or.cond32 = icmp ult i8 %i.f, -26
  br i1 %or.cond32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.g = add i8 %i.d, -58
  %or.cond8 = icmp ult i8 %i.g, -10
  %i.h = icmp ne i8 %i.d, 95
  %or.cond11 = and i1 %i.h, %or.cond8
  br i1 %or.cond11, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %6, ptr %8, align 8, !tbaa !1219
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder18ValidateSymbolNameESt17basic_string_viewIcSt11char_traitsIcEES9_RKNS4_7MessageEE3$_0NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.i, align 8, !tbaa !1210
  store ptr %8, ptr %7, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder15AllocateOptionsERKNS0_19FileDescriptorProtoEPNS0_14FileDescriptorERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(224) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::Span", align 8 ; 3 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45 ; 4 uses
  store i32 8, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  store i64 %i.f, ptr %5, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i64 6, ptr %6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.137, ptr %i.g, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  store ptr %i.a, ptr %7, align 8, !tbaa !1311
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !1313
  store i64 27, ptr %8, align 8, !tbaa !847
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.57, ptr %i.q, align 8, !tbaa !848
  %i.r = invoke noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_14FileDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.j, ptr %i.h, i64 %i.o, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull byval(%"class.absl::lts_20250512::Span") align 8 %7, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(224) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.r, ptr %i.x, align 8, !tbaa !890
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.y, align 8, !tbaa !891
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.z, align 8, !tbaa !1306
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #41
  ret void

bb.c:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

bb.d:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.c ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_14FileDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 2048
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 176
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 220 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !1314
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 164
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISK_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISK_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [160 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf11FileOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(160) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISK_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISK_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.x

bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !535 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit, !prof !163

bb.r:                                             ; preds = %bb.q
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit

_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ca, %bb.r ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.q ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !818
  %.sroa.0.0.copyload = load i64, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.cg = call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.cf, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !186 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i61, label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK4absl12lts_202505125Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit

_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit: ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %i.co, %bb.t ], [ %.pre, %bb.u ]
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ct = icmp eq i8 %i.cs, 1
  %spec.select.i = select i1 %i.ct, ptr %i.cg, ptr null
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !559
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.cw, ptr %i.cm, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1317
  %i.db = call noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, ptr noundef %spec.select.i, i32 noundef %i.da) ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !670
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !166
  %i.de = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %.loopexit, !llvm.loop !1319

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bu, %bb.p ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.s, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit
  %.1 = phi ptr [ %i.s, %_ZNK6google8protobuf11FileOptions14unknown_fieldsEv.exit ], [ @_ZN6google8protobuf30_FileOptions_default_instance_E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN6google8protobuf30_FileOptions_default_instance_E, %bb.a ], [ %i.s, %bb.s ], [ %i.s, %.preheader ], [ %i.s, %bb.w ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder15ResolveFeaturesERKNS0_19FileDescriptorProtoEPNS0_14FileDescriptorEPNS0_11FileOptionsERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(224) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !319
  tail call void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_14FileDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(224) %4, i32 noundef 10, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_14FileDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1196, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.a, align 8, !tbaa !891
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.b, align 8, !tbaa !1306
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !820, !range !49, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = and i32 %i.i, 1024
  %.not44 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  br i1 %.not44, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.k, align 8               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !818
  %i.n = icmp eq ptr %13, null
  br i1 %i.n, label %bb.e, label %_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !535  ; 3 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = inttoptr i64 %i.p to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.v, ptr %i.k, align 8, !tbaa !22
  br label %_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit

_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.w = phi ptr [ %i.v, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.w) ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !891
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN6google8protobuf11FileOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !891
  br label %_ZN6google8protobuf11FileOptions14clear_featuresEv.exit

_ZN6google8protobuf11FileOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.x, %_ZN6google8protobuf11FileOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.z = load i32, ptr %i.h, align 8, !tbaa !3
  %i.aa = and i32 %i.z, -1025
  store i32 %i.aa, ptr %i.h, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf11FileOptions14clear_featuresEv.exit, %.critedge
  %i.ab = phi ptr [ %.pre, %_ZN6google8protobuf11FileOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
  %i.ac = icmp slt i32 %1, 1000
  br i1 %i.ac, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !891
  %.not = icmp eq ptr %i.ad, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ai, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ak = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.al = icmp ne i64 %i.ak, 0
  %or.cond = or i1 %7, %i.al
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.b, align 8, !tbaa !1306
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr %10, align 8, !tbaa !1184
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_14FileDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.at, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.as, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.v:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.w:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !818
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.az)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !1306
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.bb = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.z

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.bd) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.be = trunc i64 %i.bb to i1
  br i1 %i.be, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = inttoptr i64 %i.bb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bf)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ad:                                            ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.av, %bb.u ], [ %i.aw, %bb.v ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.au, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.aj, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder24PostProcessFieldFeaturesERNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE:bb.a
  %46 = alloca %"class.absl::lts_20250512::flat_hash_set.371", align 8 ; 14 uses
  %47 = alloca %"class.absl::lts_20250512::flat_hash_set.272", align 8 ; 13 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %48 = alloca %"struct.std::pair.373", align 8   ; 6 uses
  %49 = alloca %"class.std::vector", align 8      ; 12 uses
  %50 = alloca %"class.std::basic_string_view", align 8 ; 16 uses
  %51 = alloca %"struct.std::pair.377", align 8   ; 8 uses
  %52 = alloca %"class.google::protobuf::internal::FlatAllocator", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %53 = alloca %"class.google::protobuf::DescriptorBuilder::OptionInterpreter", align 8 ; 9 uses
  %54 = alloca %"class.google::protobuf::SymbolChecker", align 8 ; 7 uses
  %55 = alloca %"class.std::vector.417", align 8  ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.f = tail call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayINS0_14FileDescriptorEEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %2) ; 20 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1281
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = and i32 %i.i, 8192
  %.not770 = icmp eq i32 %i.j, 0
  br i1 %.not770, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.l, ptr %i.m, align 8, !tbaa !319
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !276
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -4
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  switch i64 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501.thread [
    i64 0, label %bb.d
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !20   ; 4 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1953460848
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = xor i32 %i.z, 12911
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501

bb.d:                                             ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 998, ptr %i.af, align 8, !tbaa !319
  br label %bb.g

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501.thread: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ah = load i32, ptr %i.u, align 1
  %i.ai = xor i32 %i.ah, 1953460848
  %i.aj = getelementptr i8, ptr %i.u, i64 4
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = xor i32 %i.al, 13167
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501
  store i32 999, ptr %i.ar, align 8, !tbaa !319
  br label %bb.g

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501
  %i.as = phi ptr [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501.thread ], [ %i.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit501 ]
  store i32 0, ptr %i.as, align 8, !tbaa !319
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !276
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #40
  store ptr %1, ptr %40, align 8, !tbaa !271
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder13BuildFileImplERKNS4_19FileDescriptorProtoERNS4_8internal13FlatAllocatorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.bb, align 8, !tbaa !1210
  store ptr %40, ptr %39, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ba, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 12, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %i.bc = load ptr, ptr %0, align 8, !tbaa !799
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !622 ; 2 uses
  %.not3.i = icmp eq ptr %i.be, null
  br i1 %.not3.i, label %bb.h, label %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = load atomic i8, ptr @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec acquire, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %bb.l, !prof !640

bb.i:                                             ; preds = %bb.h
  %i.bh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = invoke fastcc noundef ptr @"_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvENK3$_0clEv"()
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.bi)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i unwind label %bb.m

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i: ; preds = %bb.k
  store ptr %i.bi, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i, %bb.i, %bb.h
  %i.bj = load ptr, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  br label %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit

common.resume:                                    ; preds = %.body, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn354.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  br label %common.resume

_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit: ; preds = %bb.g, %bb.l
  %.0.i = phi ptr [ %i.bj, %bb.l ], [ %i.be, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #40
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !1281
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !319
  call void @_ZN6google8protobuf15FeatureResolver6CreateENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %41, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %.0.i)
  %i.bo = load i64, ptr %41, align 8, !tbaa !1184
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !276
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, -4
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #40
  store ptr %41, ptr %43, align 8, !tbaa !1330
  %i.by = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder13BuildFileImplERKNS4_19FileDescriptorProtoERNS4_8internal13FlatAllocatorEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.by, align 8, !tbaa !1210
  store ptr %43, ptr %42, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.bx, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 10, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %42)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #40
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #40
  br label %.body

bb.q:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt8optionalIN6google8protobuf15FeatureResolverEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(72) %i.ca) #40 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 0, ptr %i.cd, align 1, !tbaa !1307
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.ce, align 2, !tbaa !1174
  %i.cf = load i32, ptr %i.h, align 8, !tbaa !3
  %i.cg = and i32 %i.cf, 4096
  %.not771 = icmp eq i32 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 184
  br i1 %.not771, label %_ZN6google8protobuf14SourceCodeInfoaSERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i504 = icmp eq ptr %.val.i, null
  br i1 %.not.i504, label %bb.t, label %.critedge.i, !prof !163

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.t
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.u

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %.noexc
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #42
  unreachable

bb.u:                                             ; preds = %.noexc
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #42
  unreachable

.critedge.i:                                      ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !1332
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !3  ; 2 uses
  %i.cn = add i32 %i.cm, 1                        ; 3 uses
  store i32 %i.cn, ptr %i.ck, align 8, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !3  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cn, %i.cp
  br i1 %.not.i.i.i, label %bb.v, label %bb.x, !prof !163

bb.v:                                             ; preds = %.critedge.i
  %i.cq = sext i32 %i.cn to i64
  %i.cr = sext i32 %i.cp to i64
  %i.cs = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.268)
          to label %.noexc505 unwind label %bb.y

.noexc505:                                        ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.cs) #43
          to label %.noexc506 unwind label %bb.y

.noexc506:                                        ; preds = %.noexc505
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %.noexc506
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #42
  unreachable

bb.w:                                             ; preds = %.noexc506
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #42
  unreachable

bb.x:                                             ; preds = %.critedge.i
  %i.cu = sext i32 %i.cm to i64
  %i.cv = getelementptr inbounds [56 x i8], ptr %i.cl, i64 %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  %i.cx = select i1 %.not.i.i, ptr @_ZN6google8protobuf33_SourceCodeInfo_default_instance_E, ptr %i.cw
  invoke void @_ZN6google8protobuf14SourceCodeInfo8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull align 8 dereferenceable(56) %i.cx)
          to label %_ZN6google8protobuf14SourceCodeInfoaSERKS1_.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.ai, %.noexc515, %bb.ab, %bb.z, %bb.x, %.noexc505, %bb.v, %bb.t, %.invoke, %_ZSt5countIPKccENSt15iterator_traitsIT_E15difference_typeES3_S3_RKT0_.exit.thread, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, %bb.ah, %bb.af, %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6google8protobuf14SourceCodeInfoaSERKS1_.exit: ; preds = %bb.r, %bb.x
  %.sink = phi ptr [ %i.cv, %bb.x ], [ @_ZN6google8protobuf33_SourceCodeInfo_default_instance_E, %bb.r ]
  %.0282 = phi ptr [ %i.cv, %bb.x ], [ null, %bb.r ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store ptr %.sink, ptr %i.cz, align 8, !tbaa !926
  %.val.i508 = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i509 = icmp eq ptr %.val.i508, null
  br i1 %.not.i509, label %bb.z, label %.critedge.i510, !prof !163

bb.z:                                             ; preds = %_ZN6google8protobuf14SourceCodeInfoaSERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
          to label %.noexc514 unwind label %bb.y

.noexc514:                                        ; preds = %bb.z
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i513 unwind label %bb.aa

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i513: ; preds = %.noexc514
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #42
  unreachable

bb.aa:                                            ; preds = %.noexc514
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #42
  unreachable

.critedge.i510:                                   ; preds = %_ZN6google8protobuf14SourceCodeInfoaSERKS1_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !746
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3  ; 2 uses
  %i.df = add i32 %i.de, 1                        ; 3 uses
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3  ; 2 uses
  %.not.i.i.i511 = icmp sgt i32 %i.df, %i.dh
  br i1 %.not.i.i.i511, label %bb.ab, label %bb.ad, !prof !163

bb.ab:                                            ; preds = %.critedge.i510
  %i.di = sext i32 %i.df to i64
  %i.dj = sext i32 %i.dh to i64
  %i.dk = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.di, i64 noundef %i.dj, ptr noundef nonnull @.str.268)
          to label %.noexc515 unwind label %bb.y

.noexc515:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.dk) #43
          to label %.noexc516 unwind label %bb.y

.noexc516:                                        ; preds = %.noexc515
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %36)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i512 unwind label %bb.ac

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i512: ; preds = %.noexc516
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #42
  unreachable

bb.ac:                                            ; preds = %.noexc516
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #42
  unreachable

bb.ad:                                            ; preds = %.critedge.i510
  %i.dm = sext i32 %i.de to i64
  %i.dn = getelementptr inbounds [200 x i8], ptr %i.dd, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1308
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !1281
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !741
  %i.dr = load i32, ptr %i.h, align 8, !tbaa !3
  %i.ds = and i32 %i.dr, 256
  %.not772 = icmp eq i32 %i.ds, 0
  br i1 %.not772, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 0, ptr nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 12, ptr noundef nonnull @.str.140)
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 13 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !276
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = and i64 %i.dv, -4
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRKS8_EEEPSN_DpOT_(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %bb.ag unwind label %bb.y

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !167
  %i.ea = load i32, ptr %i.h, align 8, !tbaa !3
  %i.eb = and i32 %i.ea, 512
  %.not773 = icmp eq i32 %i.eb, 0
  br i1 %.not773, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !276
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, -4
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRKS8_EEEPSN_DpOT_(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.eg)
          to label %bb.aj unwind label %bb.y

bb.ai:                                            ; preds = %bb.ag
  %i.ei = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIS8_EEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %2, i32 noundef 1)
          to label %.noexc517 unwind label %bb.y  ; 4 uses

.noexc517:                                        ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  %i.ej = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 5 uses
  store ptr %i.ej, ptr %34, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i8 0, ptr %i.ej, align 8, !tbaa !22
  %.not21.i.i = icmp eq ptr %34, %i.ei
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, !prof !163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %.noexc517
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN6google8protobufL30SerializeToDeterministicStringB5cxx11ERKNS0_7MessageE:bb.a
  store i8 %i.e, ptr %i.l, align 2, !tbaa !2211
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 59
  store i8 0, ptr %i.m, align 1, !tbaa !2212
  store ptr %i.g, ptr %i.f, align 8, !tbaa !270
  %i.n = invoke noundef i64 @_ZNK6google8protobuf2io18StringOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.n, ptr %i.o, align 8, !tbaa !2213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.p = invoke noundef zeroext i1 @_ZN6google8protobuf2io18StringOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %.noexc16 unwind label %bb.i

.noexc16:                                         ; preds = %.noexc
  %i.q = load i32, ptr %i.b, align 4              ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false, !prof !322
  br i1 %i.s, label %bb.c, label %bb.d, !prof !322

bb.c:                                             ; preds = %.noexc16
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !323  ; 3 uses
  %i.u = icmp samesign ugt i32 %i.q, 16           ; 3 uses
  %i.v = zext nneg i32 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %.sink9.i.i.i = select i1 %i.u, ptr %i.x, ptr %i.y
  %.sink.i.i.i = select i1 %i.u, ptr null, ptr %i.t
  %.0.i.i.i = select i1 %i.u, ptr %i.t, ptr %i.g
  store ptr %.sink9.i.i.i, ptr %3, align 8, !tbaa !2204
  store ptr %.sink.i.i.i, ptr %i.h, align 8, !tbaa !2207
  store ptr %.0.i.i.i, ptr %i.f, align 8, !tbaa !2215
  br label %bb.d

bb.d:                                             ; preds = %.noexc16, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.l, align 2, !tbaa !2211
  %i.z = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite22SerializeToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.z, label %.critedge, label %bb.f, !prof !322

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.62, i32 noundef 6067, ptr noundef nonnull @.str.290) #43
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.l

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %.noexc, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

.critedge:                                        ; preds = %bb.e
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.af = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #26

declare void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #13

declare void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite22SerializeToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #26

declare noundef i64 @_ZNK6google8protobuf2io18StringOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

declare noundef zeroext i1 @_ZN6google8protobuf2io18StringOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_15DescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10DescriptorEEEvi.exit, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10DescriptorEEEvi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !554
  %i.d = mul i32 %i.c, 160
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 11 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = add i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = select i1 %i.k, ptr %0, ptr %i.n         ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !554  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 3
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not6063 = icmp eq i32 %i.p, 0
  br i1 %.not6063, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10DescriptorEEEvi.exit
  %.not = icmp eq i64 %1, 0
  %i.s = add i64 %1, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.x = select i1 %.not, i64 0, i64 %i.s
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit

._crit_edge:                                      ; preds = %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10DescriptorEEEvi.exit
  ret void

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit: ; preds = %.lr.ph, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit
  %i.y = phi i32 [ %i.g, %.lr.ph ], [ %i.fv, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit ]
  %.sroa.057.064 = phi ptr [ %i.o, %.lr.ph ], [ %i.fw, %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.057.064, align 8, !tbaa !323 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !276
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, -4
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ah = add i64 %i.ag, %i.x                     ; 7 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.ai, 12
  %i.ak = and i32 %i.aj, -8
  %i.al = add i32 %i.y, %i.ak
  store i32 %i.al, ptr %i.e, align 8, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3
  %i.ao = and i32 %i.an, 512
  %.not61 = icmp eq i32 %i.ao, 0
  br i1 %.not61, label %bb.d, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISC_EEvi.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISC_EEvi.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
  %i.ap = load i32, ptr %i.t, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.t, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISC_EEvi.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  tail call fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_15DescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(224) %2)
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  tail call fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(224) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  tail call fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(224) %2)
  %.val.i.i38 = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i.i39 = icmp eq ptr %.val.i.i38, null
  br i1 %.not.i.i39, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10Descriptor14ExtensionRangeEEEvi.exit.i, label %bb.e, !prof !322

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i40 unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i40: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10Descriptor14ExtensionRangeEEEvi.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !554
  %i.ay = mul i32 %i.ax, 40
  %i.az = load i32, ptr %i.e, align 8, !tbaa !3
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !3
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !557
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = add i64 %i.bc, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = select i1 %i.be, ptr %i.av, ptr %i.bh   ; 3 uses
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !554 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.idx.i = shl nsw i64 %i.bk, 3                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.bj, 0
  br i1 %.not13.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10Descriptor14ExtensionRangeEEEvi.exit.i
  %.promoted.i = load i32, ptr %i.u, align 4      ; 2 uses
  %i.bm = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1
  %xtraiter = and i64 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %bb.g
  %i.bp = phi i32 [ %i.bv, %bb.g ], [ %.promoted.i, %.lr.ph.i ] ; 2 uses
  %.sroa.010.014.i.prol = phi ptr [ %i.bw, %bb.g ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.g ], [ 0, %.lr.ph.i ]
  %i.bq = load ptr, ptr %.sroa.010.014.i.prol, align 8, !tbaa !323
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.prol, label %bb.g

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.prol: ; preds = %.prol.preheader
  %i.bu = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.u, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.prol, %.prol.preheader
  %i.bv = phi i32 [ %i.bu, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.prol ], [ %i.bp, %.prol.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2216

.prol.loopexit:                                   ; preds = %bb.g, %.lr.ph.i
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.bv, %bb.g ]
  %.sroa.010.014.i.unr = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.bw, %bb.g ]
  %i.bx = icmp ult i64 %i.bm, 24
  br i1 %i.bx, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %bb.k
  %i.by = phi i32 [ %i.cz, %bb.k ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.010.014.i = phi ptr [ %i.da, %bb.k ], [ %.sroa.010.014.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bz = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !323
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i, label %bb.h

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i: ; preds = %.lr.ph.i.new
  %i.cd = add nsw i32 %i.by, 1                    ; 2 uses
  store i32 %i.cd, ptr %i.u, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i, %.lr.ph.i.new
  %i.ce = phi i32 [ %i.cd, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i ], [ %i.by, %.lr.ph.i.new ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !323
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc i32 %i.ci to i1
  br i1 %i.cj, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.1, label %bb.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.1: ; preds = %bb.h
  %i.ck = add nsw i32 %i.ce, 1                    ; 2 uses
  store i32 %i.ck, ptr %i.u, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.1, %bb.h
  %i.cl = phi i32 [ %i.ck, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.1 ], [ %i.ce, %bb.h ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !323
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = trunc i32 %i.cp to i1
  br i1 %i.cq, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.2, label %bb.j

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.2: ; preds = %bb.i
  %i.cr = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cr, ptr %i.u, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.2, %bb.i
  %i.cs = phi i32 [ %i.cr, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.2 ], [ %i.cl, %bb.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !323
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.3, label %bb.k

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.3: ; preds = %bb.j
  %i.cy = add nsw i32 %i.cs, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.3, %bb.j
  %i.cz = phi i32 [ %i.cy, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISG_EEvi.exit.i.3 ], [ %i.cs, %bb.j ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 32 ; 2 uses
  %.not.i41.3 = icmp eq ptr %i.da, %i.bl
  br i1 %.not.i41.3, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i.new

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %.prol.loopexit, %bb.k, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10Descriptor14ExtensionRangeEEEvi.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !554
  %i.dd = shl i32 %i.dc, 3
  %i.de = add i32 %i.dd, %i.ba                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 144 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !554
  %i.dh = shl i32 %i.dg, 3
  %i.di = add i32 %i.dh, %i.de
  store i32 %i.di, ptr %i.e, align 8, !tbaa !3
  %i.dj = load i32, ptr %i.df, align 8, !tbaa !554
  %i.dk = load i32, ptr %i.v, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.v, align 4, !tbaa !3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  tail call fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(224) %2)
  %.val.i.i51 = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i.i52 = icmp eq ptr %.val.i.i51, null
  br i1 %.not.i.i52, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15OneofDescriptorEEEvi.exit.i, label %bb.l, !prof !322

bb.l:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i53 unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i53: ; preds = %bb.l
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15OneofDescriptorEEEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !554
  %i.dr = mul i32 %i.dq, 56
  %i.ds = load i32, ptr %i.e, align 8, !tbaa !3
  %i.dt = add i32 %i.ds, %i.dr                    ; 4 uses
  store i32 %i.dt, ptr %i.e, align 8, !tbaa !3
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !557
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = add i64 %i.dv, -1
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = select i1 %i.dx, ptr %i.do, ptr %i.ea   ; 3 uses
  %i.ec = load i32, ptr %i.dp, align 8, !tbaa !554 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %.idx.i54 = shl nsw i64 %i.ed, 3
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i54 ; 2 uses
  %.not1719.i = icmp eq i32 %i.ec, 0
  br i1 %.not1719.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15OneofDescriptorEEEvi.exit.i
  %.not.i56 = icmp eq i64 %i.ah, 0
  %i.ef = add i64 %i.ah, 1
  %.promoted21.i = load i32, ptr %i.w, align 8    ; 2 uses
  br i1 %.not.i56, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i: ; preds = %.lr.ph.i55, %bb.n
  %i.eg = phi i32 [ %i.ey, %bb.n ], [ %.promoted21.i, %.lr.ph.i55 ] ; 2 uses
  %.sroa.014.020.us.i = phi ptr [ %i.ez, %bb.n ], [ %i.eb, %.lr.ph.i55 ] ; 2 uses
  %i.eh = phi i32 [ %i.et, %bb.n ], [ %i.dt, %.lr.ph.i55 ]
  %i.ei = load ptr, ptr %.sroa.014.020.us.i, align 8, !tbaa !323 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !276
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = and i64 %i.el, -4
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !23
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %i.eq, 12
  %i.es = and i32 %i.er, -8
  %i.et = add i32 %i.es, %i.eh                    ; 3 uses
  store i32 %i.et, ptr %i.e, align 8, !tbaa !3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !3
  %i.ew = and i32 %i.ev, 2
  %.not18.us.i = icmp eq i32 %i.ew, 0
  br i1 %.not18.us.i, label %bb.n, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.us.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.us.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i
  %i.ex = add nsw i32 %i.eg, 1                    ; 2 uses
  store i32 %i.ex, ptr %i.w, align 8, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.us.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i
  %i.ey = phi i32 [ %i.ex, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.us.i ], [ %i.eg, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.014.020.us.i, i64 8 ; 2 uses
  %.not17.us.i = icmp eq ptr %i.ez, %i.ee
  br i1 %.not17.us.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.us.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i: ; preds = %.lr.ph.i55, %bb.o
  %i.fa = phi i32 [ %i.ft, %bb.o ], [ %.promoted21.i, %.lr.ph.i55 ] ; 2 uses
  %.sroa.014.020.i = phi ptr [ %i.fu, %bb.o ], [ %i.eb, %.lr.ph.i55 ] ; 2 uses
  %i.fb = phi i32 [ %i.fo, %bb.o ], [ %i.dt, %.lr.ph.i55 ]
  %i.fc = load ptr, ptr %.sroa.014.020.i, align 8, !tbaa !323 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !276
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = and i64 %i.ff, -4
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !23
  %i.fk = add i64 %i.ef, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = add i32 %i.fl, 12
  %i.fn = and i32 %i.fm, -8
  %i.fo = add i32 %i.fn, %i.fb                    ; 3 uses
  store i32 %i.fo, ptr %i.e, align 8, !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !3
  %i.fr = and i32 %i.fq, 2
  %.not18.i = icmp eq i32 %i.fr, 0
  br i1 %.not18.i, label %bb.o, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i
  %i.fs = add nsw i32 %i.fa, 1                    ; 2 uses
  store i32 %i.fs, ptr %i.w, align 8, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i
  %i.ft = phi i32 [ %i.fs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISH_EEvi.exit.i ], [ %i.fa, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i, i64 8 ; 2 uses
  %.not17.i = icmp eq ptr %i.fu, %i.ee
  br i1 %.not17.i, label %_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit.i

_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE.exit: ; preds = %bb.o, %bb.n, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15OneofDescriptorEEEvi.exit.i
  %i.fv = phi i32 [ %i.et, %bb.n ], [ %i.dt, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15OneofDescriptorEEEvi.exit.i ], [ %i.fo, %bb.o ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.057.064, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.fw, %i.r
  br i1 %.not60, label %._crit_edge, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_14EnumDescriptorEEEvi.exit, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_14EnumDescriptorEEEvi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !554
  %i.d = mul i32 %i.c, 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = add i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = select i1 %i.k, ptr %0, ptr %i.n         ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !554  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 3
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not3840 = icmp eq i32 %i.p, 0
  br i1 %.not3840, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_14EnumDescriptorEEEvi.exit
  %.not = icmp eq i64 %1, 0
  %i.s = add i64 %1, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  %.promoted42 = load i32, ptr %i.t, align 4
  %.promoted43 = load i32, ptr %i.u, align 4, !tbaa !3
  %.promoted44 = load i32, ptr %i.v, align 8
  %i.w = select i1 %.not, i64 0, i64 %i.s
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit

._crit_edge:                                      ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_14EnumDescriptorEEEvi.exit
  ret void

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit: ; preds = %.lr.ph, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  %i.x = phi i32 [ %.promoted44, %.lr.ph ], [ %i.co, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ] ; 4 uses
  %i.y = phi i32 [ %.promoted43, %.lr.ph ], [ %i.cy, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ]
  %i.z = phi i32 [ %.promoted42, %.lr.ph ], [ %i.as, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ] ; 2 uses
  %.sroa.035.041 = phi ptr [ %i.o, %.lr.ph ], [ %i.cz, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ] ; 2 uses
  %i.aa = phi i32 [ %i.g, %.lr.ph ], [ %i.cw, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ]
  %i.ab = load ptr, ptr %.sroa.035.041, align 8, !tbaa !323 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !276
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -4
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.aj = add i64 %i.ai, %i.w
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, 12
  %i.am = and i32 %i.al, -8
  %i.an = add i32 %i.am, %i.aa                    ; 2 uses
  store i32 %i.an, ptr %i.e, align 8, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.aq = and i32 %i.ap, 16
  %.not39 = icmp eq i32 %i.aq, 0
  br i1 %.not39, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISE_EEvi.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISE_EEvi.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
  %i.ar = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.ar, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISE_EEvi.exit
  %i.as = phi i32 [ %i.z, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit ], [ %i.ar, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISE_EEvi.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !554
  %i.aw = mul i32 %i.av, 48
  %i.ax = add i32 %i.aw, %i.an                    ; 2 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !3
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !554
  %i.az = shl nsw i32 %i.ay, 1
  %i.ba = add nsw i32 %i.y, %i.az                 ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !3
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !557
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = add i64 %i.bc, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = select i1 %i.be, ptr %i.at, ptr %i.bh   ; 4 uses
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !554 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.idx.i = shl nsw i64 %i.bk, 3                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %.idx.i
  %.not19.i = icmp eq i32 %i.bj, 0
  br i1 %.not19.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.bm = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.bn = and i64 %i.bm, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !323
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = and i32 %i.bq, 2
  %.not18.i.prol = icmp eq i32 %i.br, 0
  br i1 %.not18.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol: ; preds = %.lr.ph.i.prol
  %i.bs = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.bs, ptr %i.v, align 8, !tbaa !3
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol, %.lr.ph.i.prol
  %i.bt = phi i32 [ %i.bs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol ], [ %i.x, %.lr.ph.i.prol ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr46 = phi i32 [ %i.x, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.020.i.unr = phi ptr [ %i.bi, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.bv = icmp eq i64 %i.bm, 0
  br i1 %i.bv, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.d
  %i.bw = phi i32 [ %i.cl, %bb.d ], [ %.unr46, %.lr.ph.i.prol.loopexit ]
  %i.bx = phi i32 [ %i.cm, %bb.d ], [ %.unr46, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.cn, %bb.d ], [ %.sroa.015.020.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.015.020.i, align 8, !tbaa !323
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = and i32 %i.ca, 2
  %.not18.i = icmp eq i32 %i.cb, 0
  br i1 %.not18.i, label %.lr.ph.i.1, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i: ; preds = %.lr.ph.i
  %i.cc = add nsw i32 %i.bx, 1                    ; 3 uses
  store i32 %i.cc, ptr %i.v, align 8, !tbaa !3
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i, %.lr.ph.i
  %i.cd = phi i32 [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i ], [ %i.bw, %.lr.ph.i ]
  %i.ce = phi i32 [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i ], [ %i.bx, %.lr.ph.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !323
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = and i32 %i.ci, 2
  %.not18.i.1 = icmp eq i32 %i.cj, 0
  br i1 %.not18.i.1, label %bb.d, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1: ; preds = %.lr.ph.i.1
  %i.ck = add nsw i32 %i.ce, 1                    ; 3 uses
  store i32 %i.ck, ptr %i.v, align 8, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1, %.lr.ph.i.1
  %i.cl = phi i32 [ %i.ck, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1 ], [ %i.cd, %.lr.ph.i.1 ] ; 2 uses
  %i.cm = phi i32 [ %i.ck, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1 ], [ %i.ce, %.lr.ph.i.1 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 16 ; 2 uses
  %.not.i25.1 = icmp eq ptr %i.cn, %i.bl
  br i1 %.not.i25.1, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.d, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.co = phi i32 [ %i.x, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %bb.d ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !554
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.cr, %i.ax                    ; 2 uses
  store i32 %i.cs, ptr %i.e, align 8, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !554
  %i.cv = shl i32 %i.cu, 3
  %i.cw = add i32 %i.cv, %i.cs                    ; 2 uses
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !3
  %i.cx = load i32, ptr %i.ct, align 8, !tbaa !554
  %i.cy = add nsw i32 %i.cx, %i.ba                ; 2 uses
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.035.041, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cz, %i.r
  br i1 %.not38, label %._crit_edge, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !554
  %i.d = mul i32 %i.c, 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = add i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = select i1 %i.k, ptr %0, ptr %i.n         ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !554  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 3
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.not.i21 = icmp eq i64 %1, 0
  %i.t = add i64 %1, 18
  %i.u = select i1 %.not.i21, i64 17, i64 %i.t    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.promoted = load i32, ptr %i.s, align 8
  %.promoted66 = load i32, ptr %i.v, align 4
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.w = phi i32 [ %.promoted66, %.lr.ph ], [ %i.ej, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.sroa.026.039 = phi ptr [ %i.o, %.lr.ph ], [ %i.ek, %bb.j ] ; 2 uses
  %i.y = phi i32 [ %i.g, %.lr.ph ], [ %.sink, %bb.j ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.026.039, align 8, !tbaa !323 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = and i32 %i.ab, 32
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit: ; preds = %bb.d
  %i.ad = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ad, ptr %i.s, align 8, !tbaa !3
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit, %bb.d
  %i.ae = phi i32 [ %i.ad, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.x, %bb.d ]
  %i.af = phi i32 [ %.pre, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !276
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 16 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23 ; 13 uses
  %i.ao = and i32 %i.af, 16
  %.not37 = icmp eq i32 %i.ao, 0
  br i1 %.not37, label %.critedge.i.thread, label %.critedge.i

.critedge.i.thread:                               ; preds = %bb.e
  %.025.i30 = add i64 %i.u, %i.an
  br label %bb.f

.critedge.i:                                      ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -4                       ; 2 uses
  %.025.i = add i64 %i.u, %i.an                   ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread

bb.f:                                             ; preds = %.critedge.i.thread, %.critedge.i
  %.025.i34 = phi i64 [ %.025.i30, %.critedge.i.thread ], [ %.025.i, %.critedge.i ] ; 4 uses
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.al, align 1, !tbaa !22
  %i.aw = add i8 %i.av, -97
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  br i1 %i.ax, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.0126.i.i = phi ptr [ %i.bd, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %.0135.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %bb.g ]
  %i.az = load i8, ptr %.0126.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ba = add i8 %i.az, -65
  %i.bb = icmp ult i8 %i.ba, 26
  br i1 %i.bb, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bc = icmp eq i8 %i.az, 95
  %spec.select.i.i = select i1 %i.bc, i32 1, i32 %.0135.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0126.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, label %.lr.ph.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i: ; preds = %bb.h
  %i.be = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.be, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i
  %min.iters.check87 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check87, label %.lr.ph.i.i.i.i.i.preheader104, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec89 = and i64 %i.an, -4                    ; 3 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %n.vec89
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next97, %vector.body90 ] ; 2 uses
  %vec.phi92 = phi <2 x i64> [ zeroinitializer, %vector.ph88 ], [ %i.bl, %vector.body90 ]
  %vec.phi93 = phi <2 x i64> [ zeroinitializer, %vector.ph88 ], [ %i.bm, %vector.body90 ]
  %next.gep94 = getelementptr i8, ptr %i.al, i64 %index91 ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep94, i64 2
  %wide.load95 = load <2 x i8>, ptr %next.gep94, align 1, !tbaa !22
  %wide.load96 = load <2 x i8>, ptr %i.bg, align 1, !tbaa !22
  %i.bh = icmp eq <2 x i8> %wide.load95, splat (i8 95)
  %i.bi = icmp eq <2 x i8> %wide.load96, splat (i8 95)
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = add <2 x i64> %vec.phi92, %i.bj         ; 2 uses
  %i.bm = add <2 x i64> %vec.phi93, %i.bk         ; 2 uses
  %index.next97 = add nuw i64 %index91, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next97, %n.vec89
  br i1 %i.bn, label %middle.block98, label %vector.body90, !llvm.loop !2217

middle.block98:                                   ; preds = %vector.body90
  %bin.rdx99 = add <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx99) ; 2 uses
  %cmp.n100 = icmp eq i64 %i.an, %n.vec89
  br i1 %cmp.n100, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.preheader104:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block98
  %.08.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block98 ]
  %.057.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %middle.block98 ]
  br label %.lr.ph.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, %bb.f
  %i.bp = trunc i64 %.025.i34 to i32
  %i.bq = add i32 %i.bp, 7
  %i.br = and i32 %i.bq, -8
  %i.bs = add i32 %i.y, %i.br
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader104 ]
  %.057.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader104 ] ; 2 uses
  %i.bt = load i8, ptr %.057.i.i.i.i.i, align 1, !tbaa !22
  %i.bu = icmp eq i8 %i.bt, 95
  %i.bv = zext i1 %i.bu to i64
  %spec.select.i.i.i.i.i = add nuw nsw i64 %.08.i.i.i.i.i, %i.bv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.ay
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2218

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block98
  %spec.select.i.i.i.i.i.lcssa = phi i64 [ %i.bo, %middle.block98 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bx = add i64 %.025.i34, %i.an
  %i.by = sub i64 %i.bx, %spec.select.i.i.i.i.i.lcssa
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, -8
  %i.cb = add i32 %i.ca, 8
  %i.cc = add i32 %i.cb, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i: ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i.i.i.i35.preheader.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread: ; preds = %.critedge.i
  %i.ce = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %.not6.i.i.i.i34.i62 = icmp samesign eq i64 %i.an, 0
  br i1 %.not6.i.i.i.i34.i62, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i.i.i35.preheader.i:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %bb.g
  %i.cg = phi i1 [ true, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ true, %bb.g ], [ false, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i32 = phi i64 [ %.025.i34, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %.025.i34, %bb.g ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 2 uses
  %i.ch = phi ptr [ null, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ null, %bb.g ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.ci = phi ptr [ %i.cd, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %i.ay, %bb.g ], [ %i.cf, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 4 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = ptrtoaddr ptr %i.al to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check70, label %.lr.ph.i.i.i.i35.i.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.i.i.i.i35.preheader.i
  %n.vec72 = and i64 %i.cl, -4                    ; 3 uses
  %i.cm = getelementptr i8, ptr %i.al, i64 %n.vec72
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next80, %vector.body73 ] ; 2 uses
  %vec.phi75 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.cs, %vector.body73 ]
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.ct, %vector.body73 ]
  %next.gep77 = getelementptr i8, ptr %i.al, i64 %index74 ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep77, i64 2
  %wide.load78 = load <2 x i8>, ptr %next.gep77, align 1, !tbaa !22
  %wide.load79 = load <2 x i8>, ptr %i.cn, align 1, !tbaa !22
  %i.co = icmp eq <2 x i8> %wide.load78, splat (i8 95)
  %i.cp = icmp eq <2 x i8> %wide.load79, splat (i8 95)
  %i.cq = zext <2 x i1> %i.co to <2 x i64>
  %i.cr = zext <2 x i1> %i.cp to <2 x i64>
  %i.cs = add <2 x i64> %vec.phi75, %i.cq         ; 2 uses
  %i.ct = add <2 x i64> %vec.phi76, %i.cr         ; 2 uses
  %index.next80 = add nuw i64 %index74, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.cu, label %middle.block81, label %vector.body73, !llvm.loop !2219

middle.block81:                                   ; preds = %vector.body73
  %bin.rdx82 = add <2 x i64> %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx82) ; 2 uses
  %cmp.n83 = icmp eq i64 %i.cl, %n.vec72
  br i1 %cmp.n83, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i.preheader

.lr.ph.i.i.i.i35.i.preheader:                     ; preds = %.lr.ph.i.i.i.i35.preheader.i, %middle.block81
  %.08.i.i.i.i36.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.cv, %middle.block81 ]
  %.057.i.i.i.i37.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.cm, %middle.block81 ]
  br label %.lr.ph.i.i.i.i35.i

.lr.ph.i.i.i.i35.i:                               ; preds = %.lr.ph.i.i.i.i35.i.preheader, %.lr.ph.i.i.i.i35.i
  %.08.i.i.i.i36.i = phi i64 [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ], [ %.08.i.i.i.i36.i.ph, %.lr.ph.i.i.i.i35.i.preheader ]
  %.057.i.i.i.i37.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i35.i ], [ %.057.i.i.i.i37.i.ph, %.lr.ph.i.i.i.i35.i.preheader ] ; 2 uses
  %i.cw = load i8, ptr %.057.i.i.i.i37.i, align 1, !tbaa !22
  %i.cx = icmp eq i8 %i.cw, 95
  %i.cy = zext i1 %i.cx to i64
  %spec.select.i.i.i.i38.i = add nuw nsw i64 %.08.i.i.i.i36.i, %i.cy ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i37.i, i64 1 ; 2 uses
  %.not.i.i.i.i39.i = icmp eq ptr %i.cz, %i.ci
  br i1 %.not.i.i.i.i39.i, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i, !llvm.loop !2220

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread: ; preds = %.lr.ph.i.i.i.i35.i, %middle.block81
  %spec.select.i.i.i.i38.i.lcssa = phi i64 [ %i.cv, %middle.block81 ], [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ] ; 2 uses
  br i1 %i.cg, label %.lr.ph.i.i.i.i43.i.preheader, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64

.lr.ph.i.i.i.i43.i.preheader:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %i.da = ptrtoaddr ptr %i.ci to i64
  %i.db = ptrtoaddr ptr %i.al to i64
end_hunk_3
begin_hunk_4_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS1_13FlatAllocatorEE3$_3EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_":bb.a
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !896
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph73, label %.preheader63

.lr.ph73:                                         ; preds = %.preheader64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph71, %bb.e
  %indvars.iv82 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next83, %bb.e ] ; 3 uses
  %i.cs = load ptr, ptr %i.bp, align 8, !tbaa !439
  %i.ct = getelementptr inbounds nuw [88 x i8], ptr %i.cs, i64 %indvars.iv82 ; 3 uses
  %i.cu = load ptr, ptr %i.bq, align 8, !tbaa !557
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = add i64 %i.cv, -1
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv82
  %.0.i.i.i.i.i.i59 = select i1 %i.cx, ptr %i.bq, ptr %i.db
  %i.dc = load ptr, ptr %.0.i.i.i.i.i.i59, align 8, !tbaa !323
  %.val54 = load ptr, ptr %0, align 8, !tbaa !2761
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !2763
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !919
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !670
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !319
  tail call void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_15FieldDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %.val54, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(88) %i.ct, ptr noundef %i.de, ptr noundef nonnull align 8 dereferenceable(224) %.val55, i32 noundef 0, i1 noundef zeroext false)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.dj = load i32, ptr %i.bm, align 8, !tbaa !893
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next83, %i.dk
  br i1 %i.dl, label %bb.e, label %.preheader64, !llvm.loop !2766

.preheader63:                                     ; preds = %bb.f, %.preheader64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !690
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph75, label %.preheader

.lr.ph75:                                         ; preds = %.preheader63
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph73, %bb.f
  %indvars.iv85 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next86, %bb.f ] ; 3 uses
  %i.dr = load ptr, ptr %i.cq, align 8, !tbaa !900
  %i.ds = getelementptr inbounds nuw [160 x i8], ptr %i.dr, i64 %indvars.iv85
  %i.dt = load ptr, ptr %i.cr, align 8, !tbaa !557
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = and i64 %i.du, 1
  %i.dw = icmp eq i64 %i.dv, 0
  %i.dx = add i64 %i.du, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv85
  %.0.i.i.i.i.i.i60 = select i1 %i.dw, ptr %i.cr, ptr %i.ea
  %i.eb = load ptr, ptr %.0.i.i.i.i.i.i60, align 8, !tbaa !323
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS1_13FlatAllocatorEE3$_3EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ds, ptr noundef nonnull align 8 dereferenceable(176) %i.eb)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.ec = load i32, ptr %i.cn, align 8, !tbaa !896
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next86, %i.ed
  br i1 %i.ee, label %bb.f, label %.preheader63, !llvm.loop !2767

.preheader:                                       ; preds = %bb.g, %.preheader63
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !683
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph75, %bb.g
  %indvars.iv88 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next89, %bb.g ] ; 3 uses
  %i.ek = load ptr, ptr %i.dp, align 8, !tbaa !691
  %i.el = getelementptr inbounds nuw [88 x i8], ptr %i.ek, i64 %indvars.iv88 ; 3 uses
  %i.em = load ptr, ptr %i.dq, align 8, !tbaa !557
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = add i64 %i.en, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv88
  %.0.i.i.i.i.i.i61 = select i1 %i.ep, ptr %i.dq, ptr %i.et
  %i.eu = load ptr, ptr %.0.i.i.i.i.i.i61, align 8, !tbaa !323
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2761
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !2763
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !919
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !670
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !319
  tail call void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_15FieldDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %.val52, i32 noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(96) %i.eu, ptr noundef nonnull align 8 dereferenceable(88) %i.el, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(224) %.val53, i32 noundef 0, i1 noundef zeroext false)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.fb = load i32, ptr %i.dm, align 4, !tbaa !690
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next89, %i.fc
  br i1 %i.fd, label %bb.g, label %.preheader, !llvm.loop !2768

._crit_edge:                                      ; preds = %bb.h, %.preheader
  ret void

bb.h:                                             ; preds = %.lr.ph77, %bb.h
  %indvars.iv91 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next92, %bb.h ] ; 3 uses
  %i.fe = load ptr, ptr %i.ei, align 8, !tbaa !775
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %indvars.iv91 ; 3 uses
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !557
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = add i64 %i.fh, -1
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv91
  %.0.i.i.i.i.i.i62 = select i1 %i.fj, ptr %i.ej, ptr %i.fn
  %i.fo = load ptr, ptr %.0.i.i.i.i.i.i62, align 8, !tbaa !323
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2761
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !2763
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !773
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1161
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !669
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !319
  tail call void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_10Descriptor14ExtensionRangeEEEvNS0_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %.val56, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noundef nonnull align 8 dereferenceable(40) %i.ff, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(224) %.val57, i32 noundef 0, i1 noundef zeroext false)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fx = load i32, ptr %i.ef, align 8, !tbaa !683
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next92, %i.fy
  br i1 %i.fz, label %bb.h, label %._crit_edge, !llvm.loop !2769
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_10DescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1207, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !759  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !669
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_10DescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_10DescriptorE.exit

_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_10DescriptorE.exit: ; preds = %bb.b, %bb.c
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !531 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.h, align 8, !tbaa !931
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.i, align 8, !tbaa !1301
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !820, !range !49, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.d, !prof !322

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_10DescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_10DescriptorE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = trunc i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  br i1 %i.q, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.r, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !818
  %i.u = icmp eq ptr %13, null
  br i1 %i.u, label %bb.g, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !535  ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !163

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !22
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.f ]
  %i.ae = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.ad) ; 2 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !931
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN6google8protobuf14MessageOptions14clear_featuresEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.af)
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !931
  br label %_ZN6google8protobuf14MessageOptions14clear_featuresEv.exit

_ZN6google8protobuf14MessageOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit, %bb.j
  %.pre = phi ptr [ %i.ae, %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.j ]
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !3
  %i.ah = and i32 %i.ag, -2
  store i32 %i.ah, ptr %i.o, align 8, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf14MessageOptions14clear_featuresEv.exit, %.critedge
  %i.ai = phi ptr [ %.pre, %_ZN6google8protobuf14MessageOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
  %i.aj = icmp slt i32 %1, 1000
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !931
  %.not = icmp eq ptr %i.ak, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.am, align 1
  %i.an = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ao = xor i64 %i.an, -1
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.an, ptr nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.ar = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.as = icmp ne i64 %i.ar, 0
  %or.cond = or i1 %7, %i.as
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !1301
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %.0.i, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.at = load i64, ptr %10, align 8, !tbaa !1184
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i42 = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_10DescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.ba, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ax, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.aa

bb.v:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.x:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.af

bb.y:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !818
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bh = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.bg)
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.y
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !1301
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %i.bi = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.ab

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.bk) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = trunc i64 %i.bi to i1
  br i1 %i.bl, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = inttoptr i64 %i.bi to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.q
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.af:                                            ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.w ], [ %i.bd, %bb.x ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.aq, %bb.n ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_10DescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2782, !noalias !2784, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2784 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2784
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2784
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2784
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2784
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2784
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2784
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2784
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2784
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10DescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10DescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10DescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10DescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2784 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2784
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2784
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2784
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_15OneofDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1208, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %3, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !671
  %i.b = getelementptr i8, ptr %.val, i64 56
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1301 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.c, align 8, !tbaa !933
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.d, align 8, !tbaa !1756
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !820, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = and i32 %i.k, 2
  %.not45 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %.not45, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.m, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !818
  %i.p = icmp eq ptr %13, null
  br i1 %i.p, label %bb.e, label %_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !22
  br label %_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit

_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.z = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !933
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN6google8protobuf12OneofOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !933
  br label %_ZN6google8protobuf12OneofOptions14clear_featuresEv.exit

_ZN6google8protobuf12OneofOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.z, %_ZN6google8protobuf12OneofOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !3
  %i.ac = and i32 %i.ab, -3
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf12OneofOptions14clear_featuresEv.exit, %.critedge
  %i.ad = phi ptr [ %.pre, %_ZN6google8protobuf12OneofOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
  %i.ae = icmp slt i32 %1, 1000
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !933
  %.not = icmp eq ptr %i.af, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ai, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.am = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ne i64 %i.am, 0
  %or.cond = or i1 %7, %i.an
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.val.val, ptr %i.d, align 8, !tbaa !1756
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.val.val, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %10, align 8, !tbaa !1184
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i42 = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_15OneofDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.av, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.as, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !818
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !1756
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.bc = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.y

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.be) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bf = trunc i64 %i.bc to i1
  br i1 %i.bf, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = inttoptr i64 %i.bc to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ac:                                            ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.ax, %bb.u ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.al, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_15OneofDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2797, !noalias !2799, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2799 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2799
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2799
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2799
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2799
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2799
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2799
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2799
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2799
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15OneofDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15OneofDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15OneofDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15OneofDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2799 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2799
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2799
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2799
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_10Descriptor14ExtensionRangeEEEvNS0_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1209, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1161
  %i.b = getelementptr i8, ptr %.val, i64 56
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1301 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.c, align 8, !tbaa !774
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.d, align 8, !tbaa !1302
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !820, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = and i32 %i.k, 4
  %.not45 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  br i1 %.not45, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.m, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !818
  %i.p = icmp eq ptr %13, null
  br i1 %i.p, label %bb.e, label %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !22
  br label %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit

_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.z = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !774
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN6google8protobuf21ExtensionRangeOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !774
  br label %_ZN6google8protobuf21ExtensionRangeOptions14clear_featuresEv.exit

_ZN6google8protobuf21ExtensionRangeOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.z, %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !3
  %i.ac = and i32 %i.ab, -5
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptions14clear_featuresEv.exit, %.critedge
  %i.ad = phi ptr [ %.pre, %_ZN6google8protobuf21ExtensionRangeOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
  %i.ae = icmp slt i32 %1, 1000
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !774
  %.not = icmp eq ptr %i.af, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1161
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.ai, align 1
  %i.aj = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.ak = xor i64 %i.aj, -1
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.aj, ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.an = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp ne i64 %i.an, 0
  %or.cond = or i1 %7, %i.ao
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.val.val, ptr %i.d, align 8, !tbaa !1302
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.val.val, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ap = load i64, ptr %10, align 8, !tbaa !1184
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !1161
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i.i42 = load i16, ptr %i.at, align 1
  %i.au = zext i16 %.0.copyload.i.i.i.i42 to i64  ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_10Descriptor14ExtensionRangeEEEvNS4_7EditionERKNT_5ProtoEPSA_PNSA_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.ax, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.au, ptr nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.v:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.w:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !818
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  store ptr %i.be, ptr %i.d, align 8, !tbaa !1302
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.bf = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.z

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.bh) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = inttoptr i64 %i.bf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ad:                                            ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.ba, %bb.v ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.ay, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.am, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_10Descriptor14ExtensionRangeEEEvNS4_7EditionERKNT_5ProtoEPSA_PNSA_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2812, !noalias !2814, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2814 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2814
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2814
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2814
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2814
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2814
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2814
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2814
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2814
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10Descriptor14ExtensionRangeEEEvNS1_7EditionERKNT_5ProtoEPS7_PNS7_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10Descriptor14ExtensionRangeEEEvNS1_7EditionERKNT_5ProtoEPS7_PNS7_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10Descriptor14ExtensionRangeEEEvNS1_7EditionERKNT_5ProtoEPS7_PNS7_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_10Descriptor14ExtensionRangeEEEvNS1_7EditionERKNT_5ProtoEPS7_PNS7_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2814 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2814
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2814
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2814
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_14EnumDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1210, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !760  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_14EnumDescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_14EnumDescriptorE.exit

_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_14EnumDescriptorE.exit: ; preds = %bb.b, %bb.c
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !531 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.h, align 8, !tbaa !913
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.i, align 8, !tbaa !1150
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !820, !range !49, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.d, !prof !322

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_14EnumDescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_14EnumDescriptorE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = trunc i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  br i1 %i.q, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.r, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !818
  %i.u = icmp eq ptr %13, null
  br i1 %i.u, label %bb.g, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !535  ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !163

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !22
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.f ]
  %i.ae = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.ad) ; 2 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !913
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN6google8protobuf11EnumOptions14clear_featuresEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.af)
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !913
  br label %_ZN6google8protobuf11EnumOptions14clear_featuresEv.exit

_ZN6google8protobuf11EnumOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit, %bb.j
  %.pre = phi ptr [ %i.ae, %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.j ]
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !3
  %i.ah = and i32 %i.ag, -2
  store i32 %i.ah, ptr %i.o, align 8, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf11EnumOptions14clear_featuresEv.exit, %.critedge
  %i.ai = phi ptr [ %.pre, %_ZN6google8protobuf11EnumOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
  %i.aj = icmp slt i32 %1, 1000
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !913
  %.not = icmp eq ptr %i.ak, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.am, align 1
  %i.an = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ao = xor i64 %i.an, -1
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.an, ptr nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.ar = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.as = icmp ne i64 %i.ar, 0
  %or.cond = or i1 %7, %i.as
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !1150
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %.0.i, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.at = load i64, ptr %10, align 8, !tbaa !1184
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i42 = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_14EnumDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.ba, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ax, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.af

bb.x:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !818
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.bf)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !1150
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.bh = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.aa

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.bj) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.bk = trunc i64 %i.bh to i1
  br i1 %i.bk, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = inttoptr i64 %i.bh to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bl)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.q
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ae:                                            ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.ae ], [ %i.bc, %bb.w ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.aq, %bb.n ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_14EnumDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2827, !noalias !2829, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2829 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2829
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2829
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2829
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2829
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2829
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2829
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2829
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2829
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14EnumDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14EnumDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14EnumDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14EnumDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2829 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2829
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2829
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2829
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_19EnumValueDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1211, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %3, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !465
  %i.b = getelementptr i8, ptr %.val, i64 48
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1150 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.c, align 8, !tbaa !934
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.d, align 8, !tbaa !1485
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !820, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = and i32 %i.k, 2
  %.not44 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %.not44, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.m, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !818
  %i.p = icmp eq ptr %13, null
  br i1 %i.p, label %bb.e, label %_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !22
  br label %_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit

_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.z = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !934
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN6google8protobuf16EnumValueOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !934
  br label %_ZN6google8protobuf16EnumValueOptions14clear_featuresEv.exit

_ZN6google8protobuf16EnumValueOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.z, %_ZN6google8protobuf16EnumValueOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !3
  %i.ac = and i32 %i.ab, -3
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf16EnumValueOptions14clear_featuresEv.exit, %.critedge
  %i.ad = phi ptr [ %.pre, %_ZN6google8protobuf16EnumValueOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
  %i.ae = icmp slt i32 %1, 1000
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !934
  %.not = icmp eq ptr %i.af, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ak, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.am = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ne i64 %i.am, 0
  %or.cond = or i1 %7, %i.an
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.val.val, ptr %i.d, align 8, !tbaa !1485
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.val.val, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %10, align 8, !tbaa !1184
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !139 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_19EnumValueDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.av, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.au, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !818
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !1485
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.bc = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.y

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.be) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bf = trunc i64 %i.bc to i1
  br i1 %i.bf, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = inttoptr i64 %i.bc to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ac:                                            ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.ax, %bb.u ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.al, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_19EnumValueDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2842, !noalias !2844, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2844 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2844
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2844
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2844
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2844
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2844
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2844
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2844
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2844
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_19EnumValueDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_19EnumValueDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_19EnumValueDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_19EnumValueDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2844 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2844
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2844
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2844
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_15FieldDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 18 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1212, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = and i8 %i.b, 16
  %.not.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = and i8 %i.b, 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i: ; preds = %bb.c
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit13.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !670
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit13.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !430
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.b, %bb.d, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit13.i, %bb.e
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit13.i ], [ %i.o, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !531 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.p, align 8, !tbaa !920
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.q, align 8, !tbaa !693
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i8, ptr %i.s, align 8, !tbaa !820, !range !49, !noundef !51
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.critedge, label %bb.f, !prof !322

bb.f:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %_ZN6google8protobuf12_GLOBAL__N_117GetParentFeaturesEPKNS0_15FieldDescriptorE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = and i32 %i.x, 4
  %.not50 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  br i1 %.not50, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.z, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !818
  %i.ac = icmp eq ptr %13, null
  br i1 %i.ac, label %bb.i, label %_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !535 ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.k, !prof !163

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i64 %i.ae, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ak, ptr %i.z, align 8, !tbaa !22
  br label %_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit

_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit: ; preds = %bb.h, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.al = phi ptr [ %i.ak, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.h ]
  %i.am = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.al) ; 2 uses
  store ptr %i.am, ptr %i.p, align 8, !tbaa !920
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %.not.i42 = icmp eq ptr %i.an, null
  br i1 %.not.i42, label %_ZN6google8protobuf12FieldOptions14clear_featuresEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.an)
  %.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !920
  br label %_ZN6google8protobuf12FieldOptions14clear_featuresEv.exit

_ZN6google8protobuf12FieldOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit, %bb.l
  %.pre = phi ptr [ %i.am, %_ZN6google8protobuf12FieldOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.l ]
  %i.ao = load i32, ptr %i.w, align 8, !tbaa !3
  %i.ap = and i32 %i.ao, -5
  store i32 %i.ap, ptr %i.w, align 8, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf12FieldOptions14clear_featuresEv.exit, %.critedge
  %i.aq = phi ptr [ %.pre, %_ZN6google8protobuf12FieldOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.aq)
  %i.ar = icmp slt i32 %1, 1000                   ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !920
  %.not = icmp eq ptr %i.as, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.au, align 1
  %i.av = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.av, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet16MutableExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0EEENT_8Singular11MutableTypeERKNS3_19ExtensionIdentifierIS1_S8_XT0_EXT1_EEE.exit.i, %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i, %_ZN6google8protobufL24InferLegacyProtoFeaturesERKNS0_20FieldDescriptorProtoERKNS0_12FieldOptionsENS0_7EditionERNS0_10FeatureSetE.exit, %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !535 ; 3 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s, !prof !163

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i64 %i.ba, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !537
  br label %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bf = inttoptr i64 %i.ba to ptr
  br label %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i

_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i43 = phi ptr [ %i.be, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = load i32, ptr @_ZN2pb3cppE, align 8, !tbaa !1151
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2pb3cppE, i64 8), align 8, !tbaa !1153
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf8internal12ExtensionSet10GetMessageEPNS0_5ArenaEiRKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef %.0.i.i.i.i43, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !3
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.noexc
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !22
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bq = load i64, ptr %i.az, align 8, !tbaa !535 ; 3 uses
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.w, !prof !163

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i64 %i.bq, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !537
  br label %_ZN6google8protobuf10FeatureSet16MutableExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0EEENT_8Singular11MutableTypeERKNS3_19ExtensionIdentifierIS1_S8_XT0_EXT1_EEE.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bv = inttoptr i64 %i.bq to ptr
  br label %_ZN6google8protobuf10FeatureSet16MutableExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0EEENT_8Singular11MutableTypeERKNS3_19ExtensionIdentifierIS1_S8_XT0_EXT1_EEE.exit.i

_ZN6google8protobuf10FeatureSet16MutableExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0EEENT_8Singular11MutableTypeERKNS3_19ExtensionIdentifierIS1_S8_XT0_EXT1_EEE.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i13.i = phi ptr [ %i.bu, %bb.v ], [ %i.bv, %bb.w ]
  %i.bw = load i32, ptr @_ZN2pb3cppE, align 8, !tbaa !1151
  %i.bx = invoke noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEihRKNS0_11MessageLiteEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef %.0.i.i.i13.i, i32 noundef %i.bw, i8 noundef zeroext 11, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2pb30_CppFeatures_default_instance_E, ptr noundef null)
          to label %.noexc45 unwind label %bb.p   ; 2 uses

.noexc45:                                         ; preds = %_ZN6google8protobuf10FeatureSet16MutableExtensionINS0_8internal17MessageTypeTraitsIN2pb11CppFeaturesEEELh11ELb0EEENT_8Singular11MutableTypeERKNS3_19ExtensionIdentifierIS1_S8_XT0_EXT1_EEE.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 2, ptr %i.by, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !3
  %i.cb = or i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !3
  br label %bb.x

bb.x:                                             ; preds = %.noexc45, %bb.t, %.noexc
  br i1 %i.ar, label %bb.y, label %_ZN6google8protobufL24InferLegacyProtoFeaturesERKNS0_20FieldDescriptorProtoERKNS0_12FieldOptionsENS0_7EditionERNS0_10FeatureSetE.exit

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !22
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 3, ptr %i.cf, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ci = or i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !22
  %i.cl = icmp eq i32 %i.ck, 10
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 2, ptr %i.cm, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !3
  %i.cp = or i32 %i.co, 16
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !22, !range !49, !noundef !51
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %i.cs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 1, ptr %i.ct, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !3
  %i.cw = or i32 %i.cv, 4
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = icmp eq i32 %1, 999
  br i1 %i.cx, label %bb.af, label %_ZN6google8protobufL24InferLegacyProtoFeaturesERKNS0_20FieldDescriptorProtoERKNS0_12FieldOptionsENS0_7EditionERNS0_10FeatureSetE.exit

bb.af:                                            ; preds = %bb.ae
  %i.cy = load i32, ptr %i.w, align 8, !tbaa !3
  %i.cz = and i32 %i.cy, 32
  %.not.i44 = icmp eq i32 %i.cz, 0
  %brmerge = or i1 %.not.i44, %i.cs
  br i1 %brmerge, label %_ZN6google8protobufL24InferLegacyProtoFeaturesERKNS0_20FieldDescriptorProtoERKNS0_12FieldOptionsENS0_7EditionERNS0_10FeatureSetE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_15FieldDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb:bb.a
bb.ao:                                            ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !818
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dt = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.dr, ptr noundef nonnull align 8 dereferenceable(72) %i.ds)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.dt, ptr %i.q, align 8, !tbaa !693
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %i.du = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.as

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.ar
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.dw) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.as:                                            ; preds = %bb.ar
  %i.dx = trunc i64 %i.du to i1
  br i1 %i.dx, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = inttoptr i64 %i.du to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dy)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.ai
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.aw:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.aw ], [ %i.dp, %bb.ao ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.do, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ay ], [ %i.ay, %bb.p ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEihRKNS0_11MessageLiteEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_15FieldDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2857, !noalias !2859, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2859 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2859
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2859
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2859
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2859
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2859
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2859
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2859
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2859
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15FieldDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15FieldDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15FieldDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_15FieldDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2859 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2859
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2859
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2859
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_17ServiceDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1213, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %3, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !675
  %i.b = getelementptr i8, ptr %.val, i64 160
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1306 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.c, align 8, !tbaa !918
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.d, align 8, !tbaa !1489
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !820, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = and i32 %i.k, 2
  %.not45 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %.not45, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.m, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !818
  %i.p = icmp eq ptr %13, null
  br i1 %i.p, label %bb.e, label %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !22
  br label %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit

_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.z = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !918
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN6google8protobuf14ServiceOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !918
  br label %_ZN6google8protobuf14ServiceOptions14clear_featuresEv.exit

_ZN6google8protobuf14ServiceOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.z, %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !3
  %i.ac = and i32 %i.ab, -3
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf14ServiceOptions14clear_featuresEv.exit, %.critedge
  %i.ad = phi ptr [ %.pre, %_ZN6google8protobuf14ServiceOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
  %i.ae = icmp slt i32 %1, 1000
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !918
  %.not = icmp eq ptr %i.af, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ai, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.am = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ne i64 %i.am, 0
  %or.cond = or i1 %7, %i.an
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.val.val, ptr %i.d, align 8, !tbaa !1489
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.val.val, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %10, align 8, !tbaa !1184
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i42 = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_17ServiceDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.av, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.as, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !818
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !1489
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.bc = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.y

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.be) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bf = trunc i64 %i.bc to i1
  br i1 %i.bf, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = inttoptr i64 %i.bc to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ac:                                            ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.ax, %bb.u ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.al, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_17ServiceDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2872, !noalias !2874, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2874 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2874
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2874
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2874
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2874
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2874
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2874
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2874
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2874
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_17ServiceDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_17ServiceDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_17ServiceDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_17ServiceDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2874 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2874
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2874
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2874
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS0_16MethodDescriptorEEEvNS0_7EditionERKNT_5ProtoEPS5_PNS5_11OptionsTypeERNS0_8internal13FlatAllocatorENS0_14DescriptorPool14ErrorCollector13ErrorLocationEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.1188", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %12 = alloca %class.anon.1214, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %3, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !679
  %i.b = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1489 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.c, align 8, !tbaa !946
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.d, align 8, !tbaa !1490
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !820, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.62, i32 noundef 5912, ptr noundef nonnull @.str.347) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = and i32 %i.k, 2
  %.not45 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %.not45, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %13 = load ptr, ptr %i.m, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !818
  %i.p = icmp eq ptr %13, null
  br i1 %i.p, label %bb.e, label %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !22
  br label %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit

_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %13, %bb.d ]
  %i.z = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !946
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN6google8protobuf13MethodOptions14clear_featuresEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit
  tail call void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !946
  br label %_ZN6google8protobuf13MethodOptions14clear_featuresEv.exit

_ZN6google8protobuf13MethodOptions14clear_featuresEv.exit: ; preds = %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit, %bb.h
  %.pre = phi ptr [ %i.z, %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit ], [ %.pre.pre, %bb.h ]
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !3
  %i.ac = and i32 %i.ab, -3
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf13MethodOptions14clear_featuresEv.exit, %.critedge
  %i.ad = phi ptr [ %.pre, %_ZN6google8protobuf13MethodOptions14clear_featuresEv.exit ], [ @_ZN6google8protobuf29_FeatureSet_default_instance_E, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
  %i.ae = icmp slt i32 %1, 1000
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !946
  %.not = icmp eq ptr %i.af, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ai, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull @.str.348)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.am = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ne i64 %i.am, 0
  %or.cond = or i1 %7, %i.an
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.val.val, ptr %i.d, align 8, !tbaa !1490
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.val.val, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %10, align 8, !tbaa !1184
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i42 = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr %10, ptr %12, align 8, !tbaa !1320
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_16MethodDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %i.av, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.as, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %6, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !818
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !1490
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.bc = load i64, ptr %10, align 8, !tbaa !1184 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.y

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.be) #40
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bf = trunc i64 %i.bc to i1
  br i1 %i.bf, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = inttoptr i64 %i.bc to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #42
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %bb.o
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret void

bb.ac:                                            ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.ax, %bb.u ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.al, %bb.l ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_16MethodDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875)
end_hunk_5
begin_hunk_6_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS1_13FlatAllocatorEE3$_7EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_":bb.a
  br label %"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS1_13FlatAllocatorEE3$_7EEE5VisitIJKNS0_20FieldDescriptorProtoEEEEvRKNS0_15FieldDescriptorEDpRT_.exit57"

"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS1_13FlatAllocatorEE3$_7EEE5VisitIJKNS0_20FieldDescriptorProtoEEEEvRKNS0_15FieldDescriptorEDpRT_.exit57": ; preds = %bb.l, %bb.m
  %i.ep = phi i32 [ %i.dy, %bb.l ], [ %.pre85, %bb.m ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next82, %i.eq
  br i1 %i.er, label %bb.l, label %.preheader, !llvm.loop !2937
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE4findIS7_EENSC_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !19 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !270
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !270
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !19 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.l = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.m = add i64 %.sroa.0.0.copyload.i, 87
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !2938
  %i.q = and i64 %i.p, 65535
  %i.r = load i64, ptr %0, align 8, !tbaa !73, !noalias !2938 ; 4 uses
  %i.s = lshr i64 %i.n, 7
  %i.t = xor i64 %i.q, %i.s                       ; 2 uses
  %i.u = trunc i64 %i.n to i8
  %i.v = and i8 %i.u, 127
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 4 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.aa = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i6.fr, 0
  br i1 %i.aa, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.aj, %bb.f ], [ %i.t, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.r      ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.6.0.i.us
  %i.ad = load <16 x i8>, ptr %i.ac, align 1, !tbaa !22 ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.z, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not46.i.us = icmp eq i16 %i.af, 0
  br i1 %.not46.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ag = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %.not44.i.us = icmp eq i16 %i.ah, 0
  br i1 %.not44.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit, !prof !163

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.ai = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !2941

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.018.047.i.us.us = phi i16 [ %i.ar, %bb.g ], [ %i.af, %.split.us ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.018.047.i.us.us, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.6.0.i.us, %i.al
  %i.an = and i64 %i.am, %i.r                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.an ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i10.us.us = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i10.us.us, 0
  br i1 %i.ap, label %.thread33.i, label %bb.g, !prof !162

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aq = add i16 %.sroa.018.047.i.us.us, -1
  %i.ar = and i16 %i.aq, %.sroa.018.047.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ar, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bk, %bb.i ], [ %i.t, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bj, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.r            ; 4 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.6.0.i
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !22 ; 2 uses
  %i.av = icmp eq <16 x i8> %i.z, %i.au
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not46.i = icmp eq i16 %i.aw, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.018.047.i = phi i16 [ %i.bg, %bb.h ], [ %i.aw, %.split ] ; 3 uses
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.018.047.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.6.0.i, %i.ay
  %i.ba = and i64 %i.az, %i.r                     ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ba ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i10 = load i64, ptr %i.bb, align 8, !tbaa !19
  %i.bc = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i6.fr
  br i1 %i.bc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13, label %bb.h, !prof !162

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !270
  %bcmp.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i6.fr)
  %i.bd = icmp eq i32 %bcmp.i.i.i.i.i.i.i14, 0
  br i1 %i.bd, label %.thread33.i, label %bb.h

.thread33.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.an, %.lr.ph.i.us.us ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bf = add i16 %.sroa.018.047.i, -1
  %i.bg = and i16 %i.bf, %.sroa.018.047.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bh = icmp eq <16 x i8> %i.au, splat (i8 -128)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not44.i = icmp eq i16 %i.bi, 0
  br i1 %.not44.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit, !prof !163

bb.i:                                             ; preds = %._crit_edge.i
  %i.bj = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.6.0.i
  br label %.split, !llvm.loop !2941

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread33.i
  %.sroa.0.4.ph.i = phi ptr [ %i.be, %.thread33.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread33.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallIS7_EENSC_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_10DescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 512
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 188 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !2942
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 132
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISC_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISC_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf14MessageOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISC_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISC_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
end_hunk_6
begin_hunk_7_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS4_20FieldDescriptorProtoEPNS4_10DescriptorEPNS4_15FieldDescriptorEbRNS4_8internal13FlatAllocatorEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3144
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !337
  %i.a = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3146
  store i64 14, ptr %2, align 8, !noalias !3146
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.373, ptr %i.b, align 8, !noalias !3146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3146
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 2
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.c, align 1, !noalias !3146
  %i.d = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr inbounds i8, ptr %.val.val.val, i64 %i.e
  store i64 %i.d, ptr %3, align 8, !tbaa !19, !noalias !3146
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !270, !noalias !3146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3146
  store i64 20, ptr %4, align 8, !noalias !3146
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.374, ptr %i.g, align 8, !noalias !3146
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3146
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS4_20FieldDescriptorProtoEPNS4_10DescriptorEPNS4_15FieldDescriptorEbRNS4_8internal13FlatAllocatorEE3$_2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3155
  %i.a = getelementptr i8, ptr %.val, i64 48
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3157
  store i64 30, ptr %2, align 8, !noalias !3157
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.375, ptr %i.b, align 8, !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3157
  %i.c = ptrtoint ptr %.val.val to i64
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20, !noalias !3157
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23, !noalias !3157
  store i64 %i.h, ptr %3, align 8, !noalias !3157
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.i, align 8, !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3157
  store i64 2, ptr %4, align 8, !noalias !3157
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.231, ptr %i.j, align 8, !noalias !3157
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3157
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS4_20FieldDescriptorProtoEPNS4_10DescriptorEPNS4_15FieldDescriptorEbRNS4_8internal13FlatAllocatorEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readnone captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3178
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.b = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef 536870911, ptr noundef nonnull %i.a), !noalias !3178
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  store i64 %i.e, ptr %3, align 8, !tbaa !847, !noalias !3178
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !848, !noalias !3178
  call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16, !alias.scope !3182
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !23, !alias.scope !3182
  store i8 0, ptr %i.g, align 8, !tbaa !22, !alias.scope !3182
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3182
  store i64 %i.e, ptr %2, align 16, !noalias !3182
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.i, align 8, !noalias !3182
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 40, ptr nonnull @.str.376, ptr noundef nonnull %2, i64 noundef 1)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS1_20FieldDescriptorProtoEPNS1_10DescriptorEPNS1_15FieldDescriptorEbRNS1_8internal13FlatAllocatorEE3$_3JEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3182 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.g, align 8, !tbaa !22, !alias.scope !3182
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.j

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS1_20FieldDescriptorProtoEPNS1_10DescriptorEPNS1_15FieldDescriptorEbRNS1_8internal13FlatAllocatorEE3$_3JEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3178
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS4_20FieldDescriptorProtoEPNS4_10DescriptorEPNS4_15FieldDescriptorEbRNS4_8internal13FlatAllocatorEE3$_4NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3192)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3195
  %i.a = load ptr, ptr %1, align 8, !tbaa !3196, !noalias !3195, !nonnull !51, !align !644
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22, !noalias !3195
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.e = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.c, ptr noundef nonnull %i.d), !noalias !3195
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !847, !noalias !3195
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !848, !noalias !3195
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3198, !noalias !3195, !nonnull !51, !align !644
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !699, !noalias !3195
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !137, !noalias !3195 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.n, align 1, !noalias !3195
  %i.o = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p
  call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !16, !alias.scope !3202
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !23, !alias.scope !3202
  store i8 0, ptr %i.r, align 8, !tbaa !22, !alias.scope !3202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3202
  store i64 %i.h, ptr %2, align 16, !noalias !3202
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %i.t, align 8, !noalias !3202
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.o, ptr %i.u, align 16, !noalias !3202
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.v, align 8, !noalias !3202
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 66, ptr nonnull @.str.377, ptr noundef nonnull %2, i64 noundef 2)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS1_20FieldDescriptorProtoEPNS1_10DescriptorEPNS1_15FieldDescriptorEbRNS1_8internal13FlatAllocatorEE3$_4JEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3202 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.z = load i64, ptr %i.r, align 8, !tbaa !22, !alias.scope !3202
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.w

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS1_20FieldDescriptorProtoEPNS1_10DescriptorEPNS1_15FieldDescriptorEbRNS1_8internal13FlatAllocatorEE3$_4JEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_15FieldDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 32
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf31_FieldOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3203
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISD_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISD_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf12FieldOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISD_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISD_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_15FieldDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6google8protobuf12FieldOptions14unknown_fieldsEv.exit

_ZNK6google8protobuf12FieldOptions14unknown_fieldsEv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ca, %bb.r ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.q ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf12FieldOptions14unknown_fieldsEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !818
  %.sroa.0.0.copyload = load i64, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.cg = call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.cf, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !186 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i61, label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK4absl12lts_202505125Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit

_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit: ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %i.co, %bb.t ], [ %.pre, %bb.u ]
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ct = icmp eq i8 %i.cs, 1
  %spec.select.i = select i1 %i.ct, ptr %i.cg, ptr null
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !559
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.cw, ptr %i.cm, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1317
  %i.db = call noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, ptr noundef %spec.select.i, i32 noundef %i.da) ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !670
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !166
  %i.de = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %.loopexit, !llvm.loop !3204

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bu, %bb.p ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.s, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6google8protobuf12FieldOptions14unknown_fieldsEv.exit
  %.1 = phi ptr [ %i.s, %_ZNK6google8protobuf12FieldOptions14unknown_fieldsEv.exit ], [ @_ZN6google8protobuf31_FieldOptions_default_instance_E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN6google8protobuf31_FieldOptions_default_instance_E, %bb.a ], [ %i.s, %bb.s ], [ %i.s, %.preheader ], [ %i.s, %bb.w ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6google8protobuf12FieldOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEE30find_or_prepare_insert_non_sooIS8_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1234") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !699    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79, !noalias !3205
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !73, !noalias !3205 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !22 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !22 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !699
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !322

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !163

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !51, !noundef !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink76, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !1704
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_10Descriptor14ExtensionRangeEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESC_RKNS5_5ProtoEN4absl12lts_202505124SpanIKiEESC_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = trunc i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf40_ExtensionRangeOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 204 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3208
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISG_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISG_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [88 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf21ExtensionRangeOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(88) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISG_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISG_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.x

bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !535 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit, !prof !163

bb.r:                                             ; preds = %bb.q
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit

_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ca, %bb.r ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.q ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !818
  %.sroa.0.0.copyload = load i64, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.cg = call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.cf, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !186 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i61, label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK4absl12lts_202505125Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit

_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit: ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %i.co, %bb.t ], [ %.pre, %bb.u ]
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ct = icmp eq i8 %i.cs, 1
  %spec.select.i = select i1 %i.ct, ptr %i.cg, ptr null
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !559
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.cw, ptr %i.cm, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1317
  %i.db = call noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, ptr noundef %spec.select.i, i32 noundef %i.da) ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !670
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !166
  %i.de = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %.loopexit, !llvm.loop !3209

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bu, %bb.p ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.s, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit
  %.1 = phi ptr [ %i.s, %_ZNK6google8protobuf21ExtensionRangeOptions14unknown_fieldsEv.exit ], [ @_ZN6google8protobuf40_ExtensionRangeOptions_default_instance_E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN6google8protobuf40_ExtensionRangeOptions_default_instance_E, %bb.a ], [ %i.s, %bb.s ], [ %i.s, %.preheader ], [ %i.s, %bb.w ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6google8protobuf21ExtensionRangeOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_15OneofDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 2
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf31_OneofOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3210
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISH_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISH_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf12OneofOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISH_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISH_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE:bb.a

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp ult i64 %i.aa, 33
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i20.i = load i64, ptr %i.y, align 1
  %i.bm = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.bn, align 1
  %i.bo = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bp = zext i64 %i.bm to i128
  %i.bq = zext i64 %i.bo to i128
  %i.br = mul nuw i128 %i.bq, %i.bp               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.bv, align 1
  %i.bw = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bx = zext i64 %i.bu to i128
  %i.by = zext i64 %i.bw to i128
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = xor i128 %i.bz, %i.br
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = xor i128 %i.br, %i.cb
  %i.cd = xor i128 %i.cc, %i.bz
  %i.ce = trunc i128 %i.cd to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.m:                                             ; preds = %bb.k
  %.not.i54 = icmp ugt i64 %i.aa, 1024
  br i1 %.not.i54, label %bb.o, label %bb.n, !prof !163

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.y, i64 noundef %i.aa)
  %i.cg = xor i64 %i.cf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, 15902822328035259629 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.y, i64 noundef %i.aa)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, 87
  %i.co = add i64 %i.cn, %.0.i                    ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
  %i.cr = trunc i64 %i.co to i8
  %i.cs = and i8 %i.cr, 127                       ; 2 uses
  %i.ct = sub i64 %i.w, %i.cq                     ; 2 uses
  %i.cu = and i64 %i.k, %i.ct
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.p, label %bb.q, !prof !322

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cw = and i64 %i.ct, 15
  %i.cx = add nuw nsw i64 %i.cw, %i.cq
  %i.cy = and i64 %i.cx, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cz = and i64 %i.cq, %i.b
  %.not.i = icmp ult i64 %i.cz, %i.w
  br i1 %.not.i, label %bb.r, label %bb.t, !prof !322

bb.r:                                             ; preds = %bb.q
  %i.da = and i64 %i.cq, %i.a                     ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.da
  %i.dc = load <16 x i8>, ptr %i.db, align 1, !tbaa !22
  %i.dd = icmp slt <16 x i8> %i.dc, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.de, 0
  br i1 %.not26.i, label %bb.t, label %bb.s, !prof !163

bb.s:                                             ; preds = %bb.r
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.de, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = add nuw nsw i64 %i.da, %i.dg
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cs, i64 noundef %i.w, i64 noundef %i.cq)
  br label %bb.v

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.dh, %bb.s ], [ %i.cy, %bb.p ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cs, ptr %i.di, align 1, !tbaa !300
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !16
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !20  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.do = load i64, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.dp = icmp ult i64 %i.do, 16
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !20
  %i.dr = load i64, ptr %i.dm, align 8, !tbaa !22
  store i64 %i.dr, ptr %i.dk, align 8, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ds = load i64, ptr %i.z, align 8, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !23
  store ptr %i.dm, ptr %i.x, align 8, !tbaa !20
  store i64 0, ptr %i.z, align 8, !tbaa !23
  store i8 0, ptr %i.dm, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1778
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !1778
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_.exit, %bb.t
  %i.dx = add i16 %.sroa.055.062, -1
  %i.dy = and i16 %i.dx, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder24CheckEnumValueUniquenessERKNS4_19EnumDescriptorProtoEPKNS4_14EnumDescriptorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3217
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3219
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !498
  %i.b = getelementptr i8, ptr %.val1, i64 8
  %.val1.val = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.c, align 8, !tbaa !139 ; 2 uses
  %i.d = getelementptr i8, ptr %.val1.val, i64 32
  %.val1.val.val = load ptr, ptr %i.d, align 8, !tbaa !1780
  %.val.val.val.val = load ptr, ptr %.val.val.val, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %.val.val.val, i64 8
  %.val.val.val.val2 = load i64, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr i8, ptr %.val1.val.val, i64 8
  %.val1.val.val.val = load ptr, ptr %i.f, align 8, !tbaa !139 ; 2 uses
  %.val1.val.val.val.val = load ptr, ptr %.val1.val.val.val, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %.val1.val.val.val, i64 8
  %.val1.val.val.val.val3 = load i64, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3220
  store i64 %.val.val.val.val2, ptr %3, align 8, !noalias !3220
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.val.val.val.val, ptr %i.h, align 8, !noalias !3220
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3220
  store i64 %.val1.val.val.val.val3, ptr %4, align 8, !noalias !3220
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.val1.val.val.val.val, ptr %i.i, align 8, !noalias !3220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3229
  store ptr %3, ptr %2, align 8, !tbaa !22, !noalias !3229
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !766, !noalias !3229
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %i.k, align 8, !tbaa !22, !noalias !3229
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.l, align 8, !tbaa !766, !noalias !3229
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.378, i64 187, ptr nonnull %2, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3220
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3220
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_14EnumDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 16
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 196 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3232
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISE_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISE_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf11EnumOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISE_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISE_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
end_hunk_9
begin_hunk_10_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS4_19EnumDescriptorProtoEPKNS4_10DescriptorEPNS4_14EnumDescriptorERNS4_8internal13FlatAllocatorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3253 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.al
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !22, !alias.scope !3253
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.au

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_0JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !3246
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !3246
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3246
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3246
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS4_19EnumDescriptorProtoEPKNS4_10DescriptorEPNS4_14EnumDescriptorERNS4_8internal13FlatAllocatorEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3254  ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !20
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val1 = load i64, ptr %i.a, align 8, !tbaa !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3268)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16, !alias.scope !3271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !23, !alias.scope !3271
  store i8 0, ptr %i.b, align 8, !tbaa !22, !alias.scope !3271
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3271
  store i64 %.val.val1, ptr %2, align 16, !noalias !3271
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val.val, ptr %i.d, align 8, !noalias !3271
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 43, ptr nonnull @.str.379, ptr noundef nonnull %2, i64 noundef 1)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_1JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3271 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22, !alias.scope !3271
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.e

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_1JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3271
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS4_19EnumDescriptorProtoEPKNS4_10DescriptorEPNS4_14EnumDescriptorERNS4_8internal13FlatAllocatorEE3$_2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3272
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !498 ; 2 uses
  %i.a = getelementptr i8, ptr %.val.val, i64 4
  %.val.val.val = load i32, ptr %i.a, align 4, !tbaa !471
  %i.b = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val1 = load ptr, ptr %i.b, align 8, !tbaa !139 ; 2 uses
  %.val.val.val1.val = load ptr, ptr %.val.val.val1, align 8, !tbaa !20
  %i.c = getelementptr i8, ptr %.val.val.val1, i64 8
  %.val.val.val1.val2 = load i64, ptr %i.c, align 8, !tbaa !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3286
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.e = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.val.val.val, ptr noundef nonnull %i.d), !noalias !3286
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !847, !noalias !3286
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !848, !noalias !3286
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !16, !alias.scope !3290
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !23, !alias.scope !3290
  store i8 0, ptr %i.j, align 8, !tbaa !22, !alias.scope !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3290
  store i64 %.val.val.val1.val2, ptr %2, align 16, !noalias !3290
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val.val.val1.val, ptr %i.l, align 8, !noalias !3290
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.m, align 16, !noalias !3290
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.d, ptr %i.n, align 8, !noalias !3290
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 40, ptr nonnull @.str.380, ptr noundef nonnull %2, i64 noundef 2)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_2JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3290 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8, !tbaa !22, !alias.scope !3290
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.o

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_2JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3290
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3286
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS4_19EnumDescriptorProtoEPKNS4_10DescriptorEPNS4_14EnumDescriptorERNS4_8internal13FlatAllocatorEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3291
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !498
  %i.a = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %.val.val.val.val = load ptr, ptr %.val.val.val, align 8, !tbaa !20
  %i.b = getelementptr i8, ptr %.val.val.val, i64 8
  %.val.val.val.val1 = load i64, ptr %i.b, align 8, !tbaa !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16, !alias.scope !3308
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !23, !alias.scope !3308
  store i8 0, ptr %i.c, align 8, !tbaa !22, !alias.scope !3308
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3308
  store i64 %.val.val.val.val1, ptr %2, align 16, !noalias !3308
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val.val.val.val, ptr %i.e, align 8, !noalias !3308
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 28, ptr nonnull @.str.381, ptr noundef nonnull %2, i64 noundef 1)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_3JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3308 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !22, !alias.scope !3308
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.f

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder9BuildEnumERKNS1_19EnumDescriptorProtoEPKNS1_10DescriptorEPNS1_14EnumDescriptorERNS1_8internal13FlatAllocatorEE3$_3JEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3308
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_19EnumValueDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 2
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf35_EnumValueOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3309
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISF_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISF_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [80 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf16EnumValueOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISF_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISF_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.x

bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !535 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit, !prof !163

bb.r:                                             ; preds = %bb.q
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit

_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ca, %bb.r ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.q ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !818
  %.sroa.0.0.copyload = load i64, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.cg = call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.cf, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !186 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i61, label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK4absl12lts_202505125Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit

_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit: ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %i.co, %bb.t ], [ %.pre, %bb.u ]
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ct = icmp eq i8 %i.cs, 1
  %spec.select.i = select i1 %i.ct, ptr %i.cg, ptr null
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !559
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.cw, ptr %i.cm, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1317
  %i.db = call noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, ptr noundef %spec.select.i, i32 noundef %i.da) ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !670
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !166
  %i.de = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %.loopexit, !llvm.loop !3310

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bu, %bb.p ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.s, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit
  %.1 = phi ptr [ %i.s, %_ZNK6google8protobuf16EnumValueOptions14unknown_fieldsEv.exit ], [ @_ZN6google8protobuf35_EnumValueOptions_default_instance_E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN6google8protobuf35_EnumValueOptions_default_instance_E, %bb.a ], [ %i.s, %bb.s ], [ %i.s, %.preheader ], [ %i.s, %bb.w ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6google8protobuf16EnumValueOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14BuildEnumValueERKNS4_24EnumValueDescriptorProtoEPKNS4_14EnumDescriptorEPNS4_19EnumValueDescriptorERNS4_8internal13FlatAllocatorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !3311, !noalias !3313, !nonnull !51, !align !644
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498, !noalias !3313
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !3313 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20, !noalias !3313
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23, !noalias !3313
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3322, !noalias !3313, !nonnull !51, !align !644 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20, !noalias !3313
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23, !noalias !3313
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3323, !noalias !3313, !nonnull !51, !align !644
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1160, !noalias !3313
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137, !noalias !3313 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.q, align 1, !noalias !3313
  %i.r = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3324
  store i64 131, ptr %2, align 8, !noalias !3324
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.382, ptr %i.u, align 8, !noalias !3324
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.g, ptr %i.v, align 8, !noalias !3324
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.w, align 8, !noalias !3324
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 24, ptr %i.x, align 8, !noalias !3324
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.383, ptr %i.y, align 8, !noalias !3324
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.l, ptr %i.z, align 8, !noalias !3324
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.j, ptr %i.aa, align 8, !noalias !3324
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 19, ptr %i.ab, align 8, !noalias !3324
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.384, ptr %i.ac, align 8, !noalias !3324
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.r, ptr %i.ad, align 8, !noalias !3324
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.t, ptr %i.ae, align 8, !noalias !3324
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 2, ptr %i.af, align 8, !noalias !3324
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr @.str.231, ptr %i.ag, align 8, !noalias !3324
  call void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %2, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3324
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_17ServiceDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 4
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf33_ServiceOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 212 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3327
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 156
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISI_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISI_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf14ServiceOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISI_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISI_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.x

bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !535 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit, !prof !163

bb.r:                                             ; preds = %bb.q
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit

_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ca, %bb.r ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.q ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !818
  %.sroa.0.0.copyload = load i64, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.cg = call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.cf, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload) ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !799   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !186 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i61, label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK4absl12lts_202505125Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %.pre = load ptr, ptr %0, align 8, !tbaa !799
  br label %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit

_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit: ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %i.co, %bb.t ], [ %.pre, %bb.u ]
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !135
  %i.ct = icmp eq i8 %i.cs, 1
  %spec.select.i = select i1 %i.ct, ptr %i.cg, ptr null
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !559
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.cw, ptr %i.cm, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1317
  %i.db = call noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, ptr noundef %spec.select.i, i32 noundef %i.da) ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !670
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !166
  %i.de = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder17assert_mutex_heldEPKNS0_14DescriptorPoolE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !1315
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %.loopexit, !llvm.loop !3328

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bu, %bb.p ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.s, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit
  %.1 = phi ptr [ %i.s, %_ZNK6google8protobuf14ServiceOptions14unknown_fieldsEv.exit ], [ @_ZN6google8protobuf33_ServiceOptions_default_instance_E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN6google8protobuf33_ServiceOptions_default_instance_E, %bb.a ], [ %i.s, %bb.s ], [ %i.s, %.preheader ], [ %i.s, %bb.w ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6google8protobuf14ServiceOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder19AllocateOptionsImplINS0_16MethodDescriptorEEEPKNT_11OptionsTypeESt17basic_string_viewIcSt11char_traitsIcEESB_RKNS4_5ProtoEN4absl12lts_202505124SpanIKiEESB_RNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef byval(%"class.absl::lts_20250512::Span") align 8 %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.google::protobuf::(anonymous namespace)::OptionsToInterpret", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = and i32 %i.c, 8
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %18, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf32_MethodOptions_default_instance_E, ptr %18 ; 5 uses
  %.val.i = load ptr, ptr %8, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #42
  unreachable

.critedge.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !3329
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISJ_EEPT_i.exit, !prof !163

bb.e:                                             ; preds = %.critedge.i
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.p) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISJ_EEPT_i.exit: ; preds = %.critedge.i
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.r ; 7 uses
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf13MethodOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISJ_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %1, ptr %12, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.73, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %3, ptr %14, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.v = load ptr, ptr %11, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.x, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 7, ptr noundef nonnull @.str.346)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.x

bb.j:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayISJ_EEPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.aj = load ptr, ptr %15, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = invoke noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64 %i.al, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !554
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %.sroa.063.0.copyload = load ptr, ptr %6, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload65 = load i64, ptr %.sroa.2.0..sroa_idx64, align 8, !tbaa !19
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 %1, ptr %2, i64 %3, ptr %4, ptr %.sroa.063.0.copyload, i64 %.sroa.2.0.copyload65, ptr noundef %i.e, ptr noundef nonnull %i.s)
  invoke fastcc void @_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !728 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
end_hunk_10
