Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_reflection?download=true
inline.NumInlined: 8507
inline.NumDeleted: 3569
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK6google8protobuf10Reflection26IsEagerlyVerifiedLazyFieldEPKNS0_15FieldDescriptorE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i16 @_ZNK6google8protobuf10Reflection12GetLazyStyleEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10Reflection13SpaceUsedLongERKNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !133
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.a ]
  %i.k = tail call noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i)
  %i.l = add i64 %i.k, %i.d                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44   ; 2 uses
  %.not410 = icmp eq i32 %i.n, -1
  br i1 %.not410, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.r = add i64 %i.q, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit
  %.080 = phi i64 [ %i.r, %bb.c ], [ %i.l, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit ] ; 2 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !128
  %.not414 = icmp slt i32 %i.s, 0
  br i1 %.not414, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390, %bb.d
  %.1.lcssa = phi i64 [ %.080, %bb.d ], [ %.5, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390 ]
  ret i64 %.1.lcssa

bb.e:                                             ; preds = %.lr.ph, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390 ] ; 3 uses
  %.1415 = phi i64 [ %.080, %.lr.ph ], [ %.5, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390 ] ; 26 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134
  %i.aa = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %indvars.iv ; 138 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1             ; 17 uses
  %i.ad = and i8 %i.ac, 32
  %.not411 = icmp eq i8 %i.ad, 0
  br i1 %.not411, label %bb.co, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !86
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !88
  switch i32 %i.ai, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390 [
    i32 1, label %bb.g
    i32 2, label %bb.n
    i32 3, label %bb.u
    i32 4, label %bb.ab
    i32 5, label %bb.ai
    i32 6, label %bb.ap
    i32 7, label %bb.aw
    i32 8, label %bb.bd
    i32 9, label %bb.bk
    i32 10, label %bb.bz
  ]

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.ak = and i8 %i.ac, 8
  %.not.i.i.i = icmp eq i8 %i.ak, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not1.i.i.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.i:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.h
  %.sink7.in.i.i.i = phi ptr [ %i.at, %bb.i ], [ %i.aq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.an, %bb.h ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.au = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.av = ptrtoint ptr %.sink7.i.i.i to i64
  %i.aw = sub i64 %i.au, %i.av
  %.0.in.i.i.i = sdiv exact i64 %i.aw, 88
  %i.ax = shl i64 %.0.in.i.i.i, 32
  %i.ay = ashr exact i64 %i.ax, 30
  %i.az = getelementptr inbounds i8, ptr %i.aj, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  %i.bb = and i32 %i.ba, 2147483640               ; 2 uses
  %i.bc = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bc, -1
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i = icmp eq ptr %i.bh, null
  br i1 %.not1.i.i14.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !92
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.l, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i, %bb.k
  %.sink7.in.i.i16.i = phi ptr [ %i.bl, %bb.l ], [ %i.bi, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i ], [ %i.bf, %bb.k ]
  %.sink7.i.i17.i = load ptr, ptr %.sink7.in.i.i16.i, align 8, !tbaa !43
  %i.bm = ptrtoint ptr %.sink7.i.i17.i to i64
  %i.bn = sub i64 %i.au, %i.bm
  %.0.in.i.i18.i = sdiv exact i64 %i.bn, 88
  %i.bo = shl i64 %.0.in.i.i18.i, 32
  %i.bp = ashr exact i64 %i.bo, 30
  %i.bq = getelementptr inbounds i8, ptr %i.aj, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.m, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.bt = zext i32 %i.bc to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  %i.bw = zext nneg i32 %i.bb to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !136
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.bz = zext nneg i32 %i.bb to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.m, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %.1.i = phi ptr [ %i.ca, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i ], [ %i.by, %bb.m ] ; 2 uses
  %i.cb = load i32, ptr %.1.i, align 4, !tbaa !95
  %i.cc = and i32 %i.cb, 1
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !40
  %.fr.i = freeze i32 %i.cg                       ; 2 uses
  %i.ch = icmp sgt i32 %.fr.i, 2
  %2 = zext nneg i32 %.fr.i to i64
  %i.ci = shl nuw nsw i64 %2, 2
  %i.cj = add nuw nsw i64 %i.ci, 8
  %spec.select.i = select i1 %i.ch, i64 %i.cj, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i
  %i.ck = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i ]
  %i.cl = add i64 %i.ck, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.n:                                             ; preds = %bb.f
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.cn = and i8 %i.ac, 8
  %.not.i.i.i83 = icmp eq i8 %i.cn, 0             ; 2 uses
  br i1 %.not.i.i.i83, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i84

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i84: ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i85 = icmp eq ptr %i.cs, null
  br i1 %.not1.i.i.i85, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i86

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i86: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i84
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.p:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i84
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.p, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i86, %bb.o
  %.sink7.in.i.i.i87 = phi ptr [ %i.cw, %bb.p ], [ %i.ct, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i86 ], [ %i.cq, %bb.o ]
  %.sink7.i.i.i88 = load ptr, ptr %.sink7.in.i.i.i87, align 8, !tbaa !43
  %i.cx = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.cy = ptrtoint ptr %.sink7.i.i.i88 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.0.in.i.i.i89 = sdiv exact i64 %i.cz, 88
  %i.da = shl i64 %.0.in.i.i.i89, 32
  %i.db = ashr exact i64 %i.da, 30
  %i.dc = getelementptr inbounds i8, ptr %i.cm, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !72
  %i.de = and i32 %i.dd, 2147483640               ; 2 uses
  %i.df = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.df, -1
  br i1 %.not.i.i90, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i98, label %bb.q

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i83, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i91

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !91
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i91: ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i92 = icmp eq ptr %i.dk, null
  br i1 %.not1.i.i14.i92, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i93

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i93: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i91
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i91
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !92
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i93, %bb.r
  %.sink7.in.i.i16.i95 = phi ptr [ %i.do, %bb.s ], [ %i.dl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i93 ], [ %i.di, %bb.r ]
  %.sink7.i.i17.i96 = load ptr, ptr %.sink7.in.i.i16.i95, align 8, !tbaa !43
  %i.dp = ptrtoint ptr %.sink7.i.i17.i96 to i64
  %i.dq = sub i64 %i.cx, %i.dp
  %.0.in.i.i18.i97 = sdiv exact i64 %i.dq, 88
  %i.dr = shl i64 %.0.in.i.i18.i97, 32
  %i.ds = ashr exact i64 %i.dr, 30
  %i.dt = getelementptr inbounds i8, ptr %i.cm, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !72
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.t, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i98, !prof !93

