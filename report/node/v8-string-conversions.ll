Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8-string-conversions?download=true
inline.NumInlined: 161
inline.NumDeleted: 111
begin_hunk_0_@_ZN12v8_inspector11UTF8ToUTF16B5cxx11EPKcm:bb.a
  %i.r = and i32 %i.q, 192
  %.not.i.i.i = icmp eq i32 %i.r, 192
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %i.q, 224
  %i.t = icmp eq i32 %i.s, 192
  br i1 %i.t, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.q, 240
  %i.v = icmp eq i32 %i.u, 224
  br i1 %i.v, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i32 %i.q, 248
  %i.x = icmp ne i32 %i.w, 240
  %i.y = ptrtoint ptr %.035.i to i64
  %i.z = sub i64 %i.n, %i.y
  %i.aa = icmp slt i64 %i.z, 4
  %or.cond24 = or i1 %i.aa, %i.x
  br i1 %or.cond24, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.j

_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i: ; preds = %bb.g
  %i.ab = ptrtoint ptr %.035.i to i64
  %i.ac = sub i64 %i.n, %i.ab
  %i.ad = icmp slt i64 %i.ac, 2
  br i1 %i.ad, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.l

_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i: ; preds = %bb.h
  %i.ae = ptrtoint ptr %.035.i to i64
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = icmp slt i64 %i.af, 3
  br i1 %i.ag, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.k

_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i: ; preds = %bb.e
  %i.ah = ptrtoint ptr %.035.i to i64
  %i.ai = sub i64 %i.n, %i.ah
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %._crit_edge21.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %or.cond.i.i = icmp sgt i8 %i.al, -65
  br i1 %or.cond.i.i, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.k

