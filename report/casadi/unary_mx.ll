Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/unary_mx?download=true
inline.NumInlined: 1534
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN6casadi11casadi_mathIdE5printEhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.bf = load ptr, ptr %2, align 8, !tbaa !37, !noalias !81
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bf, i64 noundef %i.ba)
          to label %.noexc54 unwind label %bb.w   ; 6 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.bh, ptr %13, align 8, !tbaa !40, !alias.scope !81
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

bb.t:                                             ; preds = %.noexc54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.noexc54
  store ptr %i.bi, ptr %13, align 8, !tbaa !37, !alias.scope !81
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !38
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !38, !alias.scope !81
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.t
  %i.bq = phi i64 [ %i.bm, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !39, !alias.scope !81
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !37
  store i64 0, ptr %i.br, align 8, !tbaa !39
  store i8 0, ptr %i.bj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.bt, ptr %15, align 8, !tbaa !40, !alias.scope !82
  switch i8 %1, label %._crit_edge.i.i8.i [
    i8 0, label %._crit_edge.i.i.i
    i8 32, label %._crit_edge.i.i4.i
  ]

._crit_edge.i.i.i:                                ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !39, !alias.scope !82
  store i8 0, ptr %i.bt, align 8, !tbaa !38, !alias.scope !82
  br label %_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit

._crit_edge.i.i4.i:                               ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bt, ptr noundef nonnull align 1 dereferenceable(3) @.str.124, i64 3, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.bv, align 8, !tbaa !39, !alias.scope !82
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 0, ptr %i.bw, align 1, !tbaa !38, !alias.scope !82
  br label %_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit

._crit_edge.i.i8.i:                               ; preds = %bb.u
  store i8 41, ptr %i.bt, align 8, !tbaa !38, !alias.scope !82
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.bx, align 8, !tbaa !39, !alias.scope !82
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.by, align 1, !tbaa !38, !alias.scope !82
  br label %_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit

_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit:    ; preds = %._crit_edge.i.i8.i, %._crit_edge.i.i4.i, %._crit_edge.i.i.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit
  %i.bz = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.v
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.cd = load ptr, ptr %13, align 8, !tbaa !37   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bh
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !38
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ch = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.x:                                             ; preds = %_ZN6casadi11casadi_mathIdE4postB5cxx11Eh.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bt
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.x
  %i.cq = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.cs = load ptr, ptr %13, align 8, !tbaa !37   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bh
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.cu = load i64, ptr %i.bh, align 8, !tbaa !38
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.w
  %.pn31.pn = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  %i.cw = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !38
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn.pn.pn.pn.pn.pn.pn75, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  resume { ptr, i32 } %.pn31.pn.pn

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi7UnaryMX4evalEPPKdPPdPxS4_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double +qnan, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28
  %i.d = trunc i32 %i.c to i8
  %i.e = load ptr, ptr %1, align 8, !tbaa !84
  %i.f = load ptr, ptr %2, align 8, !tbaa !84
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !0
  %i.k = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx(i8 noundef zeroext %i.d, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx(i8 noundef zeroext %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  switch i8 %0, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 32, label %bb.ab
    i8 26, label %bb.ac
    i8 27, label %bb.ad
    i8 28, label %bb.ae
    i8 97, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ah
    i8 31, label %bb.ai
    i8 33, label %bb.aj
    i8 34, label %bb.ak
    i8 35, label %bb.al
    i8 36, label %bb.am
    i8 37, label %bb.an
    i8 38, label %bb.ao
    i8 39, label %bb.ap
    i8 40, label %bb.aq
    i8 41, label %bb.ar
    i8 42, label %bb.as
    i8 43, label %bb.at
    i8 86, label %bb.au
    i8 88, label %bb.av
    i8 87, label %bb.aw
    i8 93, label %bb.ax
    i8 94, label %bb.ay
    i8 95, label %bb.az
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %4, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check1117 = icmp ult i64 %4, 8
  %5 = ptrtoaddr ptr %3 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.b = sub i64 %6, %5
  %diff.check1115 = icmp ugt i64 %i.b, -32
  %or.cond = or i1 %min.iters.check1117, %diff.check1115
  br i1 %or.cond, label %.lr.ph.i.preheader1139, label %vector.ph1118

vector.ph1118:                                    ; preds = %.lr.ph.i.preheader
  %n.vec1119 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.c = shl i64 %n.vec1119, 3                    ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %3, i64 %i.c
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1118
  %index1121 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1126, %vector.body1120 ] ; 2 uses
  %i.f = shl i64 %index1121, 3                    ; 2 uses
  %next.gep1122 = getelementptr i8, ptr %1, i64 %i.f ; 2 uses
  %next.gep1123 = getelementptr i8, ptr %3, i64 %i.f ; 2 uses
  %i.g = getelementptr i8, ptr %next.gep1122, i64 16
  %wide.load1124 = load <2 x double>, ptr %next.gep1122, align 8, !tbaa !42
  %wide.load1125 = load <2 x double>, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr i8, ptr %next.gep1123, i64 16
  store <2 x double> %wide.load1124, ptr %next.gep1123, align 8, !tbaa !42
  store <2 x double> %wide.load1125, ptr %i.h, align 8, !tbaa !42
  %index.next1126 = add nuw i64 %index1121, 4     ; 2 uses
  %i.i = icmp eq i64 %index.next1126, %n.vec1119
  br i1 %i.i, label %middle.block1127, label %vector.body1120, !llvm.loop !85

middle.block1127:                                 ; preds = %vector.body1120
  %cmp.n1128 = icmp eq i64 %4, %n.vec1119
  br i1 %cmp.n1128, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i.preheader1139

.lr.ph.i.preheader1139:                           ; preds = %.lr.ph.i.preheader, %middle.block1127
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec1119, %middle.block1127 ] ; 4 uses
  %.058.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.d, %middle.block1127 ] ; 2 uses
  %.067.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.e, %middle.block1127 ] ; 2 uses
  %i.j = sub nsw i64 %4, %.09.i.ph
  %xtraiter1372 = and i64 %i.j, 7                 ; 2 uses
  %lcmp.mod1373.not = icmp eq i64 %xtraiter1372, 0
  br i1 %lcmp.mod1373.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader1139, %.lr.ph.i.prol
  %.09.i.prol = phi i64 [ %i.n, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader1139 ]
  %.058.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader1139 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader1139 ] ; 2 uses
  %prol.iter1374 = phi i64 [ %prol.iter1374.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader1139 ]
  %i.k = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 8 ; 2 uses
  %i.m = load double, ptr %.058.i.prol, align 8, !tbaa !42
  store double %i.m, ptr %.067.i.prol, align 8, !tbaa !42
  %i.n = add nuw nsw i64 %.09.i.prol, 1           ; 2 uses
  %prol.iter1374.next = add i64 %prol.iter1374, 1 ; 2 uses
  %prol.iter1374.cmp.not = icmp eq i64 %prol.iter1374.next, %xtraiter1372
  br i1 %prol.iter1374.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !86

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader1139
  %.09.i.unr = phi i64 [ %.09.i.ph, %.lr.ph.i.preheader1139 ], [ %i.n, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader1139 ], [ %i.k, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader1139 ], [ %i.l, %.lr.ph.i.prol ]
  %i.o = sub nsw i64 %.09.i.ph, %4
  %i.p = icmp ugt i64 %i.o, -8
  br i1 %i.p, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.s = load double, ptr %.058.i, align 8, !tbaa !42
  store double %i.s, ptr %.067.i, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.v = load double, ptr %i.q, align 8, !tbaa !42
  store double %i.v, ptr %i.r, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.y = load double, ptr %i.t, align 8, !tbaa !42
  store double %i.y, ptr %i.u, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.ab = load double, ptr %i.w, align 8, !tbaa !42
  store double %i.ab, ptr %i.x, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %.058.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.067.i, i64 40
  %i.ae = load double, ptr %i.z, align 8, !tbaa !42
  store double %i.ae, ptr %i.aa, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %.058.i, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.067.i, i64 48
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !42
  store double %i.ah, ptr %i.ad, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %.067.i, i64 56
  %i.ak = load double, ptr %i.af, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %.058.i, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.067.i, i64 64
  %i.an = load double, ptr %i.ai, align 8, !tbaa !42
  store double %i.an, ptr %i.aj, align 8, !tbaa !42
  %i.ao = add nuw nsw i64 %.09.i, 8               ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ao, %4
  br i1 %exitcond.not.i.7, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i, !llvm.loop !87

bb.c:                                             ; preds = %bb.a
  %i.ap = icmp sgt i64 %4, 0
  br i1 %i.ap, label %.lr.ph.i204.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i204.preheader:                            ; preds = %bb.c
  %min.iters.check1089 = icmp ult i64 %4, 12
  br i1 %min.iters.check1089, label %.lr.ph.i204.preheader1140, label %vector.memcheck1090

vector.memcheck1090:                              ; preds = %.lr.ph.i204.preheader
  %i.aq = shl i64 %4, 3                           ; 2 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.aq     ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound01091 = icmp ult ptr %3, %i.as
  %bound11092 = icmp ult ptr %1, %i.ar
  %found.conflict1093 = and i1 %bound01091, %bound11092
  %bound01094 = icmp ult ptr %3, %i.at
  %bound11095 = icmp ult ptr %2, %i.ar
  %found.conflict1096 = and i1 %bound01094, %bound11095
  %conflict.rdx1097 = or i1 %found.conflict1093, %found.conflict1096
  br i1 %conflict.rdx1097, label %.lr.ph.i204.preheader1140, label %vector.ph1098

vector.ph1098:                                    ; preds = %vector.memcheck1090
  %n.vec1099 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.au = shl i64 %n.vec1099, 3                   ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %3, i64 %i.au
  %i.ax = load double, ptr %2, align 8, !tbaa !42, !alias.scope !229
  %broadcast.splatinsert1106 = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat1107 = shufflevector <2 x double> %broadcast.splatinsert1106, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1098
  %index1101 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1108, %vector.body1100 ] ; 2 uses
  %i.ay = shl i64 %index1101, 3                   ; 2 uses
  %next.gep1102 = getelementptr i8, ptr %1, i64 %i.ay ; 2 uses
  %next.gep1103 = getelementptr i8, ptr %3, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep1102, i64 16
  %wide.load1104 = load <2 x double>, ptr %next.gep1102, align 8, !tbaa !42, !alias.scope !230
  %wide.load1105 = load <2 x double>, ptr %i.az, align 8, !tbaa !42, !alias.scope !230
  %i.ba = fadd <2 x double> %wide.load1104, %broadcast.splat1107
  %i.bb = fadd <2 x double> %wide.load1105, %broadcast.splat1107
  %i.bc = getelementptr i8, ptr %next.gep1103, i64 16
  store <2 x double> %i.ba, ptr %next.gep1103, align 8, !tbaa !42, !alias.scope !231, !noalias !232
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !42, !alias.scope !231, !noalias !232
  %index.next1108 = add nuw i64 %index1101, 4     ; 2 uses
  %i.bd = icmp eq i64 %index.next1108, %n.vec1099
  br i1 %i.bd, label %middle.block1109, label %vector.body1100, !llvm.loop !92

middle.block1109:                                 ; preds = %vector.body1100
  %cmp.n1110 = icmp eq i64 %4, %n.vec1099
  br i1 %cmp.n1110, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i204.preheader1140