bb.t:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94
  %i.dw = zext i32 %i.df to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !85
  %i.dz = zext nneg i32 %i.de to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !138
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i98: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i94, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ec = zext nneg i32 %i.de to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %i.ec
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.t, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i98
  %.1.i99 = phi ptr [ %i.ed, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i98 ], [ %i.eb, %bb.t ] ; 2 uses
  %i.ee = load i32, ptr %.1.i99, align 4, !tbaa !95
  %i.ef = and i32 %i.ee, 1
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZNK6google8protobuf13RepeatedFieldIlE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.i99, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !40
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !40
  %.fr.i100 = freeze i32 %i.ej                    ; 2 uses
  %i.ek = icmp sgt i32 %.fr.i100, 1
  %3 = zext nneg i32 %.fr.i100 to i64
  %i.el = shl nuw nsw i64 %3, 3
  %i.em = add nuw nsw i64 %i.el, 8
  %spec.select.i101 = select i1 %i.ek, i64 %i.em, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIlE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIlE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit.i
  %i.en = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIlEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i101, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit.i ]
  %i.eo = add i64 %i.en, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.u:                                             ; preds = %bb.f
  %i.ep = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.eq = and i8 %i.ac, 8
  %.not.i.i.i102 = icmp eq i8 %i.eq, 0            ; 2 uses
  br i1 %.not.i.i.i102, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i103

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !91
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i103: ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not1.i.i.i104, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i105

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i105: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.w:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i103
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.w, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i105, %bb.v
  %.sink7.in.i.i.i106 = phi ptr [ %i.ez, %bb.w ], [ %i.ew, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i105 ], [ %i.et, %bb.v ]
  %.sink7.i.i.i107 = load ptr, ptr %.sink7.in.i.i.i106, align 8, !tbaa !43
  %i.fa = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.fb = ptrtoint ptr %.sink7.i.i.i107 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %.0.in.i.i.i108 = sdiv exact i64 %i.fc, 88
  %i.fd = shl i64 %.0.in.i.i.i108, 32
  %i.fe = ashr exact i64 %i.fd, 30
  %i.ff = getelementptr inbounds i8, ptr %i.ep, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !72
  %i.fh = and i32 %i.fg, 2147483640               ; 2 uses
  %i.fi = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i109 = icmp eq i32 %i.fi, -1
  br i1 %.not.i.i109, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117, label %bb.x

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i102, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i110

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !91
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i110: ; preds = %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i111 = icmp eq ptr %i.fn, null
  br i1 %.not1.i.i14.i111, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i112

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i112: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i110
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113