bb.k:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i, %bb.j
  %i.am = phi i64 [ 4, %bb.j ], [ 3, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i ]
  %i.an = phi i32 [ 4, %bb.j ], [ 3, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %or.cond5.i.i = icmp sgt i8 %i.ap, -65
  br i1 %or.cond5.i.i, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.l

bb.l:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i, %bb.k
  %i.aq = phi i64 [ %i.am, %bb.k ], [ 2, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i ]
  %i.ar = phi i32 [ %i.an, %bb.k ], [ 2, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.at = load i8, ptr %i.as, align 1             ; 6 uses
  %i.au = icmp ugt i8 %i.at, -65
  br i1 %i.au, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.o, label %bb.r [
    i8 -32, label %bb.n
    i8 -19, label %bb.o
    i8 -16, label %bb.p
    i8 -12, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.av = icmp ult i8 %i.at, -96
  br i1 %i.av, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i

bb.o:                                             ; preds = %bb.m
  %i.aw = icmp ugt i8 %i.at, -97
  br i1 %i.aw, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ax = icmp ult i8 %i.at, -112
  br i1 %i.ax, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ay = icmp ugt i8 %i.at, -113
  br i1 %i.ay, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i

bb.r:                                             ; preds = %bb.m
  %i.az = icmp sgt i8 %i.at, -1
  br i1 %i.az, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i

_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.ba = add nsw i8 %i.o, 62
  %spec.select.i.i = icmp ult i8 %i.ba, 51
  br i1 %spec.select.i.i, label %bb.s, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i

bb.s:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i
  switch i32 %i.ar, label %default.unreachable [
    i32 3, label %._crit_edge.i59.i
    i32 2, label %._crit_edge19.i.i
    i32 4, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.035.i, i64 1 ; 2 uses
  %i.bc = zext i8 %i.o to i32
  %i.bd = shl nuw nsw i32 %i.bc, 6
  %.pre.i = load i8, ptr %i.bb, align 1
  br label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %bb.s, %bb.t
  %i.be = phi i8 [ %.pre.i, %bb.t ], [ %i.o, %bb.s ]
  %i.bf = phi ptr [ %i.bb, %bb.t ], [ %.035.i, %bb.s ]
  %.2.i.i = phi i32 [ %i.bd, %bb.t ], [ 0, %bb.s ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %.2.i.i, %i.bh
  %i.bj = shl nuw nsw i32 %i.bi, 6
  %.pre96.i = load i8, ptr %i.bg, align 1
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge.i59.i, %bb.s
  %i.bk = phi i8 [ %.pre96.i, %._crit_edge.i59.i ], [ %i.o, %bb.s ]
  %i.bl = phi ptr [ %i.bg, %._crit_edge.i59.i ], [ %.035.i, %bb.s ]
  %.3.i.i = phi i32 [ %i.bj, %._crit_edge.i59.i ], [ 0, %bb.s ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %i.bn = zext i8 %i.bk to i32
  %i.bo = add nuw nsw i32 %.3.i.i, %i.bn
  %i.bp = shl nuw nsw i32 %i.bo, 6
  %.pre97.i = load i8, ptr %i.bm, align 1
  br label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i, %._crit_edge19.i.i
  %i.bq = phi i64 [ %i.aq, %._crit_edge19.i.i ], [ 1, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i ]
  %i.br = phi i8 [ %.pre97.i, %._crit_edge19.i.i ], [ %i.o, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i ]
  %i.bs = phi ptr [ %i.bm, %._crit_edge19.i.i ], [ %.035.i, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i ]
  %.4.i.i = phi i32 [ %i.bp, %._crit_edge19.i.i ], [ 0, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.bu = zext i8 %i.br to i32
  %i.bv = add nuw nsw i32 %.4.i.i, %i.bu
  %i.bw = getelementptr [4 x i8], ptr @_ZN12v8_inspector12_GLOBAL__N_115offsetsFromUTF8E, i64 %i.bq
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sub i32 %i.bv, %i.by                    ; 6 uses
  %.not.i = icmp ult ptr %.04136.i, %.0.i.i.i.i.i
  br i1 %.not.i, label %bb.u, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %._crit_edge21.i.i
  %i.ca = icmp ult i32 %i.bz, 65536
  br i1 %i.ca, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cb = and i32 %i.bz, 63488
  %i.cc = icmp eq i32 %i.cb, 55296
  br i1 %i.cc, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = trunc nuw i32 %i.bz to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.04136.i, i64 2
  store i16 %i.cd, ptr %.04136.i, align 2
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.cf = icmp ult i32 %i.bz, 1114112
  br i1 %i.cf, label %bb.y, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %.04136.i, i64 2 ; 2 uses
  %.not58.i = icmp ult ptr %i.cg, %.0.i.i.i.i.i
  br i1 %.not58.i, label %bb.z, label %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i

bb.z:                                             ; preds = %bb.y
  %i.ch = lshr i32 %i.bz, 10
  %i.ci = trunc nuw nsw i32 %i.ch to i16
  %i.cj = add nuw nsw i16 %i.ci, -10304
  store i16 %i.cj, ptr %.04136.i, align 2
  %i.ck = trunc i32 %i.bz to i16
  %i.cl = and i16 %i.ck, 1023
  %i.cm = or disjoint i16 %i.cl, -9216
  %i.cn = getelementptr inbounds nuw i8, ptr %.04136.i, i64 4
  store i16 %i.cm, ptr %i.cg, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.344.i = phi ptr [ %i.cn, %bb.z ], [ %i.ce, %bb.w ] ; 2 uses
  %i.co = icmp ult ptr %i.bt, %i.l
  br i1 %i.co, label %bb.e, label %_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit

_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i: ; preds = %bb.x, %bb.y, %bb.v, %._crit_edge21.i.i, %bb.f, %bb.i, %bb.n, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt2.i, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt3.i, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt1.i, %_ZN12v8_inspector12_GLOBAL__N_111isLegalUTF8EPKhi.exit.i, %bb.p, %bb.j, %bb.k, %bb.q, %bb.r, %bb.o, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cp, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cq, align 8
  store i16 0, ptr %i.cp, align 8
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit: ; preds = %bb.aa
  %3 = ptrtoint ptr %.344.i to i64
  %4 = sub i64 %3, %i.m                           ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %5, align 8
  %i.cs = ashr exact i64 %4, 1                    ; 5 uses
  %i.ct = icmp ugt i64 %i.cs, 7
  br i1 %i.ct, label %bb.ab, label %._crit_edge.i.i

bb.ab:                                            ; preds = %_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit
  %i.cu = icmp ugt i64 %i.cs, 4611686018427387903
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cv = icmp eq i64 %4, 9223372036854775806
  br i1 %i.cv, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, !prof !5

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.ad
  %i.cw = add nuw nsw i64 %4, 2
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #8 ; 2 uses
  store ptr %i.cx, ptr %0, align 8
  store i64 %i.cs, ptr %i.cr, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit
  %i.cy = phi ptr [ %i.cx, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.cr, %_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit ] ; 3 uses
  switch i64 %i.cs, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPDsvEET_S7_RKS3_.exit
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.cz = load i16, ptr %i.g, align 2
  store i16 %i.cz, ptr %i.cy, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPDsvEET_S7_RKS3_.exit

bb.ag:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cy, ptr nonnull align 2 %i.g, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPDsvEET_S7_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPDsvEET_S7_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.af, %bb.ag
  store i64 %i.cs, ptr %5, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %4
  store i16 0, ptr %i.da, align 2
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPDsvEET_S7_RKS3_.exit, %_ZN12v8_inspector12_GLOBAL__N_124inlineUTF8SequenceLengthEc.exit.jt0.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.f) #10
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #8 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1
  store i8 %i.u, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1
  store i8 %i.ad, ptr %i.aa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