.lr.ph.i204.preheader1140:                        ; preds = %vector.memcheck1090, %.lr.ph.i204.preheader, %middle.block1109
  %.09.i205.ph = phi i64 [ 0, %vector.memcheck1090 ], [ 0, %.lr.ph.i204.preheader ], [ %n.vec1099, %middle.block1109 ] ; 3 uses
  %.058.i206.ph = phi ptr [ %1, %vector.memcheck1090 ], [ %1, %.lr.ph.i204.preheader ], [ %i.av, %middle.block1109 ] ; 2 uses
  %.067.i207.ph = phi ptr [ %3, %vector.memcheck1090 ], [ %3, %.lr.ph.i204.preheader ], [ %i.aw, %middle.block1109 ] ; 2 uses
  %xtraiter1369.a = and i64 %4, 3                 ; 2 uses
  %lcmp.mod1370.not = icmp eq i64 %xtraiter1369.a, 0
  br i1 %lcmp.mod1370.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader1140, %.lr.ph.i204.prol
  %.09.i205.prol = phi i64 [ %i.bj, %.lr.ph.i204.prol ], [ %.09.i205.ph, %.lr.ph.i204.preheader1140 ]
  %.058.i206.prol = phi ptr [ %i.be, %.lr.ph.i204.prol ], [ %.058.i206.ph, %.lr.ph.i204.preheader1140 ] ; 2 uses
  %.067.i207.prol = phi ptr [ %i.bf, %.lr.ph.i204.prol ], [ %.067.i207.ph, %.lr.ph.i204.preheader1140 ] ; 2 uses
  %prol.iter1371 = phi i64 [ %prol.iter1371.next, %.lr.ph.i204.prol ], [ 0, %.lr.ph.i204.preheader1140 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.058.i206.prol, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.067.i207.prol, i64 8 ; 2 uses
  %i.bg = load double, ptr %.058.i206.prol, align 8, !tbaa !42
  %i.bh = load double, ptr %2, align 8, !tbaa !42
  %i.bi = fadd double %i.bg, %i.bh
  store double %i.bi, ptr %.067.i207.prol, align 8, !tbaa !42
  %i.bj = add nuw nsw i64 %.09.i205.prol, 1       ; 2 uses
  %prol.iter1371.next = add i64 %prol.iter1371, 1 ; 2 uses
  %prol.iter1371.cmp.not = icmp eq i64 %prol.iter1371.next, %xtraiter1369.a
  br i1 %prol.iter1371.cmp.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol, !llvm.loop !93

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader1140
  %.09.i205.unr = phi i64 [ %.09.i205.ph, %.lr.ph.i204.preheader1140 ], [ %i.bj, %.lr.ph.i204.prol ]
  %.058.i206.unr = phi ptr [ %.058.i206.ph, %.lr.ph.i204.preheader1140 ], [ %i.be, %.lr.ph.i204.prol ]
  %.067.i207.unr = phi ptr [ %.067.i207.ph, %.lr.ph.i204.preheader1140 ], [ %i.bf, %.lr.ph.i204.prol ]
  %i.bk = sub nsw i64 %.09.i205.ph, %4
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %.09.i205 = phi i64 [ %i.cg, %.lr.ph.i204 ], [ %.09.i205.unr, %.lr.ph.i204.prol.loopexit ]
  %.058.i206 = phi ptr [ %i.cb, %.lr.ph.i204 ], [ %.058.i206.unr, %.lr.ph.i204.prol.loopexit ] ; 5 uses
  %.067.i207 = phi ptr [ %i.cc, %.lr.ph.i204 ], [ %.067.i207.unr, %.lr.ph.i204.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i206, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i207, i64 8
  %i.bo = load double, ptr %.058.i206, align 8, !tbaa !42
  %i.bp = load double, ptr %2, align 8, !tbaa !42
  %i.bq = fadd double %i.bo, %i.bp
  store double %i.bq, ptr %.067.i207, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.058.i206, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.067.i207, i64 16
  %i.bt = load double, ptr %i.bm, align 8, !tbaa !42
  %i.bu = load double, ptr %2, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx:bb.a
  %next.gep1031 = getelementptr i8, ptr %3, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep1030, i64 16
  %wide.load1032 = load <2 x double>, ptr %next.gep1030, align 8, !tbaa !42, !alias.scope !238
  %wide.load1033 = load <2 x double>, ptr %i.ej, align 8, !tbaa !42, !alias.scope !238
  %i.ek = fmul <2 x double> %wide.load1032, %broadcast.splat1035
  %i.el = fmul <2 x double> %wide.load1033, %broadcast.splat1035
  %i.em = getelementptr i8, ptr %next.gep1031, i64 16
  store <2 x double> %i.ek, ptr %next.gep1031, align 8, !tbaa !42, !alias.scope !239, !noalias !240
  store <2 x double> %i.el, ptr %i.em, align 8, !tbaa !42, !alias.scope !239, !noalias !240
  %index.next1036 = add nuw i64 %index1029, 4     ; 2 uses
  %i.en = icmp eq i64 %index.next1036, %n.vec1027
  br i1 %i.en, label %middle.block1037, label %vector.body1028, !llvm.loop !106

middle.block1037:                                 ; preds = %vector.body1028
  %cmp.n1038 = icmp eq i64 %4, %n.vec1027
  br i1 %cmp.n1038, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214.preheader1144

.lr.ph.i214.preheader1144:                        ; preds = %vector.memcheck1018, %.lr.ph.i214.preheader, %middle.block1037
  %.09.i215.ph = phi i64 [ 0, %vector.memcheck1018 ], [ 0, %.lr.ph.i214.preheader ], [ %n.vec1027, %middle.block1037 ] ; 3 uses
  %.058.i216.ph = phi ptr [ %1, %vector.memcheck1018 ], [ %1, %.lr.ph.i214.preheader ], [ %i.ef, %middle.block1037 ] ; 2 uses
  %.067.i217.ph = phi ptr [ %3, %vector.memcheck1018 ], [ %3, %.lr.ph.i214.preheader ], [ %i.eg, %middle.block1037 ] ; 2 uses
  %xtraiter1363.a = and i64 %4, 3                 ; 2 uses
  %lcmp.mod1364.not.a = icmp eq i64 %xtraiter1363.a, 0
  br i1 %lcmp.mod1364.not.a, label %.lr.ph.i214.prol.loopexit, label %.lr.ph.i214.prol

.lr.ph.i214.prol:                                 ; preds = %.lr.ph.i214.preheader1144, %.lr.ph.i214.prol
  %.09.i215.prol = phi i64 [ %i.et, %.lr.ph.i214.prol ], [ %.09.i215.ph, %.lr.ph.i214.preheader1144 ]
  %.058.i216.prol = phi ptr [ %i.eo, %.lr.ph.i214.prol ], [ %.058.i216.ph, %.lr.ph.i214.preheader1144 ] ; 2 uses
  %.067.i217.prol = phi ptr [ %i.ep, %.lr.ph.i214.prol ], [ %.067.i217.ph, %.lr.ph.i214.preheader1144 ] ; 2 uses
  %prol.iter1365.a = phi i64 [ %prol.iter1365.next.a, %.lr.ph.i214.prol ], [ 0, %.lr.ph.i214.preheader1144 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.058.i216.prol, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.067.i217.prol, i64 8 ; 2 uses
  %i.eq = load double, ptr %.058.i216.prol, align 8, !tbaa !42
  %i.er = load double, ptr %2, align 8, !tbaa !42
  %i.es = fmul double %i.eq, %i.er
  store double %i.es, ptr %.067.i217.prol, align 8, !tbaa !42
  %i.et = add nuw nsw i64 %.09.i215.prol, 1       ; 2 uses
  %prol.iter1365.next.a = add i64 %prol.iter1365.a, 1 ; 2 uses
  %prol.iter1365.cmp.not.a = icmp eq i64 %prol.iter1365.next.a, %xtraiter1363.a
  br i1 %prol.iter1365.cmp.not.a, label %.lr.ph.i214.prol.loopexit, label %.lr.ph.i214.prol, !llvm.loop !107

.lr.ph.i214.prol.loopexit:                        ; preds = %.lr.ph.i214.prol, %.lr.ph.i214.preheader1144
  %.09.i215.unr = phi i64 [ %.09.i215.ph, %.lr.ph.i214.preheader1144 ], [ %i.et, %.lr.ph.i214.prol ]
  %.058.i216.unr = phi ptr [ %.058.i216.ph, %.lr.ph.i214.preheader1144 ], [ %i.eo, %.lr.ph.i214.prol ]
  %.067.i217.unr = phi ptr [ %.067.i217.ph, %.lr.ph.i214.preheader1144 ], [ %i.ep, %.lr.ph.i214.prol ]
  %i.eu = sub nsw i64 %.09.i215.ph, %4
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %.lr.ph.i214.prol.loopexit, %.lr.ph.i214
  %.09.i215 = phi i64 [ %i.fq, %.lr.ph.i214 ], [ %.09.i215.unr, %.lr.ph.i214.prol.loopexit ]
  %.058.i216 = phi ptr [ %i.fl, %.lr.ph.i214 ], [ %.058.i216.unr, %.lr.ph.i214.prol.loopexit ] ; 5 uses
  %.067.i217 = phi ptr [ %i.fm, %.lr.ph.i214 ], [ %.067.i217.unr, %.lr.ph.i214.prol.loopexit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.058.i216, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.067.i217, i64 8
  %i.ey = load double, ptr %.058.i216, align 8, !tbaa !42
  %i.ez = load double, ptr %2, align 8, !tbaa !42
  %i.fa = fmul double %i.ey, %i.ez
  store double %i.fa, ptr %.067.i217, align 8, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %.058.i216, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.067.i217, i64 16
  %i.fd = load double, ptr %i.ew, align 8, !tbaa !42
  %i.fe = load double, ptr %2, align 8, !tbaa !42
  %i.ff = fmul double %i.fd, %i.fe
  store double %i.ff, ptr %i.ex, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %.058.i216, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %.067.i217, i64 24
  %i.fi = load double, ptr %i.fb, align 8, !tbaa !42
  %i.fj = load double, ptr %2, align 8, !tbaa !42
  %i.fk = fmul double %i.fi, %i.fj
  store double %i.fk, ptr %i.fc, align 8, !tbaa !42
  %i.fl = getelementptr inbounds nuw i8, ptr %.058.i216, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %.067.i217, i64 32
  %i.fn = load double, ptr %i.fg, align 8, !tbaa !42
  %i.fo = load double, ptr %2, align 8, !tbaa !42
  %i.fp = fmul double %i.fn, %i.fo
  store double %i.fp, ptr %i.fh, align 8, !tbaa !42
  %i.fq = add nuw nsw i64 %.09.i215, 4            ; 2 uses
  %exitcond.not.i218.3 = icmp eq i64 %i.fq, %4
  br i1 %exitcond.not.i218.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214, !llvm.loop !108

bb.f:                                             ; preds = %bb.a
  %i.fr = icmp sgt i64 %4, 0
  br i1 %i.fr, label %.lr.ph.i219.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i219.preheader:                            ; preds = %bb.f
  %min.iters.check982 = icmp eq i64 %4, 1
  br i1 %min.iters.check982, label %.lr.ph.i219.preheader1146, label %vector.memcheck983

vector.memcheck983:                               ; preds = %.lr.ph.i219.preheader
  %i.fs = shl i64 %4, 3                           ; 2 uses
  %i.ft = getelementptr i8, ptr %3, i64 %i.fs     ; 2 uses
  %i.fu = getelementptr i8, ptr %1, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0984 = icmp ult ptr %3, %i.fu
  %bound1985 = icmp ult ptr %1, %i.ft
  %found.conflict986 = and i1 %bound0984, %bound1985
  %bound0987 = icmp ult ptr %3, %i.fv
  %bound1988 = icmp ult ptr %2, %i.ft
  %found.conflict989 = and i1 %bound0987, %bound1988
  %conflict.rdx990 = or i1 %found.conflict986, %found.conflict989
  br i1 %conflict.rdx990, label %.lr.ph.i219.preheader1146, label %vector.ph991

vector.ph991:                                     ; preds = %vector.memcheck983
  %n.vec992 = and i64 %4, 9223372036854775806     ; 4 uses
  %i.fw = shl i64 %n.vec992, 3                    ; 2 uses
  %i.fx = getelementptr i8, ptr %1, i64 %i.fw
  %i.fy = getelementptr i8, ptr %3, i64 %i.fw
  %i.fz = load double, ptr %2, align 8, !tbaa !42, !alias.scope !241
  %broadcast.splatinsert998 = insertelement <2 x double> poison, double %i.fz, i64 0
  %broadcast.splat999 = shufflevector <2 x double> %broadcast.splatinsert998, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next1000, %vector.body993 ] ; 2 uses
  %i.ga = shl i64 %index994, 3                    ; 2 uses
  %next.gep995 = getelementptr i8, ptr %1, i64 %i.ga
  %next.gep996 = getelementptr i8, ptr %3, i64 %i.ga
  %wide.load997 = load <2 x double>, ptr %next.gep995, align 8, !tbaa !42, !alias.scope !242
  %i.gb = fdiv <2 x double> %wide.load997, %broadcast.splat999
  store <2 x double> %i.gb, ptr %next.gep996, align 8, !tbaa !42, !alias.scope !243, !noalias !244
  %index.next1000 = add nuw i64 %index994, 2      ; 2 uses
  %i.gc = icmp eq i64 %index.next1000, %n.vec992
  br i1 %i.gc, label %middle.block1001, label %vector.body993, !llvm.loop !113

middle.block1001:                                 ; preds = %vector.body993
  %cmp.n1002 = icmp eq i64 %4, %n.vec992
  br i1 %cmp.n1002, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219.preheader1146

.lr.ph.i219.preheader1146:                        ; preds = %vector.memcheck983, %.lr.ph.i219.preheader, %middle.block1001
  %.09.i220.ph = phi i64 [ 0, %vector.memcheck983 ], [ 0, %.lr.ph.i219.preheader ], [ %n.vec992, %middle.block1001 ] ; 4 uses
  %.058.i221.ph = phi ptr [ %1, %vector.memcheck983 ], [ %1, %.lr.ph.i219.preheader ], [ %i.fx, %middle.block1001 ] ; 2 uses
  %.067.i222.ph = phi ptr [ %3, %vector.memcheck983 ], [ %3, %.lr.ph.i219.preheader ], [ %i.fy, %middle.block1001 ] ; 2 uses
  %i.gd = sub nsw i64 %4, %.09.i220.ph
  %xtraiter1360 = and i64 %i.gd, 3                ; 2 uses
  %lcmp.mod1361.not = icmp eq i64 %xtraiter1360, 0
  br i1 %lcmp.mod1361.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol

.lr.ph.i219.prol:                                 ; preds = %.lr.ph.i219.preheader1146, %.lr.ph.i219.prol
  %.09.i220.prol = phi i64 [ %i.gj, %.lr.ph.i219.prol ], [ %.09.i220.ph, %.lr.ph.i219.preheader1146 ]
  %.058.i221.prol = phi ptr [ %i.ge, %.lr.ph.i219.prol ], [ %.058.i221.ph, %.lr.ph.i219.preheader1146 ] ; 2 uses
  %.067.i222.prol = phi ptr [ %i.gf, %.lr.ph.i219.prol ], [ %.067.i222.ph, %.lr.ph.i219.preheader1146 ] ; 2 uses
  %prol.iter1362 = phi i64 [ %prol.iter1362.next, %.lr.ph.i219.prol ], [ 0, %.lr.ph.i219.preheader1146 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.058.i221.prol, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.067.i222.prol, i64 8 ; 2 uses
  %i.gg = load double, ptr %.058.i221.prol, align 8, !tbaa !42
  %i.gh = load double, ptr %2, align 8, !tbaa !42
  %i.gi = fdiv double %i.gg, %i.gh
  store double %i.gi, ptr %.067.i222.prol, align 8, !tbaa !42
  %i.gj = add nuw nsw i64 %.09.i220.prol, 1       ; 2 uses
  %prol.iter1362.next = add i64 %prol.iter1362, 1 ; 2 uses
  %prol.iter1362.cmp.not = icmp eq i64 %prol.iter1362.next, %xtraiter1360
  br i1 %prol.iter1362.cmp.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol, !llvm.loop !114

.lr.ph.i219.prol.loopexit:                        ; preds = %.lr.ph.i219.prol, %.lr.ph.i219.preheader1146
  %.09.i220.unr = phi i64 [ %.09.i220.ph, %.lr.ph.i219.preheader1146 ], [ %i.gj, %.lr.ph.i219.prol ]
  %.058.i221.unr = phi ptr [ %.058.i221.ph, %.lr.ph.i219.preheader1146 ], [ %i.ge, %.lr.ph.i219.prol ]
  %.067.i222.unr = phi ptr [ %.067.i222.ph, %.lr.ph.i219.preheader1146 ], [ %i.gf, %.lr.ph.i219.prol ]
  %i.gk = sub nsw i64 %.09.i220.ph, %4
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219.prol.loopexit, %.lr.ph.i219
  %.09.i220 = phi i64 [ %i.hg, %.lr.ph.i219 ], [ %.09.i220.unr, %.lr.ph.i219.prol.loopexit ]
  %.058.i221 = phi ptr [ %i.hb, %.lr.ph.i219 ], [ %.058.i221.unr, %.lr.ph.i219.prol.loopexit ] ; 5 uses
  %.067.i222 = phi ptr [ %i.hc, %.lr.ph.i219 ], [ %.067.i222.unr, %.lr.ph.i219.prol.loopexit ] ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.058.i221, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.067.i222, i64 8
  %i.go = load double, ptr %.058.i221, align 8, !tbaa !42
  %i.gp = load double, ptr %2, align 8, !tbaa !42
  %i.gq = fdiv double %i.go, %i.gp
  store double %i.gq, ptr %.067.i222, align 8, !tbaa !42
  %i.gr = getelementptr inbounds nuw i8, ptr %.058.i221, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.067.i222, i64 16
  %i.gt = load double, ptr %i.gm, align 8, !tbaa !42
  %i.gu = load double, ptr %2, align 8, !tbaa !42
  %i.gv = fdiv double %i.gt, %i.gu
  store double %i.gv, ptr %i.gn, align 8, !tbaa !42
  %i.gw = getelementptr inbounds nuw i8, ptr %.058.i221, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %.067.i222, i64 24
  %i.gy = load double, ptr %i.gr, align 8, !tbaa !42
  %i.gz = load double, ptr %2, align 8, !tbaa !42
  %i.ha = fdiv double %i.gy, %i.gz
  store double %i.ha, ptr %i.gs, align 8, !tbaa !42
  %i.hb = getelementptr inbounds nuw i8, ptr %.058.i221, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %.067.i222, i64 32
  %i.hd = load double, ptr %i.gw, align 8, !tbaa !42
  %i.he = load double, ptr %2, align 8, !tbaa !42
  %i.hf = fdiv double %i.hd, %i.he
  store double %i.hf, ptr %i.gx, align 8, !tbaa !42
  %i.hg = add nuw nsw i64 %.09.i220, 4            ; 2 uses
  %exitcond.not.i223.3 = icmp eq i64 %i.hg, %4
  br i1 %exitcond.not.i223.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219, !llvm.loop !115

bb.g:                                             ; preds = %bb.a
  %i.hh = icmp sgt i64 %4, 0
  br i1 %i.hh, label %.lr.ph.i224.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i224.preheader:                            ; preds = %bb.g
  %min.iters.check956 = icmp ult i64 %4, 6
  %7 = ptrtoaddr ptr %3 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.hi = sub i64 %8, %7
  %diff.check954 = icmp ugt i64 %i.hi, -32
  %or.cond1132 = or i1 %min.iters.check956, %diff.check954
  br i1 %or.cond1132, label %.lr.ph.i224.preheader1148, label %vector.ph957

vector.ph957:                                     ; preds = %.lr.ph.i224.preheader
  %n.vec958 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.hj = shl i64 %n.vec958, 3                    ; 2 uses
  %i.hk = getelementptr i8, ptr %1, i64 %i.hj
  %i.hl = getelementptr i8, ptr %3, i64 %i.hj
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %vector.ph957
  %index960 = phi i64 [ 0, %vector.ph957 ], [ %index.next965, %vector.body959 ] ; 2 uses
  %i.hm = shl i64 %index960, 3                    ; 2 uses
  %next.gep961 = getelementptr i8, ptr %1, i64 %i.hm ; 2 uses
  %next.gep962 = getelementptr i8, ptr %3, i64 %i.hm ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep961, i64 16
  %wide.load963 = load <2 x double>, ptr %next.gep961, align 8, !tbaa !42
  %wide.load964 = load <2 x double>, ptr %i.hn, align 8, !tbaa !42
  %i.ho = fneg <2 x double> %wide.load963
  %i.hp = fneg <2 x double> %wide.load964
  %i.hq = getelementptr i8, ptr %next.gep962, i64 16
  store <2 x double> %i.ho, ptr %next.gep962, align 8, !tbaa !42
  store <2 x double> %i.hp, ptr %i.hq, align 8, !tbaa !42
  %index.next965 = add nuw i64 %index960, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next965, %n.vec958
  br i1 %i.hr, label %middle.block966, label %vector.body959, !llvm.loop !116

middle.block966:                                  ; preds = %vector.body959
  %cmp.n967 = icmp eq i64 %4, %n.vec958
  br i1 %cmp.n967, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224.preheader1148

.lr.ph.i224.preheader1148:                        ; preds = %.lr.ph.i224.preheader, %middle.block966
  %.09.i225.ph = phi i64 [ 0, %.lr.ph.i224.preheader ], [ %n.vec958, %middle.block966 ] ; 3 uses
  %.058.i226.ph = phi ptr [ %1, %.lr.ph.i224.preheader ], [ %i.hk, %middle.block966 ] ; 2 uses
  %.067.i227.ph = phi ptr [ %3, %.lr.ph.i224.preheader ], [ %i.hl, %middle.block966 ] ; 2 uses
  %xtraiter1357.a = and i64 %4, 3                 ; 2 uses
  %lcmp.mod1358.not = icmp eq i64 %xtraiter1357.a, 0
  br i1 %lcmp.mod1358.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol

.lr.ph.i224.prol:                                 ; preds = %.lr.ph.i224.preheader1148, %.lr.ph.i224.prol
  %.09.i225.prol = phi i64 [ %i.hw, %.lr.ph.i224.prol ], [ %.09.i225.ph, %.lr.ph.i224.preheader1148 ]
  %.058.i226.prol = phi ptr [ %i.hs, %.lr.ph.i224.prol ], [ %.058.i226.ph, %.lr.ph.i224.preheader1148 ] ; 2 uses
  %.067.i227.prol = phi ptr [ %i.ht, %.lr.ph.i224.prol ], [ %.067.i227.ph, %.lr.ph.i224.preheader1148 ] ; 2 uses
  %prol.iter1359 = phi i64 [ %prol.iter1359.next, %.lr.ph.i224.prol ], [ 0, %.lr.ph.i224.preheader1148 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.058.i226.prol, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.067.i227.prol, i64 8 ; 2 uses
  %i.hu = load double, ptr %.058.i226.prol, align 8, !tbaa !42
  %i.hv = fneg double %i.hu
  store double %i.hv, ptr %.067.i227.prol, align 8, !tbaa !42
  %i.hw = add nuw nsw i64 %.09.i225.prol, 1       ; 2 uses
  %prol.iter1359.next = add i64 %prol.iter1359, 1 ; 2 uses
  %prol.iter1359.cmp.not = icmp eq i64 %prol.iter1359.next, %xtraiter1357.a
  br i1 %prol.iter1359.cmp.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol, !llvm.loop !117

.lr.ph.i224.prol.loopexit:                        ; preds = %.lr.ph.i224.prol, %.lr.ph.i224.preheader1148
  %.09.i225.unr = phi i64 [ %.09.i225.ph, %.lr.ph.i224.preheader1148 ], [ %i.hw, %.lr.ph.i224.prol ]
  %.058.i226.unr = phi ptr [ %.058.i226.ph, %.lr.ph.i224.preheader1148 ], [ %i.hs, %.lr.ph.i224.prol ]
  %.067.i227.unr = phi ptr [ %.067.i227.ph, %.lr.ph.i224.preheader1148 ], [ %i.ht, %.lr.ph.i224.prol ]
  %i.hx = sub nsw i64 %.09.i225.ph, %4
  %i.hy = icmp ugt i64 %i.hx, -4
  br i1 %i.hy, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224
  %.09.i225 = phi i64 [ %i.ip, %.lr.ph.i224 ], [ %.09.i225.unr, %.lr.ph.i224.prol.loopexit ]
  %.058.i226 = phi ptr [ %i.il, %.lr.ph.i224 ], [ %.058.i226.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %.067.i227 = phi ptr [ %i.im, %.lr.ph.i224 ], [ %.067.i227.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.058.i226, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %.067.i227, i64 8
  %i.ib = load double, ptr %.058.i226, align 8, !tbaa !42
  %i.ic = fneg double %i.ib
  store double %i.ic, ptr %.067.i227, align 8, !tbaa !42
  %i.id = getelementptr inbounds nuw i8, ptr %.058.i226, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %.067.i227, i64 16
  %i.if = load double, ptr %i.hz, align 8, !tbaa !42
  %i.ig = fneg double %i.if
  store double %i.ig, ptr %i.ia, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %.058.i226, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %.067.i227, i64 24
  %i.ij = load double, ptr %i.id, align 8, !tbaa !42
  %i.ik = fneg double %i.ij
  store double %i.ik, ptr %i.ie, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %.058.i226, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %.067.i227, i64 32
  %i.in = load double, ptr %i.ih, align 8, !tbaa !42
  %i.io = fneg double %i.in
  store double %i.io, ptr %i.ii, align 8, !tbaa !42
  %i.ip = add nuw nsw i64 %.09.i225, 4            ; 2 uses
  %exitcond.not.i228.3 = icmp eq i64 %i.ip, %4
  br i1 %exitcond.not.i228.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224, !llvm.loop !118

bb.h:                                             ; preds = %bb.a
  %i.iq = icmp sgt i64 %4, 0
  br i1 %i.iq, label %.lr.ph.i229, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i229:                                      ; preds = %bb.h, %.lr.ph.i229
  %.09.i230 = phi i64 [ %i.iv, %.lr.ph.i229 ], [ 0, %bb.h ]
  %.058.i231 = phi ptr [ %i.ir, %.lr.ph.i229 ], [ %1, %bb.h ] ; 2 uses
  %.067.i232 = phi ptr [ %i.is, %.lr.ph.i229 ], [ %3, %bb.h ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.058.i231, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %.067.i232, i64 8
  %i.it = load double, ptr %.058.i231, align 8, !tbaa !42
  %i.iu = tail call double @exp(double noundef %i.it) #17
  store double %i.iu, ptr %.067.i232, align 8, !tbaa !42
  %i.iv = add nuw nsw i64 %.09.i230, 1            ; 2 uses
  %exitcond.not.i233 = icmp eq i64 %i.iv, %4
  br i1 %exitcond.not.i233, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i229, !llvm.loop !119

bb.i:                                             ; preds = %bb.a
  %i.iw = icmp sgt i64 %4, 0
  br i1 %i.iw, label %.lr.ph.i234, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i234:                                      ; preds = %bb.i, %.lr.ph.i234
  %.09.i235 = phi i64 [ %i.jb, %.lr.ph.i234 ], [ 0, %bb.i ]
  %.058.i236 = phi ptr [ %i.ix, %.lr.ph.i234 ], [ %1, %bb.i ] ; 2 uses
  %.067.i237 = phi ptr [ %i.iy, %.lr.ph.i234 ], [ %3, %bb.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.058.i236, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.067.i237, i64 8
  %i.iz = load double, ptr %.058.i236, align 8, !tbaa !42
  %i.ja = tail call double @log(double noundef %i.iz) #17
  store double %i.ja, ptr %.067.i237, align 8, !tbaa !42
  %i.jb = add nuw nsw i64 %.09.i235, 1            ; 2 uses
  %exitcond.not.i238 = icmp eq i64 %i.jb, %4
  br i1 %exitcond.not.i238, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i234, !llvm.loop !120

bb.j:                                             ; preds = %bb.a
  %i.jc = icmp sgt i64 %4, 0
  br i1 %i.jc, label %.lr.ph.i239.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i239.preheader:                            ; preds = %bb.j
  %i.jd = add nsw i64 %4, -1
  %xtraiter1351.a = and i64 %4, 3                 ; 3 uses
  %i.je = icmp ult i64 %i.jd, 3
  br i1 %i.je, label %.lr.ph.i239.epil.preheader, label %.lr.ph.i239.preheader.new

.lr.ph.i239.preheader.new:                        ; preds = %.lr.ph.i239.preheader
  %unroll_iter1355.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239, %.lr.ph.i239.preheader.new
  %.058.i241 = phi ptr [ %1, %.lr.ph.i239.preheader.new ], [ %i.ju, %.lr.ph.i239 ] ; 5 uses
  %.067.i242 = phi ptr [ %3, %.lr.ph.i239.preheader.new ], [ %i.jv, %.lr.ph.i239 ] ; 5 uses
  %niter1356.a = phi i64 [ 0, %.lr.ph.i239.preheader.new ], [ %niter1356.next.3.a, %.lr.ph.i239 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.058.i241, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.067.i242, i64 8
  %i.jh = load double, ptr %.058.i241, align 8, !tbaa !42
  %i.ji = load double, ptr %2, align 8, !tbaa !42
  %i.jj = tail call double @pow(double noundef %i.jh, double noundef %i.ji) #17
  store double %i.jj, ptr %.067.i242, align 8, !tbaa !42
  %i.jk = getelementptr inbounds nuw i8, ptr %.058.i241, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %.067.i242, i64 16
  %i.jm = load double, ptr %i.jf, align 8, !tbaa !42
  %i.jn = load double, ptr %2, align 8, !tbaa !42
  %i.jo = tail call double @pow(double noundef %i.jm, double noundef %i.jn) #17
  store double %i.jo, ptr %i.jg, align 8, !tbaa !42
  %i.jp = getelementptr inbounds nuw i8, ptr %.058.i241, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %.067.i242, i64 24
  %i.jr = load double, ptr %i.jk, align 8, !tbaa !42
  %i.js = load double, ptr %2, align 8, !tbaa !42
  %i.jt = tail call double @pow(double noundef %i.jr, double noundef %i.js) #17
  store double %i.jt, ptr %i.jl, align 8, !tbaa !42
  %i.ju = getelementptr inbounds nuw i8, ptr %.058.i241, i64 32 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.067.i242, i64 32 ; 2 uses
  %i.jw = load double, ptr %i.jp, align 8, !tbaa !42
  %i.jx = load double, ptr %2, align 8, !tbaa !42
  %i.jy = tail call double @pow(double noundef %i.jw, double noundef %i.jx) #17
  store double %i.jy, ptr %i.jq, align 8, !tbaa !42
  %niter1356.next.3.a = add nuw nsw i64 %niter1356.a, 4 ; 2 uses
  %niter1356.ncmp.3.a = icmp eq i64 %niter1356.next.3.a, %unroll_iter1355.a
  br i1 %niter1356.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1152.unr-lcssa, label %.lr.ph.i239, !llvm.loop !121

bb.k:                                             ; preds = %bb.a
  %i.jz = icmp sgt i64 %4, 0
  br i1 %i.jz, label %.lr.ph.i244.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i244.preheader:                            ; preds = %bb.k
  %i.ka = add nsw i64 %4, -1
  %xtraiter1345.a = and i64 %4, 3                 ; 3 uses
  %i.kb = icmp ult i64 %i.ka, 3
  br i1 %i.kb, label %.lr.ph.i244.epil.preheader, label %.lr.ph.i244.preheader.new

.lr.ph.i244.preheader.new:                        ; preds = %.lr.ph.i244.preheader
  %unroll_iter1349.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244, %.lr.ph.i244.preheader.new
  %.058.i246 = phi ptr [ %1, %.lr.ph.i244.preheader.new ], [ %i.kr, %.lr.ph.i244 ] ; 5 uses
  %.067.i247 = phi ptr [ %3, %.lr.ph.i244.preheader.new ], [ %i.ks, %.lr.ph.i244 ] ; 5 uses
  %niter1350.a = phi i64 [ 0, %.lr.ph.i244.preheader.new ], [ %niter1350.next.3.a, %.lr.ph.i244 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.058.i246, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.067.i247, i64 8
  %i.ke = load double, ptr %.058.i246, align 8, !tbaa !42
  %i.kf = load double, ptr %2, align 8, !tbaa !42
  %i.kg = tail call double @pow(double noundef %i.ke, double noundef %i.kf) #17
  store double %i.kg, ptr %.067.i247, align 8, !tbaa !42
  %i.kh = getelementptr inbounds nuw i8, ptr %.058.i246, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.067.i247, i64 16
  %i.kj = load double, ptr %i.kc, align 8, !tbaa !42
  %i.kk = load double, ptr %2, align 8, !tbaa !42
  %i.kl = tail call double @pow(double noundef %i.kj, double noundef %i.kk) #17
  store double %i.kl, ptr %i.kd, align 8, !tbaa !42
  %i.km = getelementptr inbounds nuw i8, ptr %.058.i246, i64 24
  %i.kn = getelementptr inbounds nuw i8, ptr %.067.i247, i64 24
  %i.ko = load double, ptr %i.kh, align 8, !tbaa !42
  %i.kp = load double, ptr %2, align 8, !tbaa !42
  %i.kq = tail call double @pow(double noundef %i.ko, double noundef %i.kp) #17
  store double %i.kq, ptr %i.ki, align 8, !tbaa !42
  %i.kr = getelementptr inbounds nuw i8, ptr %.058.i246, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.067.i247, i64 32 ; 2 uses
  %i.kt = load double, ptr %i.km, align 8, !tbaa !42
  %i.ku = load double, ptr %2, align 8, !tbaa !42
  %i.kv = tail call double @pow(double noundef %i.kt, double noundef %i.ku) #17
  store double %i.kv, ptr %i.kn, align 8, !tbaa !42
  %niter1350.next.3.a = add nuw nsw i64 %niter1350.a, 4 ; 2 uses
  %niter1350.ncmp.3.a = icmp eq i64 %niter1350.next.3.a, %unroll_iter1349.a
  br i1 %niter1350.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1153.unr-lcssa, label %.lr.ph.i244, !llvm.loop !122

bb.l:                                             ; preds = %bb.a
  %i.kw = icmp sgt i64 %4, 0
  br i1 %i.kw, label %.lr.ph.i249.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i249.preheader:                            ; preds = %bb.l
  %i.kx = add nsw i64 %4, -1
  %xtraiter1339.a = and i64 %4, 3                 ; 3 uses
  %i.ky = icmp ult i64 %i.kx, 3
  br i1 %i.ky, label %.lr.ph.i249.epil.preheader, label %.lr.ph.i249.preheader.new

.lr.ph.i249.preheader.new:                        ; preds = %.lr.ph.i249.preheader
  %unroll_iter1343.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %.lr.ph.i249, %.lr.ph.i249.preheader.new
  %.058.i251 = phi ptr [ %1, %.lr.ph.i249.preheader.new ], [ %i.ll, %.lr.ph.i249 ] ; 5 uses
  %.067.i252 = phi ptr [ %3, %.lr.ph.i249.preheader.new ], [ %i.lm, %.lr.ph.i249 ] ; 5 uses
  %niter1344.a = phi i64 [ 0, %.lr.ph.i249.preheader.new ], [ %niter1344.next.3.a, %.lr.ph.i249 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.058.i251, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.067.i252, i64 8
  %i.lb = load double, ptr %.058.i251, align 8, !tbaa !42
  %i.lc = tail call double @sqrt(double noundef %i.lb) #17
  store double %i.lc, ptr %.067.i252, align 8, !tbaa !42
  %i.ld = getelementptr inbounds nuw i8, ptr %.058.i251, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %.067.i252, i64 16
  %i.lf = load double, ptr %i.kz, align 8, !tbaa !42
  %i.lg = tail call double @sqrt(double noundef %i.lf) #17
  store double %i.lg, ptr %i.la, align 8, !tbaa !42
  %i.lh = getelementptr inbounds nuw i8, ptr %.058.i251, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %.067.i252, i64 24
  %i.lj = load double, ptr %i.ld, align 8, !tbaa !42
  %i.lk = tail call double @sqrt(double noundef %i.lj) #17
  store double %i.lk, ptr %i.le, align 8, !tbaa !42
  %i.ll = getelementptr inbounds nuw i8, ptr %.058.i251, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.067.i252, i64 32 ; 2 uses
  %i.ln = load double, ptr %i.lh, align 8, !tbaa !42
  %i.lo = tail call double @sqrt(double noundef %i.ln) #17
  store double %i.lo, ptr %i.li, align 8, !tbaa !42
  %niter1344.next.3.a = add nuw nsw i64 %niter1344.a, 4 ; 2 uses
  %niter1344.ncmp.3.a = icmp eq i64 %niter1344.next.3.a, %unroll_iter1343.a
  br i1 %niter1344.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1154.unr-lcssa, label %.lr.ph.i249, !llvm.loop !123

bb.m:                                             ; preds = %bb.a
  %i.lp = icmp sgt i64 %4, 0
  br i1 %i.lp, label %.lr.ph.i254.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i254.preheader:                            ; preds = %bb.m
  %min.iters.check938 = icmp ult i64 %4, 6
  %9 = ptrtoaddr ptr %3 to i64
  %10 = ptrtoaddr ptr %1 to i64
  %i.lq = sub i64 %10, %9
  %diff.check936 = icmp ugt i64 %i.lq, -32
  %or.cond1133 = or i1 %min.iters.check938, %diff.check936
  br i1 %or.cond1133, label %.lr.ph.i254.preheader1155, label %vector.ph939

vector.ph939:                                     ; preds = %.lr.ph.i254.preheader
  %n.vec940 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.lr = shl i64 %n.vec940, 3                    ; 2 uses
  %i.ls = getelementptr i8, ptr %1, i64 %i.lr
  %i.lt = getelementptr i8, ptr %3, i64 %i.lr
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %vector.ph939
  %index942 = phi i64 [ 0, %vector.ph939 ], [ %index.next947, %vector.body941 ] ; 2 uses
  %i.lu = shl i64 %index942, 3                    ; 2 uses
  %next.gep943 = getelementptr i8, ptr %1, i64 %i.lu ; 2 uses
  %next.gep944 = getelementptr i8, ptr %3, i64 %i.lu ; 2 uses
  %i.lv = getelementptr i8, ptr %next.gep943, i64 16
  %wide.load945 = load <2 x double>, ptr %next.gep943, align 8, !tbaa !42 ; 2 uses
  %wide.load946 = load <2 x double>, ptr %i.lv, align 8, !tbaa !42 ; 2 uses
  %i.lw = fmul <2 x double> %wide.load945, %wide.load945
  %i.lx = fmul <2 x double> %wide.load946, %wide.load946
  %i.ly = getelementptr i8, ptr %next.gep944, i64 16
  store <2 x double> %i.lw, ptr %next.gep944, align 8, !tbaa !42
  store <2 x double> %i.lx, ptr %i.ly, align 8, !tbaa !42
  %index.next947 = add nuw i64 %index942, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next947, %n.vec940
  br i1 %i.lz, label %middle.block948, label %vector.body941, !llvm.loop !124

middle.block948:                                  ; preds = %vector.body941
  %cmp.n949 = icmp eq i64 %4, %n.vec940
  br i1 %cmp.n949, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i254.preheader1155

.lr.ph.i254.preheader1155:                        ; preds = %.lr.ph.i254.preheader, %middle.block948
  %.09.i255.ph = phi i64 [ 0, %.lr.ph.i254.preheader ], [ %n.vec940, %middle.block948 ] ; 3 uses
  %.058.i256.ph = phi ptr [ %1, %.lr.ph.i254.preheader ], [ %i.ls, %middle.block948 ] ; 2 uses
  %.067.i257.ph = phi ptr [ %3, %.lr.ph.i254.preheader ], [ %i.lt, %middle.block948 ] ; 2 uses
  %xtraiter1336 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1336, 0
  br i1 %lcmp.mod1337.not, label %.lr.ph.i254.prol.loopexit, label %.lr.ph.i254.prol

.lr.ph.i254.prol:                                 ; preds = %.lr.ph.i254.preheader1155, %.lr.ph.i254.prol
  %.09.i255.prol = phi i64 [ %i.me, %.lr.ph.i254.prol ], [ %.09.i255.ph, %.lr.ph.i254.preheader1155 ]
  %.058.i256.prol = phi ptr [ %i.ma, %.lr.ph.i254.prol ], [ %.058.i256.ph, %.lr.ph.i254.preheader1155 ] ; 2 uses
  %.067.i257.prol = phi ptr [ %i.mb, %.lr.ph.i254.prol ], [ %.067.i257.ph, %.lr.ph.i254.preheader1155 ] ; 2 uses
  %prol.iter1338 = phi i64 [ %prol.iter1338.next, %.lr.ph.i254.prol ], [ 0, %.lr.ph.i254.preheader1155 ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.058.i256.prol, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.067.i257.prol, i64 8 ; 2 uses
  %i.mc = load double, ptr %.058.i256.prol, align 8, !tbaa !42 ; 2 uses
  %i.md = fmul double %i.mc, %i.mc
  store double %i.md, ptr %.067.i257.prol, align 8, !tbaa !42
  %i.me = add nuw nsw i64 %.09.i255.prol, 1       ; 2 uses
  %prol.iter1338.next = add i64 %prol.iter1338, 1 ; 2 uses
  %prol.iter1338.cmp.not = icmp eq i64 %prol.iter1338.next, %xtraiter1336
  br i1 %prol.iter1338.cmp.not, label %.lr.ph.i254.prol.loopexit, label %.lr.ph.i254.prol, !llvm.loop !125

.lr.ph.i254.prol.loopexit:                        ; preds = %.lr.ph.i254.prol, %.lr.ph.i254.preheader1155
  %.09.i255.unr = phi i64 [ %.09.i255.ph, %.lr.ph.i254.preheader1155 ], [ %i.me, %.lr.ph.i254.prol ]
  %.058.i256.unr = phi ptr [ %.058.i256.ph, %.lr.ph.i254.preheader1155 ], [ %i.ma, %.lr.ph.i254.prol ]
  %.067.i257.unr = phi ptr [ %.067.i257.ph, %.lr.ph.i254.preheader1155 ], [ %i.mb, %.lr.ph.i254.prol ]
  %i.mf = sub nsw i64 %.09.i255.ph, %4
  %i.mg = icmp ugt i64 %i.mf, -4
  br i1 %i.mg, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %.lr.ph.i254.prol.loopexit, %.lr.ph.i254
  %.09.i255 = phi i64 [ %i.mx, %.lr.ph.i254 ], [ %.09.i255.unr, %.lr.ph.i254.prol.loopexit ]
  %.058.i256 = phi ptr [ %i.mt, %.lr.ph.i254 ], [ %.058.i256.unr, %.lr.ph.i254.prol.loopexit ] ; 5 uses
  %.067.i257 = phi ptr [ %i.mu, %.lr.ph.i254 ], [ %.067.i257.unr, %.lr.ph.i254.prol.loopexit ] ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.058.i256, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.067.i257, i64 8
  %i.mj = load double, ptr %.058.i256, align 8, !tbaa !42 ; 2 uses
  %i.mk = fmul double %i.mj, %i.mj
  store double %i.mk, ptr %.067.i257, align 8, !tbaa !42
  %i.ml = getelementptr inbounds nuw i8, ptr %.058.i256, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %.067.i257, i64 16
  %i.mn = load double, ptr %i.mh, align 8, !tbaa !42 ; 2 uses
  %i.mo = fmul double %i.mn, %i.mn
  store double %i.mo, ptr %i.mi, align 8, !tbaa !42
  %i.mp = getelementptr inbounds nuw i8, ptr %.058.i256, i64 24
  %i.mq = getelementptr inbounds nuw i8, ptr %.067.i257, i64 24
  %i.mr = load double, ptr %i.ml, align 8, !tbaa !42 ; 2 uses
  %i.ms = fmul double %i.mr, %i.mr
  store double %i.ms, ptr %i.mm, align 8, !tbaa !42
  %i.mt = getelementptr inbounds nuw i8, ptr %.058.i256, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %.067.i257, i64 32
  %i.mv = load double, ptr %i.mp, align 8, !tbaa !42 ; 2 uses
  %i.mw = fmul double %i.mv, %i.mv
  store double %i.mw, ptr %i.mq, align 8, !tbaa !42
  %i.mx = add nuw nsw i64 %.09.i255, 4            ; 2 uses
  %exitcond.not.i258.3 = icmp eq i64 %i.mx, %4
  br i1 %exitcond.not.i258.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i254, !llvm.loop !126

bb.n:                                             ; preds = %bb.a
  %i.my = icmp sgt i64 %4, 0
  br i1 %i.my, label %.lr.ph.i259.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i259.preheader:                            ; preds = %bb.n
  %min.iters.check920 = icmp ult i64 %4, 6
  %11 = ptrtoaddr ptr %3 to i64
  %12 = ptrtoaddr ptr %1 to i64
  %i.mz = sub i64 %12, %11
  %diff.check918 = icmp ugt i64 %i.mz, -32
  %or.cond1134 = or i1 %min.iters.check920, %diff.check918
  br i1 %or.cond1134, label %.lr.ph.i259.preheader1157, label %vector.ph921

vector.ph921:                                     ; preds = %.lr.ph.i259.preheader
  %n.vec922 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.na = shl i64 %n.vec922, 3                    ; 2 uses
  %i.nb = getelementptr i8, ptr %1, i64 %i.na
  %i.nc = getelementptr i8, ptr %3, i64 %i.na
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next929, %vector.body923 ] ; 2 uses
  %i.nd = shl i64 %index924, 3                    ; 2 uses
  %next.gep925 = getelementptr i8, ptr %1, i64 %i.nd ; 2 uses
  %next.gep926 = getelementptr i8, ptr %3, i64 %i.nd ; 2 uses
  %i.ne = getelementptr i8, ptr %next.gep925, i64 16
  %wide.load927 = load <2 x double>, ptr %next.gep925, align 8, !tbaa !42
  %wide.load928 = load <2 x double>, ptr %i.ne, align 8, !tbaa !42
  %i.nf = fmul <2 x double> %wide.load927, splat (double 2.000000e+00)
  %i.ng = fmul <2 x double> %wide.load928, splat (double 2.000000e+00)
  %i.nh = getelementptr i8, ptr %next.gep926, i64 16
  store <2 x double> %i.nf, ptr %next.gep926, align 8, !tbaa !42
  store <2 x double> %i.ng, ptr %i.nh, align 8, !tbaa !42
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next929, %n.vec922
  br i1 %i.ni, label %middle.block930, label %vector.body923, !llvm.loop !127

middle.block930:                                  ; preds = %vector.body923
  %cmp.n931 = icmp eq i64 %4, %n.vec922
  br i1 %cmp.n931, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i259.preheader1157

.lr.ph.i259.preheader1157:                        ; preds = %.lr.ph.i259.preheader, %middle.block930
  %.09.i260.ph = phi i64 [ 0, %.lr.ph.i259.preheader ], [ %n.vec922, %middle.block930 ] ; 3 uses
  %.058.i261.ph = phi ptr [ %1, %.lr.ph.i259.preheader ], [ %i.nb, %middle.block930 ] ; 2 uses
  %.067.i262.ph = phi ptr [ %3, %.lr.ph.i259.preheader ], [ %i.nc, %middle.block930 ] ; 2 uses
  %xtraiter1333.a = and i64 %4, 3                 ; 2 uses
  %lcmp.mod1334.not = icmp eq i64 %xtraiter1333.a, 0
  br i1 %lcmp.mod1334.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol

.lr.ph.i259.prol:                                 ; preds = %.lr.ph.i259.preheader1157, %.lr.ph.i259.prol
  %.09.i260.prol = phi i64 [ %i.nn, %.lr.ph.i259.prol ], [ %.09.i260.ph, %.lr.ph.i259.preheader1157 ]
  %.058.i261.prol = phi ptr [ %i.nj, %.lr.ph.i259.prol ], [ %.058.i261.ph, %.lr.ph.i259.preheader1157 ] ; 2 uses
  %.067.i262.prol = phi ptr [ %i.nk, %.lr.ph.i259.prol ], [ %.067.i262.ph, %.lr.ph.i259.preheader1157 ] ; 2 uses
  %prol.iter1335 = phi i64 [ %prol.iter1335.next, %.lr.ph.i259.prol ], [ 0, %.lr.ph.i259.preheader1157 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.058.i261.prol, i64 8 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.067.i262.prol, i64 8 ; 2 uses
  %i.nl = load double, ptr %.058.i261.prol, align 8, !tbaa !42
  %i.nm = fmul double %i.nl, 2.000000e+00
  store double %i.nm, ptr %.067.i262.prol, align 8, !tbaa !42
  %i.nn = add nuw nsw i64 %.09.i260.prol, 1       ; 2 uses
  %prol.iter1335.next = add i64 %prol.iter1335, 1 ; 2 uses
  %prol.iter1335.cmp.not = icmp eq i64 %prol.iter1335.next, %xtraiter1333.a
  br i1 %prol.iter1335.cmp.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol, !llvm.loop !128

.lr.ph.i259.prol.loopexit:                        ; preds = %.lr.ph.i259.prol, %.lr.ph.i259.preheader1157
  %.09.i260.unr = phi i64 [ %.09.i260.ph, %.lr.ph.i259.preheader1157 ], [ %i.nn, %.lr.ph.i259.prol ]
  %.058.i261.unr = phi ptr [ %.058.i261.ph, %.lr.ph.i259.preheader1157 ], [ %i.nj, %.lr.ph.i259.prol ]
  %.067.i262.unr = phi ptr [ %.067.i262.ph, %.lr.ph.i259.preheader1157 ], [ %i.nk, %.lr.ph.i259.prol ]
  %i.no = sub nsw i64 %.09.i260.ph, %4
  %i.np = icmp ugt i64 %i.no, -4
  br i1 %i.np, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259
  %.09.i260 = phi i64 [ %i.og, %.lr.ph.i259 ], [ %.09.i260.unr, %.lr.ph.i259.prol.loopexit ]
  %.058.i261 = phi ptr [ %i.oc, %.lr.ph.i259 ], [ %.058.i261.unr, %.lr.ph.i259.prol.loopexit ] ; 5 uses
  %.067.i262 = phi ptr [ %i.od, %.lr.ph.i259 ], [ %.067.i262.unr, %.lr.ph.i259.prol.loopexit ] ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.058.i261, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.067.i262, i64 8
  %i.ns = load double, ptr %.058.i261, align 8, !tbaa !42
  %i.nt = fmul double %i.ns, 2.000000e+00
  store double %i.nt, ptr %.067.i262, align 8, !tbaa !42
  %i.nu = getelementptr inbounds nuw i8, ptr %.058.i261, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %.067.i262, i64 16
  %i.nw = load double, ptr %i.nq, align 8, !tbaa !42
  %i.nx = fmul double %i.nw, 2.000000e+00
  store double %i.nx, ptr %i.nr, align 8, !tbaa !42
  %i.ny = getelementptr inbounds nuw i8, ptr %.058.i261, i64 24
  %i.nz = getelementptr inbounds nuw i8, ptr %.067.i262, i64 24
  %i.oa = load double, ptr %i.nu, align 8, !tbaa !42
  %i.ob = fmul double %i.oa, 2.000000e+00
  store double %i.ob, ptr %i.nv, align 8, !tbaa !42
  %i.oc = getelementptr inbounds nuw i8, ptr %.058.i261, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %.067.i262, i64 32
  %i.oe = load double, ptr %i.ny, align 8, !tbaa !42
  %i.of = fmul double %i.oe, 2.000000e+00
  store double %i.of, ptr %i.nz, align 8, !tbaa !42
  %i.og = add nuw nsw i64 %.09.i260, 4            ; 2 uses
  %exitcond.not.i263.3 = icmp eq i64 %i.og, %4
  br i1 %exitcond.not.i263.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i259, !llvm.loop !129

bb.o:                                             ; preds = %bb.a
  %i.oh = icmp sgt i64 %4, 0
  br i1 %i.oh, label %.lr.ph.i264.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i264.preheader:                            ; preds = %bb.o
  %i.oi = add nsw i64 %4, -1
  %xtraiter1327.a = and i64 %4, 3                 ; 3 uses
  %i.oj = icmp ult i64 %i.oi, 3
  br i1 %i.oj, label %.lr.ph.i264.epil.preheader, label %.lr.ph.i264.preheader.new

.lr.ph.i264.preheader.new:                        ; preds = %.lr.ph.i264.preheader
  %unroll_iter1331.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264, %.lr.ph.i264.preheader.new
  %.058.i266 = phi ptr [ %1, %.lr.ph.i264.preheader.new ], [ %i.ow, %.lr.ph.i264 ] ; 5 uses
  %.067.i267 = phi ptr [ %3, %.lr.ph.i264.preheader.new ], [ %i.ox, %.lr.ph.i264 ] ; 5 uses
  %niter1332.a = phi i64 [ 0, %.lr.ph.i264.preheader.new ], [ %niter1332.next.3.a, %.lr.ph.i264 ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.058.i266, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %.067.i267, i64 8
  %i.om = load double, ptr %.058.i266, align 8, !tbaa !42
  %i.on = tail call double @sin(double noundef %i.om) #17
  store double %i.on, ptr %.067.i267, align 8, !tbaa !42
  %i.oo = getelementptr inbounds nuw i8, ptr %.058.i266, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %.067.i267, i64 16
  %i.oq = load double, ptr %i.ok, align 8, !tbaa !42
  %i.or = tail call double @sin(double noundef %i.oq) #17
  store double %i.or, ptr %i.ol, align 8, !tbaa !42
  %i.os = getelementptr inbounds nuw i8, ptr %.058.i266, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %.067.i267, i64 24
  %i.ou = load double, ptr %i.oo, align 8, !tbaa !42
  %i.ov = tail call double @sin(double noundef %i.ou) #17
  store double %i.ov, ptr %i.op, align 8, !tbaa !42
  %i.ow = getelementptr inbounds nuw i8, ptr %.058.i266, i64 32 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.067.i267, i64 32 ; 2 uses
  %i.oy = load double, ptr %i.os, align 8, !tbaa !42
  %i.oz = tail call double @sin(double noundef %i.oy) #17
  store double %i.oz, ptr %i.ot, align 8, !tbaa !42
  %niter1332.next.3.a = add nuw nsw i64 %niter1332.a, 4 ; 2 uses
  %niter1332.ncmp.3.a = icmp eq i64 %niter1332.next.3.a, %unroll_iter1331.a
  br i1 %niter1332.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1159.unr-lcssa, label %.lr.ph.i264, !llvm.loop !130

bb.p:                                             ; preds = %bb.a
  %i.pa = icmp sgt i64 %4, 0
  br i1 %i.pa, label %.lr.ph.i269.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i269.preheader:                            ; preds = %bb.p
  %i.pb = add nsw i64 %4, -1
  %xtraiter1321.a = and i64 %4, 3                 ; 3 uses
  %i.pc = icmp ult i64 %i.pb, 3
  br i1 %i.pc, label %.lr.ph.i269.epil.preheader, label %.lr.ph.i269.preheader.new

.lr.ph.i269.preheader.new:                        ; preds = %.lr.ph.i269.preheader
  %unroll_iter1325.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %.lr.ph.i269, %.lr.ph.i269.preheader.new
  %.058.i271 = phi ptr [ %1, %.lr.ph.i269.preheader.new ], [ %i.pp, %.lr.ph.i269 ] ; 5 uses
  %.067.i272 = phi ptr [ %3, %.lr.ph.i269.preheader.new ], [ %i.pq, %.lr.ph.i269 ] ; 5 uses
  %niter1326.a = phi i64 [ 0, %.lr.ph.i269.preheader.new ], [ %niter1326.next.3.a, %.lr.ph.i269 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.058.i271, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.067.i272, i64 8
  %i.pf = load double, ptr %.058.i271, align 8, !tbaa !42
  %i.pg = tail call double @cos(double noundef %i.pf) #17
  store double %i.pg, ptr %.067.i272, align 8, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %.058.i271, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.067.i272, i64 16
  %i.pj = load double, ptr %i.pd, align 8, !tbaa !42
  %i.pk = tail call double @cos(double noundef %i.pj) #17
  store double %i.pk, ptr %i.pe, align 8, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %.058.i271, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %.067.i272, i64 24
  %i.pn = load double, ptr %i.ph, align 8, !tbaa !42
  %i.po = tail call double @cos(double noundef %i.pn) #17
  store double %i.po, ptr %i.pi, align 8, !tbaa !42
  %i.pp = getelementptr inbounds nuw i8, ptr %.058.i271, i64 32 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.067.i272, i64 32 ; 2 uses
  %i.pr = load double, ptr %i.pl, align 8, !tbaa !42
  %i.ps = tail call double @cos(double noundef %i.pr) #17
  store double %i.ps, ptr %i.pm, align 8, !tbaa !42
  %niter1326.next.3.a = add nuw nsw i64 %niter1326.a, 4 ; 2 uses
  %niter1326.ncmp.3.a = icmp eq i64 %niter1326.next.3.a, %unroll_iter1325.a
  br i1 %niter1326.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1160.unr-lcssa, label %.lr.ph.i269, !llvm.loop !131

bb.q:                                             ; preds = %bb.a
  %i.pt = icmp sgt i64 %4, 0
  br i1 %i.pt, label %.lr.ph.i274.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i274.preheader:                            ; preds = %bb.q
  %i.pu = add nsw i64 %4, -1
  %xtraiter1315.a = and i64 %4, 3                 ; 3 uses
  %i.pv = icmp ult i64 %i.pu, 3
  br i1 %i.pv, label %.lr.ph.i274.epil.preheader, label %.lr.ph.i274.preheader.new

.lr.ph.i274.preheader.new:                        ; preds = %.lr.ph.i274.preheader
  %unroll_iter1319.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %.lr.ph.i274, %.lr.ph.i274.preheader.new
  %.058.i276 = phi ptr [ %1, %.lr.ph.i274.preheader.new ], [ %i.qi, %.lr.ph.i274 ] ; 5 uses
  %.067.i277 = phi ptr [ %3, %.lr.ph.i274.preheader.new ], [ %i.qj, %.lr.ph.i274 ] ; 5 uses
  %niter1320.a = phi i64 [ 0, %.lr.ph.i274.preheader.new ], [ %niter1320.next.3.a, %.lr.ph.i274 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.058.i276, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %.067.i277, i64 8
  %i.py = load double, ptr %.058.i276, align 8, !tbaa !42
  %i.pz = tail call double @tan(double noundef %i.py) #17
  store double %i.pz, ptr %.067.i277, align 8, !tbaa !42
  %i.qa = getelementptr inbounds nuw i8, ptr %.058.i276, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %.067.i277, i64 16
end_hunk_1
begin_hunk_2_@_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx:bb.a
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next839, %vector.body831 ] ; 2 uses
  %i.abp = shl i64 %index832, 3                   ; 2 uses
  %next.gep833 = getelementptr i8, ptr %1, i64 %i.abp ; 2 uses
  %next.gep834 = getelementptr i8, ptr %3, i64 %i.abp ; 2 uses
  %i.abq = getelementptr i8, ptr %next.gep833, i64 16
  %wide.load835 = load <2 x double>, ptr %next.gep833, align 8, !tbaa !42, !alias.scope !254
  %wide.load836 = load <2 x double>, ptr %i.abq, align 8, !tbaa !42, !alias.scope !254
  %i.abr = fcmp oeq <2 x double> %wide.load835, zeroinitializer
  %i.abs = fcmp oeq <2 x double> %wide.load836, zeroinitializer
  %i.abt = select <2 x i1> %i.abr, <2 x double> zeroinitializer, <2 x double> %broadcast.splat838
  %i.abu = select <2 x i1> %i.abs, <2 x double> zeroinitializer, <2 x double> %broadcast.splat838
  %i.abv = getelementptr i8, ptr %next.gep834, i64 16
  store <2 x double> %i.abt, ptr %next.gep834, align 8, !tbaa !42, !alias.scope !255, !noalias !256
  store <2 x double> %i.abu, ptr %i.abv, align 8, !tbaa !42, !alias.scope !255, !noalias !256
  %index.next839 = add nuw i64 %index832, 4       ; 2 uses
  %i.abw = icmp eq i64 %index.next839, %n.vec830
  br i1 %i.abw, label %middle.block840, label %vector.body831, !llvm.loop !157

middle.block840:                                  ; preds = %vector.body831
  %cmp.n841 = icmp eq i64 %4, %n.vec830
  br i1 %cmp.n841, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329.preheader1174

.lr.ph.i329.preheader1174:                        ; preds = %vector.memcheck821, %.lr.ph.i329.preheader, %middle.block840
  %.09.i330.ph = phi i64 [ 0, %vector.memcheck821 ], [ 0, %.lr.ph.i329.preheader ], [ %n.vec830, %middle.block840 ] ; 3 uses
  %.058.i331.ph = phi ptr [ %1, %vector.memcheck821 ], [ %1, %.lr.ph.i329.preheader ], [ %i.abm, %middle.block840 ] ; 3 uses
  %.067.i332.ph = phi ptr [ %3, %vector.memcheck821 ], [ %3, %.lr.ph.i329.preheader ], [ %i.abn, %middle.block840 ] ; 3 uses
  %.neg1377 = or disjoint i64 %.09.i330.ph, 1
  %xtraiter1258.a = and i64 %4, 1
  %lcmp.mod1259.not.a = icmp eq i64 %xtraiter1258.a, 0
  br i1 %lcmp.mod1259.not.a, label %.lr.ph.i329.prol.loopexit, label %.lr.ph.i329.prol

.lr.ph.i329.prol:                                 ; preds = %.lr.ph.i329.preheader1174
  %i.abx = getelementptr inbounds nuw i8, ptr %.058.i331.ph, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %.067.i332.ph, i64 8
  %i.abz = load double, ptr %.058.i331.ph, align 8, !tbaa !42
  %i.aca = load double, ptr %2, align 8, !tbaa !42
  %i.acb = fcmp oeq double %i.abz, 0.000000e+00
  %i.acc = select i1 %i.acb, double 0.000000e+00, double %i.aca
  store double %i.acc, ptr %.067.i332.ph, align 8, !tbaa !42
  %i.acd = or disjoint i64 %.09.i330.ph, 1
  br label %.lr.ph.i329.prol.loopexit

.lr.ph.i329.prol.loopexit:                        ; preds = %.lr.ph.i329.prol, %.lr.ph.i329.preheader1174
  %.09.i330.unr = phi i64 [ %.09.i330.ph, %.lr.ph.i329.preheader1174 ], [ %i.acd, %.lr.ph.i329.prol ]
  %.058.i331.unr = phi ptr [ %.058.i331.ph, %.lr.ph.i329.preheader1174 ], [ %i.abx, %.lr.ph.i329.prol ]
  %.067.i332.unr = phi ptr [ %.067.i332.ph, %.lr.ph.i329.preheader1174 ], [ %i.aby, %.lr.ph.i329.prol ]
  %i.ace = icmp eq i64 %4, %.neg1377
  br i1 %i.ace, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %.lr.ph.i329.prol.loopexit, %.lr.ph.i329
  %.09.i330 = phi i64 [ %i.acr, %.lr.ph.i329 ], [ %.09.i330.unr, %.lr.ph.i329.prol.loopexit ]
  %.058.i331 = phi ptr [ %i.acl, %.lr.ph.i329 ], [ %.058.i331.unr, %.lr.ph.i329.prol.loopexit ] ; 3 uses
  %.067.i332 = phi ptr [ %i.acm, %.lr.ph.i329 ], [ %.067.i332.unr, %.lr.ph.i329.prol.loopexit ] ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.058.i331, i64 8
  %i.acg = getelementptr inbounds nuw i8, ptr %.067.i332, i64 8
  %i.ach = load double, ptr %.058.i331, align 8, !tbaa !42
  %i.aci = load double, ptr %2, align 8, !tbaa !42
  %i.acj = fcmp oeq double %i.ach, 0.000000e+00
  %i.ack = select i1 %i.acj, double 0.000000e+00, double %i.aci
  store double %i.ack, ptr %.067.i332, align 8, !tbaa !42
  %i.acl = getelementptr inbounds nuw i8, ptr %.058.i331, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %.067.i332, i64 16
  %i.acn = load double, ptr %i.acf, align 8, !tbaa !42
  %i.aco = load double, ptr %2, align 8, !tbaa !42
  %i.acp = fcmp oeq double %i.acn, 0.000000e+00
  %i.acq = select i1 %i.acp, double 0.000000e+00, double %i.aco
  store double %i.acq, ptr %i.acg, align 8, !tbaa !42
  %i.acr = add nuw nsw i64 %.09.i330, 2           ; 2 uses
  %exitcond.not.i333.1 = icmp eq i64 %i.acr, %4
  br i1 %exitcond.not.i333.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329, !llvm.loop !158

bb.ac:                                            ; preds = %bb.a
  %i.acs = icmp sgt i64 %4, 0
  br i1 %i.acs, label %.lr.ph.i334.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i334.preheader:                            ; preds = %bb.ac
  %i.act = add nsw i64 %4, -1
  %xtraiter1252.a = and i64 %4, 3                 ; 3 uses
  %i.acu = icmp ult i64 %i.act, 3
  br i1 %i.acu, label %.lr.ph.i334.epil.preheader, label %.lr.ph.i334.preheader.new

.lr.ph.i334.preheader.new:                        ; preds = %.lr.ph.i334.preheader
  %unroll_iter1256.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i334

.lr.ph.i334:                                      ; preds = %.lr.ph.i334, %.lr.ph.i334.preheader.new
  %.058.i336 = phi ptr [ %1, %.lr.ph.i334.preheader.new ], [ %i.adh, %.lr.ph.i334 ] ; 5 uses
  %.067.i337 = phi ptr [ %3, %.lr.ph.i334.preheader.new ], [ %i.adi, %.lr.ph.i334 ] ; 5 uses
  %niter1257.a = phi i64 [ 0, %.lr.ph.i334.preheader.new ], [ %niter1257.next.3.a, %.lr.ph.i334 ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.058.i336, i64 8
  %i.acw = getelementptr inbounds nuw i8, ptr %.067.i337, i64 8
  %i.acx = load double, ptr %.058.i336, align 8, !tbaa !42
  %i.acy = tail call double @llvm.floor.f64(double %i.acx)
  store double %i.acy, ptr %.067.i337, align 8, !tbaa !42
  %i.acz = getelementptr inbounds nuw i8, ptr %.058.i336, i64 16
  %i.ada = getelementptr inbounds nuw i8, ptr %.067.i337, i64 16
  %i.adb = load double, ptr %i.acv, align 8, !tbaa !42
  %i.adc = tail call double @llvm.floor.f64(double %i.adb)
  store double %i.adc, ptr %i.acw, align 8, !tbaa !42
  %i.add = getelementptr inbounds nuw i8, ptr %.058.i336, i64 24
  %i.ade = getelementptr inbounds nuw i8, ptr %.067.i337, i64 24
  %i.adf = load double, ptr %i.acz, align 8, !tbaa !42
  %i.adg = tail call double @llvm.floor.f64(double %i.adf)
  store double %i.adg, ptr %i.ada, align 8, !tbaa !42
  %i.adh = getelementptr inbounds nuw i8, ptr %.058.i336, i64 32 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.067.i337, i64 32 ; 2 uses
  %i.adj = load double, ptr %i.add, align 8, !tbaa !42
  %i.adk = tail call double @llvm.floor.f64(double %i.adj)
  store double %i.adk, ptr %i.ade, align 8, !tbaa !42
  %niter1257.next.3.a = add nuw nsw i64 %niter1257.a, 4 ; 2 uses
  %niter1257.ncmp.3.a = icmp eq i64 %niter1257.next.3.a, %unroll_iter1256.a
  br i1 %niter1257.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1176.unr-lcssa, label %.lr.ph.i334, !llvm.loop !159

bb.ad:                                            ; preds = %bb.a
  %i.adl = icmp sgt i64 %4, 0
  br i1 %i.adl, label %.lr.ph.i339.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i339.preheader:                            ; preds = %bb.ad
  %i.adm = add nsw i64 %4, -1
  %xtraiter1246.a = and i64 %4, 3                 ; 3 uses
  %i.adn = icmp ult i64 %i.adm, 3
  br i1 %i.adn, label %.lr.ph.i339.epil.preheader, label %.lr.ph.i339.preheader.new

.lr.ph.i339.preheader.new:                        ; preds = %.lr.ph.i339.preheader
  %unroll_iter1250.a = and i64 %4, 9223372036854775804
  br label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %.lr.ph.i339, %.lr.ph.i339.preheader.new
  %.058.i341 = phi ptr [ %1, %.lr.ph.i339.preheader.new ], [ %i.aea, %.lr.ph.i339 ] ; 5 uses
  %.067.i342 = phi ptr [ %3, %.lr.ph.i339.preheader.new ], [ %i.aeb, %.lr.ph.i339 ] ; 5 uses
  %niter1251.a = phi i64 [ 0, %.lr.ph.i339.preheader.new ], [ %niter1251.next.3.a, %.lr.ph.i339 ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.058.i341, i64 8
  %i.adp = getelementptr inbounds nuw i8, ptr %.067.i342, i64 8
  %i.adq = load double, ptr %.058.i341, align 8, !tbaa !42
  %i.adr = tail call double @llvm.ceil.f64(double %i.adq)
  store double %i.adr, ptr %.067.i342, align 8, !tbaa !42
  %i.ads = getelementptr inbounds nuw i8, ptr %.058.i341, i64 16
  %i.adt = getelementptr inbounds nuw i8, ptr %.067.i342, i64 16
  %i.adu = load double, ptr %i.ado, align 8, !tbaa !42
  %i.adv = tail call double @llvm.ceil.f64(double %i.adu)
  store double %i.adv, ptr %i.adp, align 8, !tbaa !42
  %i.adw = getelementptr inbounds nuw i8, ptr %.058.i341, i64 24
  %i.adx = getelementptr inbounds nuw i8, ptr %.067.i342, i64 24
  %i.ady = load double, ptr %i.ads, align 8, !tbaa !42
  %i.adz = tail call double @llvm.ceil.f64(double %i.ady)
  store double %i.adz, ptr %i.adt, align 8, !tbaa !42
  %i.aea = getelementptr inbounds nuw i8, ptr %.058.i341, i64 32 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.067.i342, i64 32 ; 2 uses
  %i.aec = load double, ptr %i.adw, align 8, !tbaa !42
  %i.aed = tail call double @llvm.ceil.f64(double %i.aec)
  store double %i.aed, ptr %i.adx, align 8, !tbaa !42
  %niter1251.next.3.a = add nuw nsw i64 %niter1251.a, 4 ; 2 uses
  %niter1251.ncmp.3.a = icmp eq i64 %niter1251.next.3.a, %unroll_iter1250.a
  br i1 %niter1251.ncmp.3.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1177.unr-lcssa, label %.lr.ph.i339, !llvm.loop !160

bb.ae:                                            ; preds = %bb.a
  %i.aee = icmp sgt i64 %4, 0
  br i1 %i.aee, label %.lr.ph.i344, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i344:                                      ; preds = %bb.ae, %.lr.ph.i344
  %.09.i345 = phi i64 [ %i.aek, %.lr.ph.i344 ], [ 0, %bb.ae ]
  %.058.i346 = phi ptr [ %i.aef, %.lr.ph.i344 ], [ %1, %bb.ae ] ; 2 uses
  %.067.i347 = phi ptr [ %i.aeg, %.lr.ph.i344 ], [ %3, %bb.ae ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.058.i346, i64 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %.067.i347, i64 8
  %i.aeh = load double, ptr %.058.i346, align 8, !tbaa !42
  %i.aei = load double, ptr %2, align 8, !tbaa !42
  %i.aej = tail call double @fmod(double noundef %i.aeh, double noundef %i.aei) #17
  store double %i.aej, ptr %.067.i347, align 8, !tbaa !42
  %i.aek = add nuw nsw i64 %.09.i345, 1           ; 2 uses
  %exitcond.not.i348 = icmp eq i64 %i.aek, %4
  br i1 %exitcond.not.i348, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i344, !llvm.loop !161

bb.af:                                            ; preds = %bb.a
  %i.ael = icmp sgt i64 %4, 0
  br i1 %i.ael, label %.lr.ph.i349, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i349:                                      ; preds = %bb.af, %.lr.ph.i349
  %.09.i350 = phi i64 [ %i.aer, %.lr.ph.i349 ], [ 0, %bb.af ]
  %.058.i351 = phi ptr [ %i.aem, %.lr.ph.i349 ], [ %1, %bb.af ] ; 2 uses
  %.067.i352 = phi ptr [ %i.aen, %.lr.ph.i349 ], [ %3, %bb.af ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.058.i351, i64 8
  %i.aen = getelementptr inbounds nuw i8, ptr %.067.i352, i64 8
  %i.aeo = load double, ptr %.058.i351, align 8, !tbaa !42
  %i.aep = load double, ptr %2, align 8, !tbaa !42
  %i.aeq = tail call double @remainder(double noundef %i.aeo, double noundef %i.aep) #17
  store double %i.aeq, ptr %.067.i352, align 8, !tbaa !42
  %i.aer = add nuw nsw i64 %.09.i350, 1           ; 2 uses
  %exitcond.not.i353 = icmp eq i64 %i.aer, %4
  br i1 %exitcond.not.i353, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i349, !llvm.loop !162

bb.ag:                                            ; preds = %bb.a
  %i.aes = icmp sgt i64 %4, 0
  br i1 %i.aes, label %.lr.ph.i354.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i354.preheader:                            ; preds = %bb.ag
  %min.iters.check794 = icmp ult i64 %4, 6
  %13 = ptrtoaddr ptr %3 to i64
  %14 = ptrtoaddr ptr %1 to i64
  %i.aet = sub i64 %14, %13
  %diff.check792 = icmp ugt i64 %i.aet, -32
  %or.cond1135 = or i1 %min.iters.check794, %diff.check792
  br i1 %or.cond1135, label %.lr.ph.i354.preheader1180, label %vector.ph795

vector.ph795:                                     ; preds = %.lr.ph.i354.preheader
  %n.vec796 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.aeu = shl i64 %n.vec796, 3                   ; 2 uses
  %i.aev = getelementptr i8, ptr %1, i64 %i.aeu
  %i.aew = getelementptr i8, ptr %3, i64 %i.aeu
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next803, %vector.body797 ] ; 2 uses
  %i.aex = shl i64 %index798, 3                   ; 2 uses
  %next.gep799 = getelementptr i8, ptr %1, i64 %i.aex ; 2 uses
  %next.gep800 = getelementptr i8, ptr %3, i64 %i.aex ; 2 uses
  %i.aey = getelementptr i8, ptr %next.gep799, i64 16
  %wide.load801 = load <2 x double>, ptr %next.gep799, align 8, !tbaa !42
  %wide.load802 = load <2 x double>, ptr %i.aey, align 8, !tbaa !42
  %i.aez = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load801)
  %i.afa = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load802)
  %i.afb = getelementptr i8, ptr %next.gep800, i64 16
  store <2 x double> %i.aez, ptr %next.gep800, align 8, !tbaa !42
  store <2 x double> %i.afa, ptr %i.afb, align 8, !tbaa !42
  %index.next803 = add nuw i64 %index798, 4       ; 2 uses
  %i.afc = icmp eq i64 %index.next803, %n.vec796
  br i1 %i.afc, label %middle.block804, label %vector.body797, !llvm.loop !163

middle.block804:                                  ; preds = %vector.body797
  %cmp.n805 = icmp eq i64 %4, %n.vec796
  br i1 %cmp.n805, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354.preheader1180

.lr.ph.i354.preheader1180:                        ; preds = %.lr.ph.i354.preheader, %middle.block804
  %.09.i355.ph = phi i64 [ 0, %.lr.ph.i354.preheader ], [ %n.vec796, %middle.block804 ] ; 3 uses
  %.058.i356.ph = phi ptr [ %1, %.lr.ph.i354.preheader ], [ %i.aev, %middle.block804 ] ; 2 uses
  %.067.i357.ph = phi ptr [ %3, %.lr.ph.i354.preheader ], [ %i.aew, %middle.block804 ] ; 2 uses
  %xtraiter1243 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1244.not = icmp eq i64 %xtraiter1243, 0
  br i1 %lcmp.mod1244.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol

.lr.ph.i354.prol:                                 ; preds = %.lr.ph.i354.preheader1180, %.lr.ph.i354.prol
  %.09.i355.prol = phi i64 [ %i.afh, %.lr.ph.i354.prol ], [ %.09.i355.ph, %.lr.ph.i354.preheader1180 ]
  %.058.i356.prol = phi ptr [ %i.afd, %.lr.ph.i354.prol ], [ %.058.i356.ph, %.lr.ph.i354.preheader1180 ] ; 2 uses
  %.067.i357.prol = phi ptr [ %i.afe, %.lr.ph.i354.prol ], [ %.067.i357.ph, %.lr.ph.i354.preheader1180 ] ; 2 uses
  %prol.iter1245 = phi i64 [ %prol.iter1245.next, %.lr.ph.i354.prol ], [ 0, %.lr.ph.i354.preheader1180 ]
  %i.afd = getelementptr inbounds nuw i8, ptr %.058.i356.prol, i64 8 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.067.i357.prol, i64 8 ; 2 uses
  %i.aff = load double, ptr %.058.i356.prol, align 8, !tbaa !42
  %i.afg = tail call double @llvm.fabs.f64(double %i.aff)
  store double %i.afg, ptr %.067.i357.prol, align 8, !tbaa !42
  %i.afh = add nuw nsw i64 %.09.i355.prol, 1      ; 2 uses
  %prol.iter1245.next = add i64 %prol.iter1245, 1 ; 2 uses
  %prol.iter1245.cmp.not = icmp eq i64 %prol.iter1245.next, %xtraiter1243
  br i1 %prol.iter1245.cmp.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol, !llvm.loop !164

.lr.ph.i354.prol.loopexit:                        ; preds = %.lr.ph.i354.prol, %.lr.ph.i354.preheader1180
  %.09.i355.unr = phi i64 [ %.09.i355.ph, %.lr.ph.i354.preheader1180 ], [ %i.afh, %.lr.ph.i354.prol ]
  %.058.i356.unr = phi ptr [ %.058.i356.ph, %.lr.ph.i354.preheader1180 ], [ %i.afd, %.lr.ph.i354.prol ]
  %.067.i357.unr = phi ptr [ %.067.i357.ph, %.lr.ph.i354.preheader1180 ], [ %i.afe, %.lr.ph.i354.prol ]
  %i.afi = sub nsw i64 %.09.i355.ph, %4
  %i.afj = icmp ugt i64 %i.afi, -4
  br i1 %i.afj, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354
  %.09.i355 = phi i64 [ %i.aga, %.lr.ph.i354 ], [ %.09.i355.unr, %.lr.ph.i354.prol.loopexit ]
  %.058.i356 = phi ptr [ %i.afw, %.lr.ph.i354 ], [ %.058.i356.unr, %.lr.ph.i354.prol.loopexit ] ; 5 uses
  %.067.i357 = phi ptr [ %i.afx, %.lr.ph.i354 ], [ %.067.i357.unr, %.lr.ph.i354.prol.loopexit ] ; 5 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.058.i356, i64 8
  %i.afl = getelementptr inbounds nuw i8, ptr %.067.i357, i64 8
  %i.afm = load double, ptr %.058.i356, align 8, !tbaa !42
  %i.afn = tail call double @llvm.fabs.f64(double %i.afm)
  store double %i.afn, ptr %.067.i357, align 8, !tbaa !42
  %i.afo = getelementptr inbounds nuw i8, ptr %.058.i356, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %.067.i357, i64 16
  %i.afq = load double, ptr %i.afk, align 8, !tbaa !42
  %i.afr = tail call double @llvm.fabs.f64(double %i.afq)
  store double %i.afr, ptr %i.afl, align 8, !tbaa !42
  %i.afs = getelementptr inbounds nuw i8, ptr %.058.i356, i64 24
  %i.aft = getelementptr inbounds nuw i8, ptr %.067.i357, i64 24
  %i.afu = load double, ptr %i.afo, align 8, !tbaa !42
  %i.afv = tail call double @llvm.fabs.f64(double %i.afu)
  store double %i.afv, ptr %i.afp, align 8, !tbaa !42
  %i.afw = getelementptr inbounds nuw i8, ptr %.058.i356, i64 32
  %i.afx = getelementptr inbounds nuw i8, ptr %.067.i357, i64 32
  %i.afy = load double, ptr %i.afs, align 8, !tbaa !42
  %i.afz = tail call double @llvm.fabs.f64(double %i.afy)
  store double %i.afz, ptr %i.aft, align 8, !tbaa !42
  %i.aga = add nuw nsw i64 %.09.i355, 4           ; 2 uses
  %exitcond.not.i358.3 = icmp eq i64 %i.aga, %4
  br i1 %exitcond.not.i358.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354, !llvm.loop !165

bb.ah:                                            ; preds = %bb.a
  %i.agb = icmp sgt i64 %4, 0
  br i1 %i.agb, label %.lr.ph.i359.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i359.preheader:                            ; preds = %bb.ah
  %min.iters.check776 = icmp ult i64 %4, 4
  %15 = ptrtoaddr ptr %3 to i64
  %16 = ptrtoaddr ptr %1 to i64
  %i.agc = sub i64 %16, %15
  %diff.check774 = icmp ugt i64 %i.agc, -32
  %or.cond1136 = or i1 %min.iters.check776, %diff.check774
  br i1 %or.cond1136, label %.lr.ph.i359.preheader1182, label %vector.ph777

vector.ph777:                                     ; preds = %.lr.ph.i359.preheader
  %n.vec778 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.agd = shl i64 %n.vec778, 3                   ; 2 uses
  %i.age = getelementptr i8, ptr %1, i64 %i.agd
  %i.agf = getelementptr i8, ptr %3, i64 %i.agd
  br label %vector.body779

vector.body779:                                   ; preds = %vector.body779, %vector.ph777
  %index780 = phi i64 [ 0, %vector.ph777 ], [ %index.next785, %vector.body779 ] ; 2 uses
  %i.agg = shl i64 %index780, 3                   ; 2 uses
  %next.gep781 = getelementptr i8, ptr %1, i64 %i.agg ; 2 uses
  %next.gep782 = getelementptr i8, ptr %3, i64 %i.agg ; 2 uses
  %i.agh = getelementptr i8, ptr %next.gep781, i64 16
  %wide.load783 = load <2 x double>, ptr %next.gep781, align 8, !tbaa !42 ; 3 uses
  %wide.load784 = load <2 x double>, ptr %i.agh, align 8, !tbaa !42 ; 3 uses
  %i.agi = fcmp olt <2 x double> %wide.load783, zeroinitializer
  %i.agj = fcmp olt <2 x double> %wide.load784, zeroinitializer
  %i.agk = fcmp ogt <2 x double> %wide.load783, zeroinitializer
  %i.agl = fcmp ogt <2 x double> %wide.load784, zeroinitializer
  %i.agm = select <2 x i1> %i.agk, <2 x double> splat (double 1.000000e+00), <2 x double> %wide.load783
  %i.agn = select <2 x i1> %i.agl, <2 x double> splat (double 1.000000e+00), <2 x double> %wide.load784
  %i.ago = select <2 x i1> %i.agi, <2 x double> splat (double -1.000000e+00), <2 x double> %i.agm
  %i.agp = select <2 x i1> %i.agj, <2 x double> splat (double -1.000000e+00), <2 x double> %i.agn
  %i.agq = getelementptr i8, ptr %next.gep782, i64 16
  store <2 x double> %i.ago, ptr %next.gep782, align 8, !tbaa !42
  store <2 x double> %i.agp, ptr %i.agq, align 8, !tbaa !42
  %index.next785 = add nuw i64 %index780, 4       ; 2 uses
  %i.agr = icmp eq i64 %index.next785, %n.vec778
  br i1 %i.agr, label %middle.block786, label %vector.body779, !llvm.loop !166

middle.block786:                                  ; preds = %vector.body779
  %cmp.n787 = icmp eq i64 %4, %n.vec778
  br i1 %cmp.n787, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359.preheader1182

.lr.ph.i359.preheader1182:                        ; preds = %.lr.ph.i359.preheader, %middle.block786
  %.09.i360.ph = phi i64 [ 0, %.lr.ph.i359.preheader ], [ %n.vec778, %middle.block786 ] ; 3 uses
  %.058.i361.ph = phi ptr [ %1, %.lr.ph.i359.preheader ], [ %i.age, %middle.block786 ] ; 3 uses
  %.067.i362.ph = phi ptr [ %3, %.lr.ph.i359.preheader ], [ %i.agf, %middle.block786 ] ; 3 uses
  %.neg1376 = or disjoint i64 %.09.i360.ph, 1
  %xtraiter1240.a = and i64 %4, 1
  %lcmp.mod1241.not = icmp eq i64 %xtraiter1240.a, 0
  br i1 %lcmp.mod1241.not, label %.lr.ph.i359.prol.loopexit, label %.lr.ph.i359.prol

.lr.ph.i359.prol:                                 ; preds = %.lr.ph.i359.preheader1182
  %i.ags = getelementptr inbounds nuw i8, ptr %.058.i361.ph, i64 8
  %i.agt = getelementptr inbounds nuw i8, ptr %.067.i362.ph, i64 8
  %i.agu = load double, ptr %.058.i361.ph, align 8, !tbaa !42 ; 3 uses
  %i.agv = fcmp olt double %i.agu, 0.000000e+00
  %i.agw = fcmp ogt double %i.agu, 0.000000e+00
  %i.agx = select i1 %i.agw, double 1.000000e+00, double %i.agu
  %i.agy = select i1 %i.agv, double -1.000000e+00, double %i.agx
  store double %i.agy, ptr %.067.i362.ph, align 8, !tbaa !42
  %i.agz = or disjoint i64 %.09.i360.ph, 1
  br label %.lr.ph.i359.prol.loopexit

.lr.ph.i359.prol.loopexit:                        ; preds = %.lr.ph.i359.prol, %.lr.ph.i359.preheader1182
  %.09.i360.unr = phi i64 [ %.09.i360.ph, %.lr.ph.i359.preheader1182 ], [ %i.agz, %.lr.ph.i359.prol ]
  %.058.i361.unr = phi ptr [ %.058.i361.ph, %.lr.ph.i359.preheader1182 ], [ %i.ags, %.lr.ph.i359.prol ]
  %.067.i362.unr = phi ptr [ %.067.i362.ph, %.lr.ph.i359.preheader1182 ], [ %i.agt, %.lr.ph.i359.prol ]
  %i.aha = icmp eq i64 %4, %.neg1376
  br i1 %i.aha, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359

.lr.ph.i359:                                      ; preds = %.lr.ph.i359.prol.loopexit, %.lr.ph.i359
  %.09.i360 = phi i64 [ %i.ahp, %.lr.ph.i359 ], [ %.09.i360.unr, %.lr.ph.i359.prol.loopexit ]
  %.058.i361 = phi ptr [ %i.ahi, %.lr.ph.i359 ], [ %.058.i361.unr, %.lr.ph.i359.prol.loopexit ] ; 3 uses
  %.067.i362 = phi ptr [ %i.ahj, %.lr.ph.i359 ], [ %.067.i362.unr, %.lr.ph.i359.prol.loopexit ] ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.058.i361, i64 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %.067.i362, i64 8
  %i.ahd = load double, ptr %.058.i361, align 8, !tbaa !42 ; 3 uses
  %i.ahe = fcmp olt double %i.ahd, 0.000000e+00
  %i.ahf = fcmp ogt double %i.ahd, 0.000000e+00
  %i.ahg = select i1 %i.ahf, double 1.000000e+00, double %i.ahd
  %i.ahh = select i1 %i.ahe, double -1.000000e+00, double %i.ahg
  store double %i.ahh, ptr %.067.i362, align 8, !tbaa !42
  %i.ahi = getelementptr inbounds nuw i8, ptr %.058.i361, i64 16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.067.i362, i64 16
  %i.ahk = load double, ptr %i.ahb, align 8, !tbaa !42 ; 3 uses
  %i.ahl = fcmp olt double %i.ahk, 0.000000e+00
  %i.ahm = fcmp ogt double %i.ahk, 0.000000e+00
  %i.ahn = select i1 %i.ahm, double 1.000000e+00, double %i.ahk
  %i.aho = select i1 %i.ahl, double -1.000000e+00, double %i.ahn
  store double %i.aho, ptr %i.ahc, align 8, !tbaa !42
  %i.ahp = add nuw nsw i64 %.09.i360, 2           ; 2 uses
  %exitcond.not.i363.1 = icmp eq i64 %i.ahp, %4
  br i1 %exitcond.not.i363.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359, !llvm.loop !167

bb.ai:                                            ; preds = %bb.a
  %i.ahq = icmp sgt i64 %4, 0
  br i1 %i.ahq, label %.lr.ph.i364.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i364.preheader:                            ; preds = %bb.ai
  %min.iters.check748 = icmp ult i64 %4, 12
  br i1 %min.iters.check748, label %.lr.ph.i364.preheader1184, label %vector.memcheck749

vector.memcheck749:                               ; preds = %.lr.ph.i364.preheader
  %i.ahr = shl i64 %4, 3                          ; 2 uses
  %i.ahs = getelementptr i8, ptr %3, i64 %i.ahr   ; 2 uses
  %i.aht = getelementptr i8, ptr %1, i64 %i.ahr
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0750 = icmp ult ptr %3, %i.aht
  %bound1751 = icmp ult ptr %1, %i.ahs
  %found.conflict752 = and i1 %bound0750, %bound1751
  %bound0753 = icmp ult ptr %3, %i.ahu
  %bound1754 = icmp ult ptr %2, %i.ahs
  %found.conflict755 = and i1 %bound0753, %bound1754
  %conflict.rdx756 = or i1 %found.conflict752, %found.conflict755
  br i1 %conflict.rdx756, label %.lr.ph.i364.preheader1184, label %vector.ph757

vector.ph757:                                     ; preds = %vector.memcheck749
  %n.vec758 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.ahv = shl i64 %n.vec758, 3                   ; 2 uses
  %i.ahw = getelementptr i8, ptr %1, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %3, i64 %i.ahv
  %i.ahy = load double, ptr %2, align 8, !tbaa !42, !alias.scope !257
  %broadcast.splatinsert765 = insertelement <2 x double> poison, double %i.ahy, i64 0
  %broadcast.splat766 = shufflevector <2 x double> %broadcast.splatinsert765, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph757
  %index760 = phi i64 [ 0, %vector.ph757 ], [ %index.next767, %vector.body759 ] ; 2 uses
  %i.ahz = shl i64 %index760, 3                   ; 2 uses
  %next.gep761 = getelementptr i8, ptr %1, i64 %i.ahz ; 2 uses
  %next.gep762 = getelementptr i8, ptr %3, i64 %i.ahz ; 2 uses
  %i.aia = getelementptr i8, ptr %next.gep761, i64 16
  %wide.load763 = load <2 x double>, ptr %next.gep761, align 8, !tbaa !42, !alias.scope !258
  %wide.load764 = load <2 x double>, ptr %i.aia, align 8, !tbaa !42, !alias.scope !258
  %i.aib = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %wide.load763, <2 x double> %broadcast.splat766)
  %i.aic = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %wide.load764, <2 x double> %broadcast.splat766)
  %i.aid = getelementptr i8, ptr %next.gep762, i64 16
  store <2 x double> %i.aib, ptr %next.gep762, align 8, !tbaa !42, !alias.scope !259, !noalias !260
  store <2 x double> %i.aic, ptr %i.aid, align 8, !tbaa !42, !alias.scope !259, !noalias !260
  %index.next767 = add nuw i64 %index760, 4       ; 2 uses
  %i.aie = icmp eq i64 %index.next767, %n.vec758
  br i1 %i.aie, label %middle.block768, label %vector.body759, !llvm.loop !172

middle.block768:                                  ; preds = %vector.body759
  %cmp.n769 = icmp eq i64 %4, %n.vec758
  br i1 %cmp.n769, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i364.preheader1184

.lr.ph.i364.preheader1184:                        ; preds = %vector.memcheck749, %.lr.ph.i364.preheader, %middle.block768
  %.09.i365.ph = phi i64 [ 0, %vector.memcheck749 ], [ 0, %.lr.ph.i364.preheader ], [ %n.vec758, %middle.block768 ] ; 3 uses
  %.058.i366.ph = phi ptr [ %1, %vector.memcheck749 ], [ %1, %.lr.ph.i364.preheader ], [ %i.ahw, %middle.block768 ] ; 2 uses
  %.067.i367.ph = phi ptr [ %3, %vector.memcheck749 ], [ %3, %.lr.ph.i364.preheader ], [ %i.ahx, %middle.block768 ] ; 2 uses
  %xtraiter1237.a = and i64 %4, 3                 ; 2 uses
  %lcmp.mod1238.not.a = icmp eq i64 %xtraiter1237.a, 0
  br i1 %lcmp.mod1238.not.a, label %.lr.ph.i364.prol.loopexit, label %.lr.ph.i364.prol

.lr.ph.i364.prol:                                 ; preds = %.lr.ph.i364.preheader1184, %.lr.ph.i364.prol
  %.09.i365.prol = phi i64 [ %i.aik, %.lr.ph.i364.prol ], [ %.09.i365.ph, %.lr.ph.i364.preheader1184 ]
  %.058.i366.prol = phi ptr [ %i.aif, %.lr.ph.i364.prol ], [ %.058.i366.ph, %.lr.ph.i364.preheader1184 ] ; 2 uses
  %.067.i367.prol = phi ptr [ %i.aig, %.lr.ph.i364.prol ], [ %.067.i367.ph, %.lr.ph.i364.preheader1184 ] ; 2 uses
  %prol.iter1239 = phi i64 [ %prol.iter1239.next, %.lr.ph.i364.prol ], [ 0, %.lr.ph.i364.preheader1184 ]
  %i.aif = getelementptr inbounds nuw i8, ptr %.058.i366.prol, i64 8 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.067.i367.prol, i64 8 ; 2 uses
  %i.aih = load double, ptr %.058.i366.prol, align 8, !tbaa !42
  %i.aii = load double, ptr %2, align 8, !tbaa !42
  %i.aij = tail call double @llvm.copysign.f64(double %i.aih, double %i.aii)
  store double %i.aij, ptr %.067.i367.prol, align 8, !tbaa !42
  %i.aik = add nuw nsw i64 %.09.i365.prol, 1      ; 2 uses
  %prol.iter1239.next = add i64 %prol.iter1239, 1 ; 2 uses
  %prol.iter1239.cmp.not = icmp eq i64 %prol.iter1239.next, %xtraiter1237.a
  br i1 %prol.iter1239.cmp.not, label %.lr.ph.i364.prol.loopexit, label %.lr.ph.i364.prol, !llvm.loop !173

.lr.ph.i364.prol.loopexit:                        ; preds = %.lr.ph.i364.prol, %.lr.ph.i364.preheader1184
  %.09.i365.unr = phi i64 [ %.09.i365.ph, %.lr.ph.i364.preheader1184 ], [ %i.aik, %.lr.ph.i364.prol ]
  %.058.i366.unr = phi ptr [ %.058.i366.ph, %.lr.ph.i364.preheader1184 ], [ %i.aif, %.lr.ph.i364.prol ]
  %.067.i367.unr = phi ptr [ %.067.i367.ph, %.lr.ph.i364.preheader1184 ], [ %i.aig, %.lr.ph.i364.prol ]
  %i.ail = sub nsw i64 %.09.i365.ph, %4
  %i.aim = icmp ugt i64 %i.ail, -4
  br i1 %i.aim, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.prol.loopexit, %.lr.ph.i364
  %.09.i365 = phi i64 [ %i.ajh, %.lr.ph.i364 ], [ %.09.i365.unr, %.lr.ph.i364.prol.loopexit ]
  %.058.i366 = phi ptr [ %i.ajc, %.lr.ph.i364 ], [ %.058.i366.unr, %.lr.ph.i364.prol.loopexit ] ; 5 uses
  %.067.i367 = phi ptr [ %i.ajd, %.lr.ph.i364 ], [ %.067.i367.unr, %.lr.ph.i364.prol.loopexit ] ; 5 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.058.i366, i64 8
  %i.aio = getelementptr inbounds nuw i8, ptr %.067.i367, i64 8
  %i.aip = load double, ptr %.058.i366, align 8, !tbaa !42
  %i.aiq = load double, ptr %2, align 8, !tbaa !42
  %i.air = tail call double @llvm.copysign.f64(double %i.aip, double %i.aiq)
  store double %i.air, ptr %.067.i367, align 8, !tbaa !42
  %i.ais = getelementptr inbounds nuw i8, ptr %.058.i366, i64 16
  %i.ait = getelementptr inbounds nuw i8, ptr %.067.i367, i64 16
  %i.aiu = load double, ptr %i.ain, align 8, !tbaa !42
  %i.aiv = load double, ptr %2, align 8, !tbaa !42
  %i.aiw = tail call double @llvm.copysign.f64(double %i.aiu, double %i.aiv)
  store double %i.aiw, ptr %i.aio, align 8, !tbaa !42
  %i.aix = getelementptr inbounds nuw i8, ptr %.058.i366, i64 24
  %i.aiy = getelementptr inbounds nuw i8, ptr %.067.i367, i64 24
  %i.aiz = load double, ptr %i.ais, align 8, !tbaa !42
  %i.aja = load double, ptr %2, align 8, !tbaa !42
  %i.ajb = tail call double @llvm.copysign.f64(double %i.aiz, double %i.aja)
  store double %i.ajb, ptr %i.ait, align 8, !tbaa !42
  %i.ajc = getelementptr inbounds nuw i8, ptr %.058.i366, i64 32
  %i.ajd = getelementptr inbounds nuw i8, ptr %.067.i367, i64 32
  %i.aje = load double, ptr %i.aix, align 8, !tbaa !42
end_hunk_2
begin_hunk_3_@_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx:bb.a
.lr.ph.i374.preheader:                            ; preds = %bb.ak
  %min.iters.check712 = icmp ult i64 %4, 8
  br i1 %min.iters.check712, label %.lr.ph.i374.preheader1187, label %vector.memcheck713

vector.memcheck713:                               ; preds = %.lr.ph.i374.preheader
  %i.ajp = shl i64 %4, 3                          ; 2 uses
  %i.ajq = getelementptr i8, ptr %3, i64 %i.ajp   ; 2 uses
  %i.ajr = getelementptr i8, ptr %1, i64 %i.ajp
  %i.ajs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0714 = icmp ult ptr %3, %i.ajr
  %bound1715 = icmp ult ptr %1, %i.ajq
  %found.conflict716 = and i1 %bound0714, %bound1715
  %bound0717 = icmp ult ptr %3, %i.ajs
  %bound1718 = icmp ult ptr %2, %i.ajq
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx720 = or i1 %found.conflict716, %found.conflict719
  br i1 %conflict.rdx720, label %.lr.ph.i374.preheader1187, label %vector.ph721

vector.ph721:                                     ; preds = %vector.memcheck713
  %n.vec722 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.ajt = shl i64 %n.vec722, 3                   ; 2 uses
  %i.aju = getelementptr i8, ptr %1, i64 %i.ajt
  %i.ajv = getelementptr i8, ptr %3, i64 %i.ajt
  %i.ajw = load double, ptr %2, align 8, !tbaa !42, !alias.scope !261
  %broadcast.splatinsert729 = insertelement <2 x double> poison, double %i.ajw, i64 0
  %broadcast.splat730 = shufflevector <2 x double> %broadcast.splatinsert729, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body723

vector.body723:                                   ; preds = %vector.body723, %vector.ph721
  %index724 = phi i64 [ 0, %vector.ph721 ], [ %index.next731, %vector.body723 ] ; 2 uses
  %i.ajx = shl i64 %index724, 3                   ; 2 uses
  %next.gep725 = getelementptr i8, ptr %1, i64 %i.ajx ; 2 uses
  %next.gep726 = getelementptr i8, ptr %3, i64 %i.ajx ; 2 uses
  %i.ajy = getelementptr i8, ptr %next.gep725, i64 16
  %wide.load727 = load <2 x double>, ptr %next.gep725, align 8, !tbaa !42, !alias.scope !262
  %wide.load728 = load <2 x double>, ptr %i.ajy, align 8, !tbaa !42, !alias.scope !262
  %i.ajz = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %wide.load727, <2 x double> %broadcast.splat730)
  %i.aka = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %wide.load728, <2 x double> %broadcast.splat730)
  %i.akb = getelementptr i8, ptr %next.gep726, i64 16
  store <2 x double> %i.ajz, ptr %next.gep726, align 8, !tbaa !42, !alias.scope !263, !noalias !264
  store <2 x double> %i.aka, ptr %i.akb, align 8, !tbaa !42, !alias.scope !263, !noalias !264
  %index.next731 = add nuw i64 %index724, 4       ; 2 uses
  %i.akc = icmp eq i64 %index.next731, %n.vec722
  br i1 %i.akc, label %middle.block732, label %vector.body723, !llvm.loop !180

middle.block732:                                  ; preds = %vector.body723
  %cmp.n733 = icmp eq i64 %4, %n.vec722
  br i1 %cmp.n733, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374.preheader1187

.lr.ph.i374.preheader1187:                        ; preds = %vector.memcheck713, %.lr.ph.i374.preheader, %middle.block732
  %.09.i375.ph = phi i64 [ 0, %vector.memcheck713 ], [ 0, %.lr.ph.i374.preheader ], [ %n.vec722, %middle.block732 ] ; 3 uses
  %.058.i376.ph = phi ptr [ %1, %vector.memcheck713 ], [ %1, %.lr.ph.i374.preheader ], [ %i.aju, %middle.block732 ] ; 3 uses
  %.067.i377.ph = phi ptr [ %3, %vector.memcheck713 ], [ %3, %.lr.ph.i374.preheader ], [ %i.ajv, %middle.block732 ] ; 3 uses
  %.neg1375 = or disjoint i64 %.09.i375.ph, 1
  %xtraiter1234 = and i64 %4, 1
  %lcmp.mod1235.not = icmp eq i64 %xtraiter1234, 0
  br i1 %lcmp.mod1235.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol

.lr.ph.i374.prol:                                 ; preds = %.lr.ph.i374.preheader1187
  %i.akd = getelementptr inbounds nuw i8, ptr %.058.i376.ph, i64 8
  %i.ake = getelementptr inbounds nuw i8, ptr %.067.i377.ph, i64 8
  %i.akf = load double, ptr %.058.i376.ph, align 8, !tbaa !42
  %i.akg = load double, ptr %2, align 8, !tbaa !42
  %i.akh = tail call nsz double @llvm.minnum.f64(double %i.akf, double %i.akg)
  store double %i.akh, ptr %.067.i377.ph, align 8, !tbaa !42
  %i.aki = or disjoint i64 %.09.i375.ph, 1
  br label %.lr.ph.i374.prol.loopexit

.lr.ph.i374.prol.loopexit:                        ; preds = %.lr.ph.i374.prol, %.lr.ph.i374.preheader1187
  %.09.i375.unr = phi i64 [ %.09.i375.ph, %.lr.ph.i374.preheader1187 ], [ %i.aki, %.lr.ph.i374.prol ]
  %.058.i376.unr = phi ptr [ %.058.i376.ph, %.lr.ph.i374.preheader1187 ], [ %i.akd, %.lr.ph.i374.prol ]
  %.067.i377.unr = phi ptr [ %.067.i377.ph, %.lr.ph.i374.preheader1187 ], [ %i.ake, %.lr.ph.i374.prol ]
  %i.akj = icmp eq i64 %4, %.neg1375
  br i1 %i.akj, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374
  %.09.i375 = phi i64 [ %i.aku, %.lr.ph.i374 ], [ %.09.i375.unr, %.lr.ph.i374.prol.loopexit ]
  %.058.i376 = phi ptr [ %i.akp, %.lr.ph.i374 ], [ %.058.i376.unr, %.lr.ph.i374.prol.loopexit ] ; 3 uses
  %.067.i377 = phi ptr [ %i.akq, %.lr.ph.i374 ], [ %.067.i377.unr, %.lr.ph.i374.prol.loopexit ] ; 3 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.058.i376, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %.067.i377, i64 8
  %i.akm = load double, ptr %.058.i376, align 8, !tbaa !42
  %i.akn = load double, ptr %2, align 8, !tbaa !42
  %i.ako = tail call nsz double @llvm.minnum.f64(double %i.akm, double %i.akn)
  store double %i.ako, ptr %.067.i377, align 8, !tbaa !42
  %i.akp = getelementptr inbounds nuw i8, ptr %.058.i376, i64 16
  %i.akq = getelementptr inbounds nuw i8, ptr %.067.i377, i64 16
  %i.akr = load double, ptr %i.akk, align 8, !tbaa !42
  %i.aks = load double, ptr %2, align 8, !tbaa !42
  %i.akt = tail call nsz double @llvm.minnum.f64(double %i.akr, double %i.aks)
  store double %i.akt, ptr %i.akl, align 8, !tbaa !42
  %i.aku = add nuw nsw i64 %.09.i375, 2           ; 2 uses
  %exitcond.not.i378.1 = icmp eq i64 %i.aku, %4
  br i1 %exitcond.not.i378.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374, !llvm.loop !181

bb.al:                                            ; preds = %bb.a
  %i.akv = icmp sgt i64 %4, 0
  br i1 %i.akv, label %.lr.ph.i379.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i379.preheader:                            ; preds = %bb.al
  %min.iters.check682 = icmp ult i64 %4, 8
  br i1 %min.iters.check682, label %.lr.ph.i379.preheader1189, label %vector.memcheck683

vector.memcheck683:                               ; preds = %.lr.ph.i379.preheader
  %i.akw = shl i64 %4, 3                          ; 2 uses
  %i.akx = getelementptr i8, ptr %3, i64 %i.akw   ; 2 uses
  %i.aky = getelementptr i8, ptr %1, i64 %i.akw
  %i.akz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %3, %i.aky
  %bound1 = icmp ult ptr %1, %i.akx
  %found.conflict = and i1 %bound0, %bound1
  %bound0684 = icmp ult ptr %3, %i.akz
  %bound1685 = icmp ult ptr %2, %i.akx
  %found.conflict686 = and i1 %bound0684, %bound1685
  %conflict.rdx = or i1 %found.conflict, %found.conflict686
  br i1 %conflict.rdx, label %.lr.ph.i379.preheader1189, label %vector.ph687

vector.ph687:                                     ; preds = %vector.memcheck683
  %n.vec688 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.ala = shl i64 %n.vec688, 3                   ; 2 uses
  %i.alb = getelementptr i8, ptr %1, i64 %i.ala
  %i.alc = getelementptr i8, ptr %3, i64 %i.ala
  %i.ald = load double, ptr %2, align 8, !tbaa !42, !alias.scope !265
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ald, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph687
  %index690 = phi i64 [ 0, %vector.ph687 ], [ %index.next695, %vector.body689 ] ; 2 uses
  %i.ale = shl i64 %index690, 3                   ; 2 uses
  %next.gep691 = getelementptr i8, ptr %1, i64 %i.ale ; 2 uses
  %next.gep692 = getelementptr i8, ptr %3, i64 %i.ale ; 2 uses
  %i.alf = getelementptr i8, ptr %next.gep691, i64 16
  %wide.load693 = load <2 x double>, ptr %next.gep691, align 8, !tbaa !42, !alias.scope !266
  %wide.load694 = load <2 x double>, ptr %i.alf, align 8, !tbaa !42, !alias.scope !266
  %i.alg = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load693, <2 x double> %broadcast.splat)
  %i.alh = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load694, <2 x double> %broadcast.splat)
  %i.ali = getelementptr i8, ptr %next.gep692, i64 16
  store <2 x double> %i.alg, ptr %next.gep692, align 8, !tbaa !42, !alias.scope !267, !noalias !268
  store <2 x double> %i.alh, ptr %i.ali, align 8, !tbaa !42, !alias.scope !267, !noalias !268
  %index.next695 = add nuw i64 %index690, 4       ; 2 uses
  %i.alj = icmp eq i64 %index.next695, %n.vec688
  br i1 %i.alj, label %middle.block696, label %vector.body689, !llvm.loop !186

middle.block696:                                  ; preds = %vector.body689
  %cmp.n697 = icmp eq i64 %4, %n.vec688
  br i1 %cmp.n697, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379.preheader1189

.lr.ph.i379.preheader1189:                        ; preds = %vector.memcheck683, %.lr.ph.i379.preheader, %middle.block696
  %.09.i380.ph = phi i64 [ 0, %vector.memcheck683 ], [ 0, %.lr.ph.i379.preheader ], [ %n.vec688, %middle.block696 ] ; 3 uses
  %.058.i381.ph = phi ptr [ %1, %vector.memcheck683 ], [ %1, %.lr.ph.i379.preheader ], [ %i.alb, %middle.block696 ] ; 3 uses
  %.067.i382.ph = phi ptr [ %3, %vector.memcheck683 ], [ %3, %.lr.ph.i379.preheader ], [ %i.alc, %middle.block696 ] ; 3 uses
  %.neg = or disjoint i64 %.09.i380.ph, 1
  %xtraiter1231 = and i64 %4, 1
  %lcmp.mod1232.not = icmp eq i64 %xtraiter1231, 0
  br i1 %lcmp.mod1232.not, label %.lr.ph.i379.prol.loopexit, label %.lr.ph.i379.prol

.lr.ph.i379.prol:                                 ; preds = %.lr.ph.i379.preheader1189
  %i.alk = getelementptr inbounds nuw i8, ptr %.058.i381.ph, i64 8
  %i.all = getelementptr inbounds nuw i8, ptr %.067.i382.ph, i64 8
  %i.alm = load double, ptr %.058.i381.ph, align 8, !tbaa !42
  %i.aln = load double, ptr %2, align 8, !tbaa !42
  %i.alo = tail call nsz double @llvm.maxnum.f64(double %i.alm, double %i.aln)
  store double %i.alo, ptr %.067.i382.ph, align 8, !tbaa !42
  %i.alp = or disjoint i64 %.09.i380.ph, 1
  br label %.lr.ph.i379.prol.loopexit

.lr.ph.i379.prol.loopexit:                        ; preds = %.lr.ph.i379.prol, %.lr.ph.i379.preheader1189
  %.09.i380.unr = phi i64 [ %.09.i380.ph, %.lr.ph.i379.preheader1189 ], [ %i.alp, %.lr.ph.i379.prol ]
  %.058.i381.unr = phi ptr [ %.058.i381.ph, %.lr.ph.i379.preheader1189 ], [ %i.alk, %.lr.ph.i379.prol ]
  %.067.i382.unr = phi ptr [ %.067.i382.ph, %.lr.ph.i379.preheader1189 ], [ %i.all, %.lr.ph.i379.prol ]
  %i.alq = icmp eq i64 %4, %.neg
  br i1 %i.alq, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.lr.ph.i379.prol.loopexit, %.lr.ph.i379
  %.09.i380 = phi i64 [ %i.amb, %.lr.ph.i379 ], [ %.09.i380.unr, %.lr.ph.i379.prol.loopexit ]
  %.058.i381 = phi ptr [ %i.alw, %.lr.ph.i379 ], [ %.058.i381.unr, %.lr.ph.i379.prol.loopexit ] ; 3 uses
  %.067.i382 = phi ptr [ %i.alx, %.lr.ph.i379 ], [ %.067.i382.unr, %.lr.ph.i379.prol.loopexit ] ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.058.i381, i64 8
  %i.als = getelementptr inbounds nuw i8, ptr %.067.i382, i64 8
  %i.alt = load double, ptr %.058.i381, align 8, !tbaa !42
  %i.alu = load double, ptr %2, align 8, !tbaa !42
  %i.alv = tail call nsz double @llvm.maxnum.f64(double %i.alt, double %i.alu)
  store double %i.alv, ptr %.067.i382, align 8, !tbaa !42
  %i.alw = getelementptr inbounds nuw i8, ptr %.058.i381, i64 16
  %i.alx = getelementptr inbounds nuw i8, ptr %.067.i382, i64 16
  %i.aly = load double, ptr %i.alr, align 8, !tbaa !42
  %i.alz = load double, ptr %2, align 8, !tbaa !42
  %i.ama = tail call nsz double @llvm.maxnum.f64(double %i.aly, double %i.alz)
  store double %i.ama, ptr %i.als, align 8, !tbaa !42
  %i.amb = add nuw nsw i64 %.09.i380, 2           ; 2 uses
  %exitcond.not.i383.1 = icmp eq i64 %i.amb, %4
  br i1 %exitcond.not.i383.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379, !llvm.loop !187

bb.am:                                            ; preds = %bb.a
  %i.amc = icmp sgt i64 %4, 0
  br i1 %i.amc, label %.lr.ph.i384.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i384.preheader:                            ; preds = %bb.am
  %min.iters.check661 = icmp eq i64 %4, 1
  %17 = ptrtoaddr ptr %3 to i64
  %18 = ptrtoaddr ptr %1 to i64
  %i.amd = sub i64 %18, %17
  %diff.check659 = icmp ugt i64 %i.amd, -16
  %or.cond1137 = or i1 %min.iters.check661, %diff.check659
  br i1 %or.cond1137, label %.lr.ph.i384.preheader1191, label %vector.ph662

vector.ph662:                                     ; preds = %.lr.ph.i384.preheader
  %n.vec663 = and i64 %4, 9223372036854775806     ; 4 uses
  %i.ame = shl i64 %n.vec663, 3                   ; 2 uses
  %i.amf = getelementptr i8, ptr %1, i64 %i.ame
  %i.amg = getelementptr i8, ptr %3, i64 %i.ame
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next669, %vector.body664 ] ; 2 uses
  %i.amh = shl i64 %index665, 3                   ; 2 uses
  %next.gep666 = getelementptr i8, ptr %1, i64 %i.amh
  %next.gep667 = getelementptr i8, ptr %3, i64 %i.amh
  %wide.load668 = load <2 x double>, ptr %next.gep666, align 8, !tbaa !42
  %i.ami = fdiv <2 x double> splat (double 1.000000e+00), %wide.load668
  store <2 x double> %i.ami, ptr %next.gep667, align 8, !tbaa !42
  %index.next669 = add nuw i64 %index665, 2       ; 2 uses
  %i.amj = icmp eq i64 %index.next669, %n.vec663
  br i1 %i.amj, label %middle.block670, label %vector.body664, !llvm.loop !188

middle.block670:                                  ; preds = %vector.body664
  %cmp.n671 = icmp eq i64 %4, %n.vec663
  br i1 %cmp.n671, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384.preheader1191

.lr.ph.i384.preheader1191:                        ; preds = %.lr.ph.i384.preheader, %middle.block670
  %.09.i385.ph = phi i64 [ 0, %.lr.ph.i384.preheader ], [ %n.vec663, %middle.block670 ] ; 4 uses
  %.058.i386.ph = phi ptr [ %1, %.lr.ph.i384.preheader ], [ %i.amf, %middle.block670 ] ; 2 uses
  %.067.i387.ph = phi ptr [ %3, %.lr.ph.i384.preheader ], [ %i.amg, %middle.block670 ] ; 2 uses
  %i.amk = sub nsw i64 %4, %.09.i385.ph
  %xtraiter1228 = and i64 %i.amk, 3               ; 2 uses
  %lcmp.mod1229.not = icmp eq i64 %xtraiter1228, 0
  br i1 %lcmp.mod1229.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol

.lr.ph.i384.prol:                                 ; preds = %.lr.ph.i384.preheader1191, %.lr.ph.i384.prol
  %.09.i385.prol = phi i64 [ %i.amp, %.lr.ph.i384.prol ], [ %.09.i385.ph, %.lr.ph.i384.preheader1191 ]
  %.058.i386.prol = phi ptr [ %i.aml, %.lr.ph.i384.prol ], [ %.058.i386.ph, %.lr.ph.i384.preheader1191 ] ; 2 uses
  %.067.i387.prol = phi ptr [ %i.amm, %.lr.ph.i384.prol ], [ %.067.i387.ph, %.lr.ph.i384.preheader1191 ] ; 2 uses
  %prol.iter1230 = phi i64 [ %prol.iter1230.next, %.lr.ph.i384.prol ], [ 0, %.lr.ph.i384.preheader1191 ]
  %i.aml = getelementptr inbounds nuw i8, ptr %.058.i386.prol, i64 8 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.067.i387.prol, i64 8 ; 2 uses
  %i.amn = load double, ptr %.058.i386.prol, align 8, !tbaa !42
  %i.amo = fdiv double 1.000000e+00, %i.amn
  store double %i.amo, ptr %.067.i387.prol, align 8, !tbaa !42
  %i.amp = add nuw nsw i64 %.09.i385.prol, 1      ; 2 uses
  %prol.iter1230.next = add i64 %prol.iter1230, 1 ; 2 uses
  %prol.iter1230.cmp.not = icmp eq i64 %prol.iter1230.next, %xtraiter1228
  br i1 %prol.iter1230.cmp.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol, !llvm.loop !189

.lr.ph.i384.prol.loopexit:                        ; preds = %.lr.ph.i384.prol, %.lr.ph.i384.preheader1191
  %.09.i385.unr = phi i64 [ %.09.i385.ph, %.lr.ph.i384.preheader1191 ], [ %i.amp, %.lr.ph.i384.prol ]
  %.058.i386.unr = phi ptr [ %.058.i386.ph, %.lr.ph.i384.preheader1191 ], [ %i.aml, %.lr.ph.i384.prol ]
  %.067.i387.unr = phi ptr [ %.067.i387.ph, %.lr.ph.i384.preheader1191 ], [ %i.amm, %.lr.ph.i384.prol ]
  %i.amq = sub nsw i64 %.09.i385.ph, %4
  %i.amr = icmp ugt i64 %i.amq, -4
  br i1 %i.amr, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.prol.loopexit, %.lr.ph.i384
  %.09.i385 = phi i64 [ %i.ani, %.lr.ph.i384 ], [ %.09.i385.unr, %.lr.ph.i384.prol.loopexit ]
  %.058.i386 = phi ptr [ %i.ane, %.lr.ph.i384 ], [ %.058.i386.unr, %.lr.ph.i384.prol.loopexit ] ; 5 uses
  %.067.i387 = phi ptr [ %i.anf, %.lr.ph.i384 ], [ %.067.i387.unr, %.lr.ph.i384.prol.loopexit ] ; 5 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.058.i386, i64 8
  %i.amt = getelementptr inbounds nuw i8, ptr %.067.i387, i64 8
  %i.amu = load double, ptr %.058.i386, align 8, !tbaa !42
  %i.amv = fdiv double 1.000000e+00, %i.amu
  store double %i.amv, ptr %.067.i387, align 8, !tbaa !42
  %i.amw = getelementptr inbounds nuw i8, ptr %.058.i386, i64 16
  %i.amx = getelementptr inbounds nuw i8, ptr %.067.i387, i64 16
  %i.amy = load double, ptr %i.ams, align 8, !tbaa !42
  %i.amz = fdiv double 1.000000e+00, %i.amy
  store double %i.amz, ptr %i.amt, align 8, !tbaa !42
  %i.ana = getelementptr inbounds nuw i8, ptr %.058.i386, i64 24
  %i.anb = getelementptr inbounds nuw i8, ptr %.067.i387, i64 24
  %i.anc = load double, ptr %i.amw, align 8, !tbaa !42
  %i.and = fdiv double 1.000000e+00, %i.anc
  store double %i.and, ptr %i.amx, align 8, !tbaa !42
  %i.ane = getelementptr inbounds nuw i8, ptr %.058.i386, i64 32
  %i.anf = getelementptr inbounds nuw i8, ptr %.067.i387, i64 32
  %i.ang = load double, ptr %i.ana, align 8, !tbaa !42
  %i.anh = fdiv double 1.000000e+00, %i.ang
  store double %i.anh, ptr %i.anb, align 8, !tbaa !42
  %i.ani = add nuw nsw i64 %.09.i385, 4           ; 2 uses
  %exitcond.not.i388.3 = icmp eq i64 %i.ani, %4
  br i1 %exitcond.not.i388.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384, !llvm.loop !190

bb.an:                                            ; preds = %bb.a
  %i.anj = icmp sgt i64 %4, 0
  br i1 %i.anj, label %.lr.ph.i389.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i389.preheader:                            ; preds = %bb.an
  %i.ank = add nsw i64 %4, -1
  %xtraiter1222 = and i64 %4, 3                   ; 3 uses
  %i.anl = icmp ult i64 %i.ank, 3
  br i1 %i.anl, label %.lr.ph.i389.epil.preheader, label %.lr.ph.i389.preheader.new

.lr.ph.i389.preheader.new:                        ; preds = %.lr.ph.i389.preheader
  %unroll_iter1226 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i389

.lr.ph.i389:                                      ; preds = %.lr.ph.i389, %.lr.ph.i389.preheader.new
  %.058.i391 = phi ptr [ %1, %.lr.ph.i389.preheader.new ], [ %i.any, %.lr.ph.i389 ] ; 5 uses
  %.067.i392 = phi ptr [ %3, %.lr.ph.i389.preheader.new ], [ %i.anz, %.lr.ph.i389 ] ; 5 uses
  %niter1227 = phi i64 [ 0, %.lr.ph.i389.preheader.new ], [ %niter1227.next.3, %.lr.ph.i389 ]
  %i.anm = getelementptr inbounds nuw i8, ptr %.058.i391, i64 8
  %i.ann = getelementptr inbounds nuw i8, ptr %.067.i392, i64 8
  %i.ano = load double, ptr %.058.i391, align 8, !tbaa !42
  %i.anp = tail call double @sinh(double noundef %i.ano) #17
  store double %i.anp, ptr %.067.i392, align 8, !tbaa !42
  %i.anq = getelementptr inbounds nuw i8, ptr %.058.i391, i64 16
  %i.anr = getelementptr inbounds nuw i8, ptr %.067.i392, i64 16
  %i.ans = load double, ptr %i.anm, align 8, !tbaa !42
  %i.ant = tail call double @sinh(double noundef %i.ans) #17
  store double %i.ant, ptr %i.ann, align 8, !tbaa !42
  %i.anu = getelementptr inbounds nuw i8, ptr %.058.i391, i64 24
  %i.anv = getelementptr inbounds nuw i8, ptr %.067.i392, i64 24
  %i.anw = load double, ptr %i.anq, align 8, !tbaa !42
  %i.anx = tail call double @sinh(double noundef %i.anw) #17
  store double %i.anx, ptr %i.anr, align 8, !tbaa !42
  %i.any = getelementptr inbounds nuw i8, ptr %.058.i391, i64 32 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.067.i392, i64 32 ; 2 uses
  %i.aoa = load double, ptr %i.anu, align 8, !tbaa !42
  %i.aob = tail call double @sinh(double noundef %i.aoa) #17
  store double %i.aob, ptr %i.anv, align 8, !tbaa !42
  %niter1227.next.3 = add nuw nsw i64 %niter1227, 4 ; 2 uses
  %niter1227.ncmp.3 = icmp eq i64 %niter1227.next.3, %unroll_iter1226
  br i1 %niter1227.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1193.unr-lcssa, label %.lr.ph.i389, !llvm.loop !191

bb.ao:                                            ; preds = %bb.a
  %i.aoc = icmp sgt i64 %4, 0
  br i1 %i.aoc, label %.lr.ph.i394.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i394.preheader:                            ; preds = %bb.ao
  %i.aod = add nsw i64 %4, -1
  %xtraiter1216 = and i64 %4, 3                   ; 3 uses
  %i.aoe = icmp ult i64 %i.aod, 3
  br i1 %i.aoe, label %.lr.ph.i394.epil.preheader, label %.lr.ph.i394.preheader.new

.lr.ph.i394.preheader.new:                        ; preds = %.lr.ph.i394.preheader
  %unroll_iter1220 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %.lr.ph.i394, %.lr.ph.i394.preheader.new
  %.058.i396 = phi ptr [ %1, %.lr.ph.i394.preheader.new ], [ %i.aor, %.lr.ph.i394 ] ; 5 uses
  %.067.i397 = phi ptr [ %3, %.lr.ph.i394.preheader.new ], [ %i.aos, %.lr.ph.i394 ] ; 5 uses
  %niter1221 = phi i64 [ 0, %.lr.ph.i394.preheader.new ], [ %niter1221.next.3, %.lr.ph.i394 ]
  %i.aof = getelementptr inbounds nuw i8, ptr %.058.i396, i64 8
  %i.aog = getelementptr inbounds nuw i8, ptr %.067.i397, i64 8
  %i.aoh = load double, ptr %.058.i396, align 8, !tbaa !42
  %i.aoi = tail call double @cosh(double noundef %i.aoh) #17
  store double %i.aoi, ptr %.067.i397, align 8, !tbaa !42
  %i.aoj = getelementptr inbounds nuw i8, ptr %.058.i396, i64 16
  %i.aok = getelementptr inbounds nuw i8, ptr %.067.i397, i64 16
  %i.aol = load double, ptr %i.aof, align 8, !tbaa !42
  %i.aom = tail call double @cosh(double noundef %i.aol) #17
  store double %i.aom, ptr %i.aog, align 8, !tbaa !42
  %i.aon = getelementptr inbounds nuw i8, ptr %.058.i396, i64 24
  %i.aoo = getelementptr inbounds nuw i8, ptr %.067.i397, i64 24
  %i.aop = load double, ptr %i.aoj, align 8, !tbaa !42
  %i.aoq = tail call double @cosh(double noundef %i.aop) #17
  store double %i.aoq, ptr %i.aok, align 8, !tbaa !42
  %i.aor = getelementptr inbounds nuw i8, ptr %.058.i396, i64 32 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.067.i397, i64 32 ; 2 uses
  %i.aot = load double, ptr %i.aon, align 8, !tbaa !42
  %i.aou = tail call double @cosh(double noundef %i.aot) #17
  store double %i.aou, ptr %i.aoo, align 8, !tbaa !42
  %niter1221.next.3 = add nuw nsw i64 %niter1221, 4 ; 2 uses
  %niter1221.ncmp.3 = icmp eq i64 %niter1221.next.3, %unroll_iter1220
  br i1 %niter1221.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1194.unr-lcssa, label %.lr.ph.i394, !llvm.loop !192

bb.ap:                                            ; preds = %bb.a
  %i.aov = icmp sgt i64 %4, 0
  br i1 %i.aov, label %.lr.ph.i399.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i399.preheader:                            ; preds = %bb.ap
  %i.aow = add nsw i64 %4, -1
  %xtraiter1210 = and i64 %4, 3                   ; 3 uses
  %i.aox = icmp ult i64 %i.aow, 3
  br i1 %i.aox, label %.lr.ph.i399.epil.preheader, label %.lr.ph.i399.preheader.new

.lr.ph.i399.preheader.new:                        ; preds = %.lr.ph.i399.preheader
  %unroll_iter1214 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i399

.lr.ph.i399:                                      ; preds = %.lr.ph.i399, %.lr.ph.i399.preheader.new
  %.058.i401 = phi ptr [ %1, %.lr.ph.i399.preheader.new ], [ %i.apk, %.lr.ph.i399 ] ; 5 uses
  %.067.i402 = phi ptr [ %3, %.lr.ph.i399.preheader.new ], [ %i.apl, %.lr.ph.i399 ] ; 5 uses
  %niter1215 = phi i64 [ 0, %.lr.ph.i399.preheader.new ], [ %niter1215.next.3, %.lr.ph.i399 ]
  %i.aoy = getelementptr inbounds nuw i8, ptr %.058.i401, i64 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %.067.i402, i64 8
  %i.apa = load double, ptr %.058.i401, align 8, !tbaa !42
  %i.apb = tail call double @tanh(double noundef %i.apa) #17
  store double %i.apb, ptr %.067.i402, align 8, !tbaa !42
  %i.apc = getelementptr inbounds nuw i8, ptr %.058.i401, i64 16
  %i.apd = getelementptr inbounds nuw i8, ptr %.067.i402, i64 16
  %i.ape = load double, ptr %i.aoy, align 8, !tbaa !42
  %i.apf = tail call double @tanh(double noundef %i.ape) #17
  store double %i.apf, ptr %i.aoz, align 8, !tbaa !42
  %i.apg = getelementptr inbounds nuw i8, ptr %.058.i401, i64 24
  %i.aph = getelementptr inbounds nuw i8, ptr %.067.i402, i64 24
  %i.api = load double, ptr %i.apc, align 8, !tbaa !42
  %i.apj = tail call double @tanh(double noundef %i.api) #17
  store double %i.apj, ptr %i.apd, align 8, !tbaa !42
  %i.apk = getelementptr inbounds nuw i8, ptr %.058.i401, i64 32 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.067.i402, i64 32 ; 2 uses
  %i.apm = load double, ptr %i.apg, align 8, !tbaa !42
  %i.apn = tail call double @tanh(double noundef %i.apm) #17
  store double %i.apn, ptr %i.aph, align 8, !tbaa !42
  %niter1215.next.3 = add nuw nsw i64 %niter1215, 4 ; 2 uses
  %niter1215.ncmp.3 = icmp eq i64 %niter1215.next.3, %unroll_iter1214
  br i1 %niter1215.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1195.unr-lcssa, label %.lr.ph.i399, !llvm.loop !193

bb.aq:                                            ; preds = %bb.a
  %i.apo = icmp sgt i64 %4, 0
  br i1 %i.apo, label %.lr.ph.i404, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i404:                                      ; preds = %bb.aq, %.lr.ph.i404
  %.09.i405 = phi i64 [ %i.apt, %.lr.ph.i404 ], [ 0, %bb.aq ]
  %.058.i406 = phi ptr [ %i.app, %.lr.ph.i404 ], [ %1, %bb.aq ] ; 2 uses
  %.067.i407 = phi ptr [ %i.apq, %.lr.ph.i404 ], [ %3, %bb.aq ] ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.058.i406, i64 8
  %i.apq = getelementptr inbounds nuw i8, ptr %.067.i407, i64 8
  %i.apr = load double, ptr %.058.i406, align 8, !tbaa !42
  %i.aps = tail call double @asinh(double noundef %i.apr) #17
  store double %i.aps, ptr %.067.i407, align 8, !tbaa !42
  %i.apt = add nuw nsw i64 %.09.i405, 1           ; 2 uses
  %exitcond.not.i408 = icmp eq i64 %i.apt, %4
  br i1 %exitcond.not.i408, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i404, !llvm.loop !194

bb.ar:                                            ; preds = %bb.a
  %i.apu = icmp sgt i64 %4, 0
  br i1 %i.apu, label %.lr.ph.i409, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i409:                                      ; preds = %bb.ar, %.lr.ph.i409
  %.09.i410 = phi i64 [ %i.apz, %.lr.ph.i409 ], [ 0, %bb.ar ]
  %.058.i411 = phi ptr [ %i.apv, %.lr.ph.i409 ], [ %1, %bb.ar ] ; 2 uses
  %.067.i412 = phi ptr [ %i.apw, %.lr.ph.i409 ], [ %3, %bb.ar ] ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.058.i411, i64 8
  %i.apw = getelementptr inbounds nuw i8, ptr %.067.i412, i64 8
  %i.apx = load double, ptr %.058.i411, align 8, !tbaa !42
  %i.apy = tail call double @acosh(double noundef %i.apx) #17
  store double %i.apy, ptr %.067.i412, align 8, !tbaa !42
  %i.apz = add nuw nsw i64 %.09.i410, 1           ; 2 uses
  %exitcond.not.i413 = icmp eq i64 %i.apz, %4
  br i1 %exitcond.not.i413, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i409, !llvm.loop !195

bb.as:                                            ; preds = %bb.a
  %i.aqa = icmp sgt i64 %4, 0
  br i1 %i.aqa, label %.lr.ph.i414, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i414:                                      ; preds = %bb.as, %.lr.ph.i414
  %.09.i415 = phi i64 [ %i.aqf, %.lr.ph.i414 ], [ 0, %bb.as ]
  %.058.i416 = phi ptr [ %i.aqb, %.lr.ph.i414 ], [ %1, %bb.as ] ; 2 uses
  %.067.i417 = phi ptr [ %i.aqc, %.lr.ph.i414 ], [ %3, %bb.as ] ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %.058.i416, i64 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %.067.i417, i64 8
  %i.aqd = load double, ptr %.058.i416, align 8, !tbaa !42
  %i.aqe = tail call double @atanh(double noundef %i.aqd) #17
  store double %i.aqe, ptr %.067.i417, align 8, !tbaa !42
  %i.aqf = add nuw nsw i64 %.09.i415, 1           ; 2 uses
  %exitcond.not.i418 = icmp eq i64 %i.aqf, %4
  br i1 %exitcond.not.i418, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i414, !llvm.loop !196

bb.at:                                            ; preds = %bb.a
  %i.aqg = icmp sgt i64 %4, 0
  br i1 %i.aqg, label %.lr.ph.i419.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i419.preheader:                            ; preds = %bb.at
  %i.aqh = add nsw i64 %4, -1
  %xtraiter1207 = and i64 %4, 3                   ; 3 uses
  %i.aqi = icmp ult i64 %i.aqh, 3
  br i1 %i.aqi, label %.lr.ph.i419.epil.preheader, label %.lr.ph.i419.preheader.new

.lr.ph.i419.preheader.new:                        ; preds = %.lr.ph.i419.preheader
  %unroll_iter = and i64 %4, 9223372036854775804
  br label %.lr.ph.i419

.lr.ph.i419:                                      ; preds = %.lr.ph.i419, %.lr.ph.i419.preheader.new
  %.058.i421 = phi ptr [ %1, %.lr.ph.i419.preheader.new ], [ %i.aqy, %.lr.ph.i419 ] ; 5 uses
  %.067.i422 = phi ptr [ %3, %.lr.ph.i419.preheader.new ], [ %i.aqz, %.lr.ph.i419 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i419.preheader.new ], [ %niter.next.3, %.lr.ph.i419 ]
  %i.aqj = getelementptr inbounds nuw i8, ptr %.058.i421, i64 8
  %i.aqk = getelementptr inbounds nuw i8, ptr %.067.i422, i64 8
  %i.aql = load double, ptr %.058.i421, align 8, !tbaa !42
  %i.aqm = load double, ptr %2, align 8, !tbaa !42
  %i.aqn = tail call double @atan2(double noundef %i.aql, double noundef %i.aqm) #17
  store double %i.aqn, ptr %.067.i422, align 8, !tbaa !42
  %i.aqo = getelementptr inbounds nuw i8, ptr %.058.i421, i64 16
  %i.aqp = getelementptr inbounds nuw i8, ptr %.067.i422, i64 16
  %i.aqq = load double, ptr %i.aqj, align 8, !tbaa !42
  %i.aqr = load double, ptr %2, align 8, !tbaa !42
  %i.aqs = tail call double @atan2(double noundef %i.aqq, double noundef %i.aqr) #17
  store double %i.aqs, ptr %i.aqk, align 8, !tbaa !42
  %i.aqt = getelementptr inbounds nuw i8, ptr %.058.i421, i64 24
  %i.aqu = getelementptr inbounds nuw i8, ptr %.067.i422, i64 24
  %i.aqv = load double, ptr %i.aqo, align 8, !tbaa !42
  %i.aqw = load double, ptr %2, align 8, !tbaa !42
  %i.aqx = tail call double @atan2(double noundef %i.aqv, double noundef %i.aqw) #17
  store double %i.aqx, ptr %i.aqp, align 8, !tbaa !42
  %i.aqy = getelementptr inbounds nuw i8, ptr %.058.i421, i64 32 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.067.i422, i64 32 ; 2 uses
  %i.ara = load double, ptr %i.aqt, align 8, !tbaa !42
  %i.arb = load double, ptr %2, align 8, !tbaa !42
  %i.arc = tail call double @atan2(double noundef %i.ara, double noundef %i.arb) #17
  store double %i.arc, ptr %i.aqu, align 8, !tbaa !42
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1199.unr-lcssa, label %.lr.ph.i419, !llvm.loop !197

bb.au:                                            ; preds = %bb.a
  %i.ard = icmp sgt i64 %4, 0
  br i1 %i.ard, label %.lr.ph.i424, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i424:                                      ; preds = %bb.au, %.lr.ph.i424
  %.09.i425 = phi i64 [ %i.ari, %.lr.ph.i424 ], [ 0, %bb.au ]
  %.058.i426 = phi ptr [ %i.are, %.lr.ph.i424 ], [ %1, %bb.au ] ; 2 uses
  %.067.i427 = phi ptr [ %i.arf, %.lr.ph.i424 ], [ %3, %bb.au ] ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.058.i426, i64 8
  %i.arf = getelementptr inbounds nuw i8, ptr %.067.i427, i64 8
  %i.arg = load double, ptr %.058.i426, align 8, !tbaa !42
  %i.arh = tail call noundef double @_ZN6casadi6erfinvEd(double noundef %i.arg) #17
  store double %i.arh, ptr %.067.i427, align 8, !tbaa !42
  %i.ari = add nuw nsw i64 %.09.i425, 1           ; 2 uses
  %exitcond.not.i428 = icmp eq i64 %i.ari, %4
  br i1 %exitcond.not.i428, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i424, !llvm.loop !198

bb.av:                                            ; preds = %bb.a
  %i.arj = icmp sgt i64 %4, 0
  br i1 %i.arj, label %.lr.ph.i429.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i429.preheader:                            ; preds = %bb.av
  %min.iters.check = icmp ult i64 %4, 8
  %19 = ptrtoaddr ptr %3 to i64
  %20 = ptrtoaddr ptr %1 to i64
  %i.ark = sub i64 %20, %19
  %diff.check = icmp ugt i64 %i.ark, -32
  %or.cond1138 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1138, label %.lr.ph.i429.preheader1201, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i429.preheader
  %n.vec = and i64 %4, 9223372036854775804        ; 4 uses
  %i.arl = shl i64 %n.vec, 3                      ; 2 uses
  %i.arm = getelementptr i8, ptr %1, i64 %i.arl
  %i.arn = getelementptr i8, ptr %3, i64 %i.arl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aro = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.aro ; 2 uses
  %next.gep654 = getelementptr i8, ptr %3, i64 %i.aro ; 2 uses
  %i.arp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !42
  %wide.load655 = load <2 x double>, ptr %i.arp, align 8, !tbaa !42
  %i.arq = getelementptr i8, ptr %next.gep654, i64 16
  store <2 x double> %wide.load, ptr %next.gep654, align 8, !tbaa !42
  store <2 x double> %wide.load655, ptr %i.arq, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.arr = icmp eq i64 %index.next, %n.vec
  br i1 %i.arr, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i429.preheader1201

.lr.ph.i429.preheader1201:                        ; preds = %.lr.ph.i429.preheader, %middle.block
  %.09.i430.ph = phi i64 [ 0, %.lr.ph.i429.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.058.i431.ph = phi ptr [ %1, %.lr.ph.i429.preheader ], [ %i.arm, %middle.block ] ; 2 uses
  %.067.i432.ph = phi ptr [ %3, %.lr.ph.i429.preheader ], [ %i.arn, %middle.block ] ; 2 uses
  %i.ars = sub nsw i64 %4, %.09.i430.ph
  %xtraiter = and i64 %i.ars, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol

.lr.ph.i429.prol:                                 ; preds = %.lr.ph.i429.preheader1201, %.lr.ph.i429.prol
  %.09.i430.prol = phi i64 [ %i.arw, %.lr.ph.i429.prol ], [ %.09.i430.ph, %.lr.ph.i429.preheader1201 ]
  %.058.i431.prol = phi ptr [ %i.art, %.lr.ph.i429.prol ], [ %.058.i431.ph, %.lr.ph.i429.preheader1201 ] ; 2 uses
  %.067.i432.prol = phi ptr [ %i.aru, %.lr.ph.i429.prol ], [ %.067.i432.ph, %.lr.ph.i429.preheader1201 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i429.prol ], [ 0, %.lr.ph.i429.preheader1201 ]
  %i.art = getelementptr inbounds nuw i8, ptr %.058.i431.prol, i64 8 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.067.i432.prol, i64 8 ; 2 uses
  %i.arv = load double, ptr %.058.i431.prol, align 8, !tbaa !42
  store double %i.arv, ptr %.067.i432.prol, align 8, !tbaa !42
  %i.arw = add nuw nsw i64 %.09.i430.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol, !llvm.loop !200

.lr.ph.i429.prol.loopexit:                        ; preds = %.lr.ph.i429.prol, %.lr.ph.i429.preheader1201
  %.09.i430.unr = phi i64 [ %.09.i430.ph, %.lr.ph.i429.preheader1201 ], [ %i.arw, %.lr.ph.i429.prol ]
  %.058.i431.unr = phi ptr [ %.058.i431.ph, %.lr.ph.i429.preheader1201 ], [ %i.art, %.lr.ph.i429.prol ]
  %.067.i432.unr = phi ptr [ %.067.i432.ph, %.lr.ph.i429.preheader1201 ], [ %i.aru, %.lr.ph.i429.prol ]
  %i.arx = sub nsw i64 %.09.i430.ph, %4
  %i.ary = icmp ugt i64 %i.arx, -8
  br i1 %i.ary, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429
  %.09.i430 = phi i64 [ %i.asx, %.lr.ph.i429 ], [ %.09.i430.unr, %.lr.ph.i429.prol.loopexit ]
  %.058.i431 = phi ptr [ %i.asu, %.lr.ph.i429 ], [ %.058.i431.unr, %.lr.ph.i429.prol.loopexit ] ; 9 uses
  %.067.i432 = phi ptr [ %i.asv, %.lr.ph.i429 ], [ %.067.i432.unr, %.lr.ph.i429.prol.loopexit ] ; 9 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.058.i431, i64 8
  %i.asa = getelementptr inbounds nuw i8, ptr %.067.i432, i64 8
  %i.asb = load double, ptr %.058.i431, align 8, !tbaa !42
  store double %i.asb, ptr %.067.i432, align 8, !tbaa !42
  %i.asc = getelementptr inbounds nuw i8, ptr %.058.i431, i64 16
  %i.asd = getelementptr inbounds nuw i8, ptr %.067.i432, i64 16
  %i.ase = load double, ptr %i.arz, align 8, !tbaa !42
  store double %i.ase, ptr %i.asa, align 8, !tbaa !42
  %i.asf = getelementptr inbounds nuw i8, ptr %.058.i431, i64 24
  %i.asg = getelementptr inbounds nuw i8, ptr %.067.i432, i64 24
  %i.ash = load double, ptr %i.asc, align 8, !tbaa !42
  store double %i.ash, ptr %i.asd, align 8, !tbaa !42
  %i.asi = getelementptr inbounds nuw i8, ptr %.058.i431, i64 32
  %i.asj = getelementptr inbounds nuw i8, ptr %.067.i432, i64 32
  %i.ask = load double, ptr %i.asf, align 8, !tbaa !42
  store double %i.ask, ptr %i.asg, align 8, !tbaa !42
  %i.asl = getelementptr inbounds nuw i8, ptr %.058.i431, i64 40
  %i.asm = getelementptr inbounds nuw i8, ptr %.067.i432, i64 40
  %i.asn = load double, ptr %i.asi, align 8, !tbaa !42
  store double %i.asn, ptr %i.asj, align 8, !tbaa !42
  %i.aso = getelementptr inbounds nuw i8, ptr %.058.i431, i64 48
  %i.asp = getelementptr inbounds nuw i8, ptr %.067.i432, i64 48
  %i.asq = load double, ptr %i.asl, align 8, !tbaa !42
  store double %i.asq, ptr %i.asm, align 8, !tbaa !42
  %i.asr = getelementptr inbounds nuw i8, ptr %.058.i431, i64 56
  %i.ass = getelementptr inbounds nuw i8, ptr %.067.i432, i64 56
  %i.ast = load double, ptr %i.aso, align 8, !tbaa !42
  store double %i.ast, ptr %i.asp, align 8, !tbaa !42
  %i.asu = getelementptr inbounds nuw i8, ptr %.058.i431, i64 64
  %i.asv = getelementptr inbounds nuw i8, ptr %.067.i432, i64 64
  %i.asw = load double, ptr %i.asr, align 8, !tbaa !42
  store double %i.asw, ptr %i.ass, align 8, !tbaa !42
  %i.asx = add nuw nsw i64 %.09.i430, 8           ; 2 uses
  %exitcond.not.i433.7 = icmp eq i64 %i.asx, %4
  br i1 %exitcond.not.i433.7, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i429, !llvm.loop !201

bb.aw:                                            ; preds = %bb.a
  %i.asy = icmp sgt i64 %4, 0
  br i1 %i.asy, label %.lr.ph.i434, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i434:                                      ; preds = %bb.aw, %.lr.ph.i434
  %.09.i435 = phi i64 [ %i.ate, %.lr.ph.i434 ], [ 0, %bb.aw ]
  %.058.i436 = phi ptr [ %i.asz, %.lr.ph.i434 ], [ %1, %bb.aw ] ; 2 uses
  %.067.i437 = phi ptr [ %i.ata, %.lr.ph.i434 ], [ %3, %bb.aw ] ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.058.i436, i64 8
  %i.ata = getelementptr inbounds nuw i8, ptr %.067.i437, i64 8
  %i.atb = load double, ptr %.058.i436, align 8, !tbaa !42
  %i.atc = load double, ptr %2, align 8, !tbaa !42
  %i.atd = tail call noundef double @_ZN6casadi7printmeEdd(double noundef %i.atb, double noundef %i.atc)
  store double %i.atd, ptr %.067.i437, align 8, !tbaa !42
  %i.ate = add nuw nsw i64 %.09.i435, 1           ; 2 uses
  %exitcond.not.i438 = icmp eq i64 %i.ate, %4
  br i1 %exitcond.not.i438, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i434, !llvm.loop !202

bb.ax:                                            ; preds = %bb.a
  %i.atf = icmp sgt i64 %4, 0
  br i1 %i.atf, label %.lr.ph.i439, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i439:                                      ; preds = %bb.ax, %.lr.ph.i439
  %.09.i440 = phi i64 [ %i.atk, %.lr.ph.i439 ], [ 0, %bb.ax ]
  %.058.i441 = phi ptr [ %i.atg, %.lr.ph.i439 ], [ %1, %bb.ax ] ; 2 uses
  %.067.i442 = phi ptr [ %i.ath, %.lr.ph.i439 ], [ %3, %bb.ax ] ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %.058.i441, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %.067.i442, i64 8
  %i.ati = load double, ptr %.058.i441, align 8, !tbaa !42
  %i.atj = tail call double @log1p(double noundef %i.ati) #17
  store double %i.atj, ptr %.067.i442, align 8, !tbaa !42
  %i.atk = add nuw nsw i64 %.09.i440, 1           ; 2 uses
  %exitcond.not.i443 = icmp eq i64 %i.atk, %4
  br i1 %exitcond.not.i443, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i439, !llvm.loop !203

bb.ay:                                            ; preds = %bb.a
  %i.atl = icmp sgt i64 %4, 0
  br i1 %i.atl, label %.lr.ph.i444, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i444:                                      ; preds = %bb.ay, %.lr.ph.i444
  %.09.i445 = phi i64 [ %i.atq, %.lr.ph.i444 ], [ 0, %bb.ay ]
  %.058.i446 = phi ptr [ %i.atm, %.lr.ph.i444 ], [ %1, %bb.ay ] ; 2 uses
  %.067.i447 = phi ptr [ %i.atn, %.lr.ph.i444 ], [ %3, %bb.ay ] ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.058.i446, i64 8
  %i.atn = getelementptr inbounds nuw i8, ptr %.067.i447, i64 8
  %i.ato = load double, ptr %.058.i446, align 8, !tbaa !42
  %i.atp = tail call double @expm1(double noundef %i.ato) #17
  store double %i.atp, ptr %.067.i447, align 8, !tbaa !42
  %i.atq = add nuw nsw i64 %.09.i445, 1           ; 2 uses
  %exitcond.not.i448 = icmp eq i64 %i.atq, %4
  br i1 %exitcond.not.i448, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i444, !llvm.loop !204

bb.az:                                            ; preds = %bb.a
  %i.atr = icmp sgt i64 %4, 0
  br i1 %i.atr, label %.lr.ph.i449, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i449:                                      ; preds = %bb.az, %.lr.ph.i449
  %.09.i450 = phi i64 [ %i.atx, %.lr.ph.i449 ], [ 0, %bb.az ]
  %.058.i451 = phi ptr [ %i.ats, %.lr.ph.i449 ], [ %1, %bb.az ] ; 2 uses
  %.067.i452 = phi ptr [ %i.att, %.lr.ph.i449 ], [ %3, %bb.az ] ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.058.i451, i64 8
  %i.att = getelementptr inbounds nuw i8, ptr %.067.i452, i64 8
  %i.atu = load double, ptr %.058.i451, align 8, !tbaa !42
  %i.atv = load double, ptr %2, align 8, !tbaa !42
  %i.atw = tail call double @hypot(double noundef %i.atu, double noundef %i.atv) #17
  store double %i.atw, ptr %.067.i452, align 8, !tbaa !42
  %i.atx = add nuw nsw i64 %.09.i450, 1           ; 2 uses
  %exitcond.not.i453 = icmp eq i64 %i.atx, %4
  br i1 %exitcond.not.i453, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i449, !llvm.loop !205

_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1152.unr-lcssa: ; preds = %.lr.ph.i239
  %lcmp.mod1353.not.a = icmp eq i64 %xtraiter1351.a, 0
  br i1 %lcmp.mod1353.not.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i239.epil.preheader

.lr.ph.i239.epil.preheader:                       ; preds = %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1152.unr-lcssa, %.lr.ph.i239.preheader
  %.058.i241.epil.init = phi ptr [ %1, %.lr.ph.i239.preheader ], [ %i.ju, %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1152.unr-lcssa ]
  %.067.i242.epil.init = phi ptr [ %3, %.lr.ph.i239.preheader ], [ %i.jv, %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1152.unr-lcssa ]
  %lcmp.mod1354.a = icmp ne i64 %xtraiter1351.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod1354.a)
  br label %.lr.ph.i239.epil

.lr.ph.i239.epil:                                 ; preds = %.lr.ph.i239.epil, %.lr.ph.i239.epil.preheader
  %.058.i241.epil = phi ptr [ %i.aty, %.lr.ph.i239.epil ], [ %.058.i241.epil.init, %.lr.ph.i239.epil.preheader ] ; 2 uses
  %.067.i242.epil = phi ptr [ %i.atz, %.lr.ph.i239.epil ], [ %.067.i242.epil.init, %.lr.ph.i239.epil.preheader ] ; 2 uses
  %epil.iter1352.a = phi i64 [ %epil.iter1352.next.a, %.lr.ph.i239.epil ], [ 0, %.lr.ph.i239.epil.preheader ]
  %i.aty = getelementptr inbounds nuw i8, ptr %.058.i241.epil, i64 8
  %i.atz = getelementptr inbounds nuw i8, ptr %.067.i242.epil, i64 8
  %i.aua = load double, ptr %.058.i241.epil, align 8, !tbaa !42
  %i.aub = load double, ptr %2, align 8, !tbaa !42
  %i.auc = tail call double @pow(double noundef %i.aua, double noundef %i.aub) #17
  store double %i.auc, ptr %.067.i242.epil, align 8, !tbaa !42
  %epil.iter1352.next.a = add i64 %epil.iter1352.a, 1 ; 2 uses
  %epil.iter1352.cmp.not.a = icmp eq i64 %epil.iter1352.next.a, %xtraiter1351.a
  br i1 %epil.iter1352.cmp.not.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i239.epil, !llvm.loop !206

_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1153.unr-lcssa: ; preds = %.lr.ph.i244
  %lcmp.mod1347.not.a = icmp eq i64 %xtraiter1345.a, 0
  br i1 %lcmp.mod1347.not.a, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i244.epil.preheader

end_hunk_3