bb.z:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i110
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !92
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113: ; preds = %bb.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i112, %bb.y
  %.sink7.in.i.i16.i114 = phi ptr [ %i.fr, %bb.z ], [ %i.fo, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i112 ], [ %i.fl, %bb.y ]
  %.sink7.i.i17.i115 = load ptr, ptr %.sink7.in.i.i16.i114, align 8, !tbaa !43
  %i.fs = ptrtoint ptr %.sink7.i.i17.i115 to i64
  %i.ft = sub i64 %i.fa, %i.fs
  %.0.in.i.i18.i116 = sdiv exact i64 %i.ft, 88
  %i.fu = shl i64 %.0.in.i.i18.i116, 32
  %i.fv = ashr exact i64 %i.fu, 30
  %i.fw = getelementptr inbounds i8, ptr %i.ep, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !72
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.aa, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117, !prof !93

bb.aa:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113
  %i.fz = zext i32 %i.fi to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !85
  %i.gc = zext nneg i32 %i.fh to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !140
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i113, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.gf = zext nneg i32 %i.fh to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %i.gf
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.aa, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117
  %.1.i118 = phi ptr [ %i.gg, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117 ], [ %i.ge, %bb.aa ] ; 2 uses
  %i.gh = load i32, ptr %.1.i118, align 4, !tbaa !95
  %i.gi = and i32 %i.gh, 1
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZNK6google8protobuf13RepeatedFieldIjE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.1.i118, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !40
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !40
  %.fr.i119 = freeze i32 %i.gm                    ; 2 uses
  %i.gn = icmp sgt i32 %.fr.i119, 2
  %4 = zext nneg i32 %.fr.i119 to i64
  %i.go = shl nuw nsw i64 %4, 2
  %i.gp = add nuw nsw i64 %i.go, 8
  %spec.select.i120 = select i1 %i.gn, i64 %i.gp, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIjE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIjE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit.i
  %i.gq = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIjEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i120, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit.i ]
  %i.gr = add i64 %i.gq, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.ab:                                            ; preds = %bb.f
  %i.gs = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.gt = and i8 %i.ac, 8
  %.not.i.i.i121 = icmp eq i8 %i.gt, 0            ; 2 uses
  br i1 %.not.i.i.i121, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i122

bb.ac:                                            ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !91
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i122: ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i123 = icmp eq ptr %i.gy, null
  br i1 %.not1.i.i.i123, label %bb.ad, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i124

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i124: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i122
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.ad:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i122
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !92
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.ad, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i124, %bb.ac
  %.sink7.in.i.i.i125 = phi ptr [ %i.hc, %bb.ad ], [ %i.gz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i124 ], [ %i.gw, %bb.ac ]
  %.sink7.i.i.i126 = load ptr, ptr %.sink7.in.i.i.i125, align 8, !tbaa !43
  %i.hd = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.he = ptrtoint ptr %.sink7.i.i.i126 to i64
  %i.hf = sub i64 %i.hd, %i.he
  %.0.in.i.i.i127 = sdiv exact i64 %i.hf, 88
  %i.hg = shl i64 %.0.in.i.i.i127, 32
  %i.hh = ashr exact i64 %i.hg, 30
  %i.hi = getelementptr inbounds i8, ptr %i.gs, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !72
  %i.hk = and i32 %i.hj, 2147483640               ; 2 uses
  %i.hl = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i128 = icmp eq i32 %i.hl, -1
  br i1 %.not.i.i128, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i136, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i121, label %bb.af, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i129

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !91
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i129: ; preds = %bb.ae
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i130 = icmp eq ptr %i.hq, null
  br i1 %.not1.i.i14.i130, label %bb.ag, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i131

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i131: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i129
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132

bb.ag:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i129
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !92
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132: ; preds = %bb.ag, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i131, %bb.af
  %.sink7.in.i.i16.i133 = phi ptr [ %i.hu, %bb.ag ], [ %i.hr, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i131 ], [ %i.ho, %bb.af ]
  %.sink7.i.i17.i134 = load ptr, ptr %.sink7.in.i.i16.i133, align 8, !tbaa !43
  %i.hv = ptrtoint ptr %.sink7.i.i17.i134 to i64
  %i.hw = sub i64 %i.hd, %i.hv
  %.0.in.i.i18.i135 = sdiv exact i64 %i.hw, 88
  %i.hx = shl i64 %.0.in.i.i18.i135, 32
  %i.hy = ashr exact i64 %i.hx, 30
  %i.hz = getelementptr inbounds i8, ptr %i.gs, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !72
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %bb.ah, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i136, !prof !93

bb.ah:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132
  %i.ic = zext i32 %i.hl to i64
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !85
  %i.if = zext nneg i32 %i.hk to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !142
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i136: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i132, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ii = zext nneg i32 %i.hk to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ah, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i136
  %.1.i137 = phi ptr [ %i.ij, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i136 ], [ %i.ih, %bb.ah ] ; 2 uses
  %i.ik = load i32, ptr %.1.i137, align 4, !tbaa !95
  %i.il = and i32 %i.ik, 1
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_ZNK6google8protobuf13RepeatedFieldImE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.in = getelementptr inbounds nuw i8, ptr %.1.i137, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !40
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !40
  %.fr.i138 = freeze i32 %i.ip                    ; 2 uses
  %i.iq = icmp sgt i32 %.fr.i138, 1
  %5 = zext nneg i32 %.fr.i138 to i64
  %i.ir = shl nuw nsw i64 %5, 3
  %i.is = add nuw nsw i64 %i.ir, 8
  %spec.select.i139 = select i1 %i.iq, i64 %i.is, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldImE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldImE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit.i
  %i.it = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldImEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i139, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit.i ]
  %i.iu = add i64 %i.it, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.ai:                                            ; preds = %bb.f
  %i.iv = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.iw = and i8 %i.ac, 8
  %.not.i.i.i140 = icmp eq i8 %i.iw, 0            ; 2 uses
  br i1 %.not.i.i.i140, label %bb.aj, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i141

bb.aj:                                            ; preds = %bb.ai
  %i.ix = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !91
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i141: ; preds = %bb.ai
  %i.ja = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i142 = icmp eq ptr %i.jb, null
  br i1 %.not1.i.i.i142, label %bb.ak, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i143

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i143: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i141
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.ak:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i141
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !92
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.ak, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i143, %bb.aj
  %.sink7.in.i.i.i144 = phi ptr [ %i.jf, %bb.ak ], [ %i.jc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i143 ], [ %i.iz, %bb.aj ]
  %.sink7.i.i.i145 = load ptr, ptr %.sink7.in.i.i.i144, align 8, !tbaa !43
  %i.jg = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.jh = ptrtoint ptr %.sink7.i.i.i145 to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %.0.in.i.i.i146 = sdiv exact i64 %i.ji, 88
  %i.jj = shl i64 %.0.in.i.i.i146, 32
  %i.jk = ashr exact i64 %i.jj, 30
  %i.jl = getelementptr inbounds i8, ptr %i.iv, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !72
  %i.jn = and i32 %i.jm, 2147483640               ; 2 uses
  %i.jo = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i147 = icmp eq i32 %i.jo, -1
  br i1 %.not.i.i147, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i155, label %bb.al

bb.al:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i140, label %bb.am, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i148

bb.am:                                            ; preds = %bb.al
  %i.jp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !91
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i148: ; preds = %bb.al
  %i.js = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i149 = icmp eq ptr %i.jt, null
  br i1 %.not1.i.i14.i149, label %bb.an, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i150

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i150: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i148
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151

bb.an:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i148
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !92
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151: ; preds = %bb.an, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i150, %bb.am
  %.sink7.in.i.i16.i152 = phi ptr [ %i.jx, %bb.an ], [ %i.ju, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i150 ], [ %i.jr, %bb.am ]
  %.sink7.i.i17.i153 = load ptr, ptr %.sink7.in.i.i16.i152, align 8, !tbaa !43
  %i.jy = ptrtoint ptr %.sink7.i.i17.i153 to i64
  %i.jz = sub i64 %i.jg, %i.jy
  %.0.in.i.i18.i154 = sdiv exact i64 %i.jz, 88
  %i.ka = shl i64 %.0.in.i.i18.i154, 32
  %i.kb = ashr exact i64 %i.ka, 30
  %i.kc = getelementptr inbounds i8, ptr %i.iv, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !72
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.ao, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i155, !prof !93

bb.ao:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151
  %i.kf = zext i32 %i.jo to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !85
  %i.ki = zext nneg i32 %i.jn to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !144
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i155: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i151, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.kl = zext nneg i32 %i.jn to i64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ao, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i155
  %.1.i156 = phi ptr [ %i.km, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i155 ], [ %i.kk, %bb.ao ] ; 2 uses
  %i.kn = load i32, ptr %.1.i156, align 4, !tbaa !95
  %i.ko = and i32 %i.kn, 1
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %_ZNK6google8protobuf13RepeatedFieldIdE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %.1.i156, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !40
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !40
  %.fr.i157 = freeze i32 %i.ks                    ; 2 uses
  %i.kt = icmp sgt i32 %.fr.i157, 1
  %6 = zext nneg i32 %.fr.i157 to i64
  %i.ku = shl nuw nsw i64 %6, 3
  %i.kv = add nuw nsw i64 %i.ku, 8
  %spec.select.i158 = select i1 %i.kt, i64 %i.kv, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIdE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIdE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit.i
  %i.kw = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIdEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i158, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit.i ]
  %i.kx = add i64 %i.kw, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.ap:                                            ; preds = %bb.f
  %i.ky = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.kz = and i8 %i.ac, 8
  %.not.i.i.i159 = icmp eq i8 %i.kz, 0            ; 2 uses
  br i1 %.not.i.i.i159, label %bb.aq, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i160

bb.aq:                                            ; preds = %bb.ap
  %i.la = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !91
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i160: ; preds = %bb.ap
  %i.ld = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i161 = icmp eq ptr %i.le, null
  br i1 %.not1.i.i.i161, label %bb.ar, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i162

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i162: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i160
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.ar:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i160
  %i.lg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !92
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.ar, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i162, %bb.aq
  %.sink7.in.i.i.i163 = phi ptr [ %i.li, %bb.ar ], [ %i.lf, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i162 ], [ %i.lc, %bb.aq ]
  %.sink7.i.i.i164 = load ptr, ptr %.sink7.in.i.i.i163, align 8, !tbaa !43
  %i.lj = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.lk = ptrtoint ptr %.sink7.i.i.i164 to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %.0.in.i.i.i165 = sdiv exact i64 %i.ll, 88
  %i.lm = shl i64 %.0.in.i.i.i165, 32
  %i.ln = ashr exact i64 %i.lm, 30
  %i.lo = getelementptr inbounds i8, ptr %i.ky, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !72
  %i.lq = and i32 %i.lp, 2147483640               ; 2 uses
  %i.lr = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i166 = icmp eq i32 %i.lr, -1
  br i1 %.not.i.i166, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i174, label %bb.as

bb.as:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i159, label %bb.at, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i167

bb.at:                                            ; preds = %bb.as
  %i.ls = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !91
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i167: ; preds = %bb.as
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i168 = icmp eq ptr %i.lw, null
  br i1 %.not1.i.i14.i168, label %bb.au, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i169

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i169: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i167
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170

bb.au:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i167
  %i.ly = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !92
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170: ; preds = %bb.au, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i169, %bb.at
  %.sink7.in.i.i16.i171 = phi ptr [ %i.ma, %bb.au ], [ %i.lx, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i169 ], [ %i.lu, %bb.at ]
  %.sink7.i.i17.i172 = load ptr, ptr %.sink7.in.i.i16.i171, align 8, !tbaa !43
  %i.mb = ptrtoint ptr %.sink7.i.i17.i172 to i64
  %i.mc = sub i64 %i.lj, %i.mb
  %.0.in.i.i18.i173 = sdiv exact i64 %i.mc, 88
  %i.md = shl i64 %.0.in.i.i18.i173, 32
  %i.me = ashr exact i64 %i.md, 30
  %i.mf = getelementptr inbounds i8, ptr %i.ky, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !72
  %i.mh = icmp slt i32 %i.mg, 0
  br i1 %i.mh, label %bb.av, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i174, !prof !93

bb.av:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170
  %i.mi = zext i32 %i.lr to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %i.mi
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !85
  %i.ml = zext nneg i32 %i.lq to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !146
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i174: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i170, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.mo = zext nneg i32 %i.lq to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %i.mo
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.av, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i174
  %.1.i175 = phi ptr [ %i.mp, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i174 ], [ %i.mn, %bb.av ] ; 2 uses
  %i.mq = load i32, ptr %.1.i175, align 4, !tbaa !95
  %i.mr = and i32 %i.mq, 1
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZNK6google8protobuf13RepeatedFieldIfE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %.1.i175, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !40
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !40
  %.fr.i176 = freeze i32 %i.mv                    ; 2 uses
  %i.mw = icmp sgt i32 %.fr.i176, 2
  %7 = zext nneg i32 %.fr.i176 to i64
  %i.mx = shl nuw nsw i64 %7, 2
  %i.my = add nuw nsw i64 %i.mx, 8
  %spec.select.i177 = select i1 %i.mw, i64 %i.my, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIfE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIfE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit.i
  %i.mz = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIfEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i177, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit.i ]
  %i.na = add i64 %i.mz, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.aw:                                            ; preds = %bb.f
  %i.nb = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.nc = and i8 %i.ac, 8
  %.not.i.i.i178 = icmp eq i8 %i.nc, 0            ; 2 uses
  br i1 %.not.i.i.i178, label %bb.ax, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i179

bb.ax:                                            ; preds = %bb.aw
  %i.nd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !91
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i179: ; preds = %bb.aw
  %i.ng = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i180 = icmp eq ptr %i.nh, null
  br i1 %.not1.i.i.i180, label %bb.ay, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i181

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i181: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i179
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.ay:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i179
  %i.nj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !92
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.ay, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i181, %bb.ax
  %.sink7.in.i.i.i182 = phi ptr [ %i.nl, %bb.ay ], [ %i.ni, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i181 ], [ %i.nf, %bb.ax ]
  %.sink7.i.i.i183 = load ptr, ptr %.sink7.in.i.i.i182, align 8, !tbaa !43
  %i.nm = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.nn = ptrtoint ptr %.sink7.i.i.i183 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %.0.in.i.i.i184 = sdiv exact i64 %i.no, 88
  %i.np = shl i64 %.0.in.i.i.i184, 32
  %i.nq = ashr exact i64 %i.np, 30
  %i.nr = getelementptr inbounds i8, ptr %i.nb, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !72
  %i.nt = and i32 %i.ns, 2147483640               ; 2 uses
  %i.nu = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i185 = icmp eq i32 %i.nu, -1
  br i1 %.not.i.i185, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i193, label %bb.az

bb.az:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i178, label %bb.ba, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i186

bb.ba:                                            ; preds = %bb.az
  %i.nv = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !91
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i186: ; preds = %bb.az
  %i.ny = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i187 = icmp eq ptr %i.nz, null
  br i1 %.not1.i.i14.i187, label %bb.bb, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i188

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i188: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i186
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189

bb.bb:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i186
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !92
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189: ; preds = %bb.bb, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i188, %bb.ba
  %.sink7.in.i.i16.i190 = phi ptr [ %i.od, %bb.bb ], [ %i.oa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i188 ], [ %i.nx, %bb.ba ]
  %.sink7.i.i17.i191 = load ptr, ptr %.sink7.in.i.i16.i190, align 8, !tbaa !43
  %i.oe = ptrtoint ptr %.sink7.i.i17.i191 to i64
  %i.of = sub i64 %i.nm, %i.oe
  %.0.in.i.i18.i192 = sdiv exact i64 %i.of, 88
  %i.og = shl i64 %.0.in.i.i18.i192, 32
  %i.oh = ashr exact i64 %i.og, 30
  %i.oi = getelementptr inbounds i8, ptr %i.nb, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !72
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %bb.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i193, !prof !93

bb.bc:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189
  %i.ol = zext i32 %i.nu to i64
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !85
  %i.oo = zext nneg i32 %i.nt to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !148
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i193: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i189, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.or = zext nneg i32 %i.nt to i64
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 %i.or
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.bc, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i193
  %.1.i194 = phi ptr [ %i.os, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i193 ], [ %i.oq, %bb.bc ] ; 2 uses
  %i.ot = load i32, ptr %.1.i194, align 4, !tbaa !95
  %i.ou = and i32 %i.ot, 1
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %_ZNK6google8protobuf13RepeatedFieldIbE26SpaceUsedExcludingSelfLongEv.exit, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit.i: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %.1.i194, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !40
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !40
  %.fr.i195 = freeze i32 %i.oy                    ; 2 uses
  %i.oz = icmp sgt i32 %.fr.i195, 8
  %i.pa = zext nneg i32 %.fr.i195 to i64
  %i.pb = add nuw nsw i64 %i.pa, 8
  %spec.select.i196 = select i1 %i.oz, i64 %i.pb, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIbE26SpaceUsedExcludingSelfLongEv.exit

_ZNK6google8protobuf13RepeatedFieldIbE26SpaceUsedExcludingSelfLongEv.exit: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit.i
  %i.pc = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIbEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %spec.select.i196, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit.i ]
  %i.pd = add i64 %i.pc, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.bd:                                            ; preds = %bb.f
  %i.pe = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.pf = and i8 %i.ac, 8
  %.not.i.i.i197 = icmp eq i8 %i.pf, 0            ; 2 uses
  br i1 %.not.i.i.i197, label %bb.be, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i198

bb.be:                                            ; preds = %bb.bd
  %i.pg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !91
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i198: ; preds = %bb.bd
  %i.pj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i199 = icmp eq ptr %i.pk, null
  br i1 %.not1.i.i.i199, label %bb.bf, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i200

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i200: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i198
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201

bb.bf:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i198
  %i.pm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !92
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201: ; preds = %bb.bf, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i200, %bb.be
  %.sink7.in.i.i.i202 = phi ptr [ %i.po, %bb.bf ], [ %i.pl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i200 ], [ %i.pi, %bb.be ]
  %.sink7.i.i.i203 = load ptr, ptr %.sink7.in.i.i.i202, align 8, !tbaa !43
  %i.pp = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.pq = ptrtoint ptr %.sink7.i.i.i203 to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %.0.in.i.i.i204 = sdiv exact i64 %i.pr, 88
  %i.ps = shl i64 %.0.in.i.i.i204, 32
  %i.pt = ashr exact i64 %i.ps, 30
  %i.pu = getelementptr inbounds i8, ptr %i.pe, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !72
  %i.pw = and i32 %i.pv, 2147483640               ; 2 uses
  %i.px = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i205 = icmp eq i32 %i.px, -1
  br i1 %.not.i.i205, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i213, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201
  br i1 %.not.i.i.i197, label %bb.bh, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i206

bb.bh:                                            ; preds = %bb.bg
  %i.py = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !91
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i206: ; preds = %bb.bg
  %i.qb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i207 = icmp eq ptr %i.qc, null
  br i1 %.not1.i.i14.i207, label %bb.bi, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i208

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i208: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i206
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209

bb.bi:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i206
  %i.qe = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !92
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209: ; preds = %bb.bi, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i208, %bb.bh
  %.sink7.in.i.i16.i210 = phi ptr [ %i.qg, %bb.bi ], [ %i.qd, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i208 ], [ %i.qa, %bb.bh ]
  %.sink7.i.i17.i211 = load ptr, ptr %.sink7.in.i.i16.i210, align 8, !tbaa !43
  %i.qh = ptrtoint ptr %.sink7.i.i17.i211 to i64
  %i.qi = sub i64 %i.pp, %i.qh
  %.0.in.i.i18.i212 = sdiv exact i64 %i.qi, 88
  %i.qj = shl i64 %.0.in.i.i18.i212, 32
  %i.qk = ashr exact i64 %i.qj, 30
  %i.ql = getelementptr inbounds i8, ptr %i.pe, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !72
  %i.qn = icmp slt i32 %i.qm, 0
  br i1 %i.qn, label %bb.bj, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i213, !prof !93

bb.bj:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209
  %i.qo = zext i32 %i.px to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !85
  %i.qr = zext nneg i32 %i.pw to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qr
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !136
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i213: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i209, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i201
  %i.qu = zext nneg i32 %i.pw to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 %i.qu
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215: ; preds = %bb.bj, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i213
  %.1.i214 = phi ptr [ %i.qv, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i213 ], [ %i.qt, %bb.bj ] ; 2 uses
  %i.qw = load i32, ptr %.1.i214, align 4, !tbaa !95
  %i.qx = and i32 %i.qw, 1
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit219, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i216

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i216: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215
  %i.qz = getelementptr inbounds nuw i8, ptr %.1.i214, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !40
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !40
  %.fr.i217 = freeze i32 %i.rb                    ; 2 uses
  %i.rc = icmp sgt i32 %.fr.i217, 2
  %8 = zext nneg i32 %.fr.i217 to i64
  %i.rd = shl nuw nsw i64 %8, 2
  %i.re = add nuw nsw i64 %i.rd, 8
  %spec.select.i218 = select i1 %i.rc, i64 %i.re, i64 0
  br label %_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit219

_ZNK6google8protobuf13RepeatedFieldIiE26SpaceUsedExcludingSelfLongEv.exit219: ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i216
  %i.rf = phi i64 [ 0, %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIiEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit215 ], [ %spec.select.i218, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit.i216 ]
  %i.rg = add i64 %i.rf, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.bk:                                            ; preds = %bb.f
  %i.rh = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ri = load i8, ptr %i.rh, align 1
  %i.rj = and i8 %i.ri, 7
  switch i8 %i.rj, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390 [
    i8 2, label %bb.bl
    i8 1, label %bb.bs
    i8 3, label %bb.bs
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.rk = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.rl = and i8 %i.ac, 8
  %.not.i.i.i220 = icmp eq i8 %i.rl, 0            ; 2 uses
  br i1 %.not.i.i.i220, label %bb.bm, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i221

bb.bm:                                            ; preds = %bb.bl
  %i.rm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !91
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i221: ; preds = %bb.bl
  %i.rp = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i222 = icmp eq ptr %i.rq, null
  br i1 %.not1.i.i.i222, label %bb.bn, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i223

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i223: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i221
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.bn:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i221
  %i.rs = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !92
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.bn, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i223, %bb.bm
  %.sink7.in.i.i.i224 = phi ptr [ %i.ru, %bb.bn ], [ %i.rr, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i223 ], [ %i.ro, %bb.bm ]
  %.sink7.i.i.i225 = load ptr, ptr %.sink7.in.i.i.i224, align 8, !tbaa !43
  %i.rv = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.rw = ptrtoint ptr %.sink7.i.i.i225 to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %.0.in.i.i.i226 = sdiv exact i64 %i.rx, 88
  %i.ry = shl i64 %.0.in.i.i.i226, 32
  %i.rz = ashr exact i64 %i.ry, 30
  %i.sa = getelementptr inbounds i8, ptr %i.rk, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !72
  %i.sc = and i32 %i.sb, 2147483640               ; 2 uses
  %i.sd = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i227 = icmp eq i32 %i.sd, -1
  br i1 %.not.i.i227, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i235, label %bb.bo

bb.bo:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i220, label %bb.bp, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i228

bb.bp:                                            ; preds = %bb.bo
  %i.se = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !91
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i228: ; preds = %bb.bo
  %i.sh = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i229 = icmp eq ptr %i.si, null
  br i1 %.not1.i.i14.i229, label %bb.bq, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i230

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i230: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i228
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231

bb.bq:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i228
  %i.sk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !92
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231: ; preds = %bb.bq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i230, %bb.bp
  %.sink7.in.i.i16.i232 = phi ptr [ %i.sm, %bb.bq ], [ %i.sj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i230 ], [ %i.sg, %bb.bp ]
  %.sink7.i.i17.i233 = load ptr, ptr %.sink7.in.i.i16.i232, align 8, !tbaa !43
  %i.sn = ptrtoint ptr %.sink7.i.i17.i233 to i64
  %i.so = sub i64 %i.rv, %i.sn
  %.0.in.i.i18.i234 = sdiv exact i64 %i.so, 88
  %i.sp = shl i64 %.0.in.i.i18.i234, 32
  %i.sq = ashr exact i64 %i.sp, 30
  %i.sr = getelementptr inbounds i8, ptr %i.rk, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !72
  %i.st = icmp slt i32 %i.ss, 0
  br i1 %i.st, label %bb.br, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i235, !prof !93

bb.br:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231
  %i.su = zext i32 %i.sd to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 %i.su
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !85
  %i.sx = zext nneg i32 %i.sc to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sx
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !150
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i235: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i231, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ta = zext nneg i32 %i.sc to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ta
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.br, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i235
  %.1.i236 = phi ptr [ %i.tb, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i235 ], [ %i.sz, %bb.br ]
  %i.tc = tail call noundef i64 @_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i236)
  %i.td = add i64 %i.tc, %.1415
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit390

bb.bs:                                            ; preds = %bb.bk, %bb.bk
  %i.te = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.tf = and i8 %i.ac, 8
  %.not.i.i.i237 = icmp eq i8 %i.tf, 0            ; 2 uses
  br i1 %.not.i.i.i237, label %bb.bt, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i238

bb.bt:                                            ; preds = %bb.bs
  %i.tg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !91
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i238: ; preds = %bb.bs
  %i.tj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i239 = icmp eq ptr %i.tk, null
  br i1 %.not1.i.i.i239, label %bb.bu, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i240

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i240: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i238
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.bu:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i238
  %i.tm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !92
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.bu, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i240, %bb.bt
  %.sink7.in.i.i.i241 = phi ptr [ %i.to, %bb.bu ], [ %i.tl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i240 ], [ %i.ti, %bb.bt ]
  %.sink7.i.i.i242 = load ptr, ptr %.sink7.in.i.i.i241, align 8, !tbaa !43
  %i.tp = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.tq = ptrtoint ptr %.sink7.i.i.i242 to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %.0.in.i.i.i243 = sdiv exact i64 %i.tr, 88
  %i.ts = shl i64 %.0.in.i.i.i243, 32
  %i.tt = ashr exact i64 %i.ts, 30
  %i.tu = getelementptr inbounds i8, ptr %i.te, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !72
  %i.tw = and i32 %i.tv, 2147483640               ; 2 uses
  %i.tx = load i32, ptr %i.v, align 4, !tbaa !89  ; 2 uses
  %.not.i.i244 = icmp eq i32 %i.tx, -1
  br i1 %.not.i.i244, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i252, label %bb.bv

bb.bv:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i237, label %bb.bw, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i245

bb.bw:                                            ; preds = %bb.bv
  %i.ty = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !91
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i248

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i245: ; preds = %bb.bv
  %i.ub = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i246 = icmp eq ptr %i.uc, null
  br i1 %.not1.i.i14.i246, label %bb.bx, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i247

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i247: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i245
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i248

bb.bx:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i245
  %i.ue = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !92
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i248

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i248: ; preds = %bb.bx, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i247, %bb.bw
  %.sink7.in.i.i16.i249 = phi ptr [ %i.ug, %bb.bx ], [ %i.ud, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i247 ], [ %i.ua, %bb.bw ]
  %.sink7.i.i17.i250 = load ptr, ptr %.sink7.in.i.i16.i249, align 8, !tbaa !43
  %i.uh = ptrtoint ptr %.sink7.i.i17.i250 to i64
  %i.ui = sub i64 %i.tp, %i.uh
  %.0.in.i.i18.i251 = sdiv exact i64 %i.ui, 88
  %i.uj = shl i64 %.0.in.i.i18.i251, 32
  %i.uk = ashr exact i64 %i.uj, 30
  %i.ul = getelementptr inbounds i8, ptr %i.te, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !72
  %i.un = icmp slt i32 %i.um, 0
end_hunk_0
