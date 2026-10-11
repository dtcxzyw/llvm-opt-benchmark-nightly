Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_reflection?download=true
inline.NumInlined: 8507
inline.NumDeleted: 3569
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %bb.h, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit25
  %i.ax = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  br i1 %i.ax, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %2, i64 32
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !91 ; 2 uses
  %.not.i.i27 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i27, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.thread.i, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !172
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 51
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !40, !range !76, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.thread.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %bb.i
  %i.be = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %._ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.thread_crit_edge, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit
  %i.bf = phi i8 [ %.pre, %._ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.thread_crit_edge ], [ %i.h, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %i.bg = and i8 %i.bf, 32
  %.not31 = icmp eq i8 %i.bg, 0
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.thread
  %i.bh = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection25IsRepeatedOrMapFieldEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  %i.bi = xor i1 %i.bh, true
  br label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !86
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !88
  %i.bo = icmp eq i32 %i.bn, 10
  br i1 %i.bo, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.bq = icmp eq ptr %1, %i.bp
  br i1 %i.bq, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !90 ; 2 uses
  %i.bt = and i8 %i.bf, 8
  %.not.i.i.i = icmp eq i8 %i.bt, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not1.i.i.i, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

bb.o:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.o, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.n
  %.sink7.in.i.i.i = phi ptr [ %i.cc, %bb.o ], [ %i.bz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.bw, %bb.n ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.cd = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ce = ptrtoint ptr %.sink7.i.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %.0.in.i.i.i = sdiv exact i64 %i.cf, 88
  %i.cg = shl i64 %.0.in.i.i.i, 32
  %i.ch = ashr exact i64 %i.cg, 30
  %i.ci = getelementptr inbounds i8, ptr %i.bs, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !72
  %i.ck = and i32 %i.cj, 2147483640
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !89 ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.cm, -1
  br i1 %.not.i.i28, label %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i: ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i14.i = icmp eq ptr %i.cr, null
  br i1 %.not1.i.i14.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.r:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.r, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i, %bb.q
  %.sink7.in.i.i16.i = phi ptr [ %i.cv, %bb.r ], [ %i.cs, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i ], [ %i.cp, %bb.q ]
  %.sink7.i.i17.i = load ptr, ptr %.sink7.in.i.i16.i, align 8, !tbaa !43
  %i.cw = ptrtoint ptr %.sink7.i.i17.i to i64
  %i.cx = sub i64 %i.cd, %i.cw
  %.0.in.i.i18.i = sdiv exact i64 %i.cx, 88
  %i.cy = shl i64 %.0.in.i.i18.i, 32
  %i.cz = ashr exact i64 %i.cy, 30
  %i.da = getelementptr inbounds i8, ptr %i.bs, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !72
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit, !prof !93

bb.s:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.dd = zext i32 %i.cm to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i, %bb.s
  %.sink = phi ptr [ %i.df, %bb.s ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %i.dg = zext nneg i32 %i.ck to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !84
  %i.dj = icmp ne ptr %i.di, null
  br label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

bb.t:                                             ; preds = %bb.k
  %i.dk = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.thread.i, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %bb.h, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit25, %bb.l, %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit, %bb.t, %bb.j
  %.0 = phi i1 [ %i.dj, %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit ], [ %i.bi, %bb.j ], [ %i.dk, %bb.t ], [ false, %bb.l ], [ false, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit25 ], [ true, %bb.h ], [ %i.be, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.thread.i ], [ true, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i ]
  ret i1 %.0
}

declare void @_ZN6google8protobuf7Message8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 5 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58
  tail call void @_ZN6google8protobuf8internal12ExtensionSet14ClearExtensionEi(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.n)
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 8
  %.not.i.i.not = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = and i8 %i.g, 16
  %.not.i.i.i = icmp eq i8 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !59 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = select i1 %.not.i.i.i, i64 0, i64 %i.ab
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = trunc i64 %i.af to i32
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, %i.w
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.u), !inline_history !568
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.e
  %i.ap = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !96 ; 3 uses
  %i.as = icmp eq i32 %i.ar, -1                   ; 2 uses
  br i1 %i.ap, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  br i1 %i.as, label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = load i8, ptr %i.f, align 1
  %i.aw = and i8 %i.av, 8
  %.not.i.i.i92 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i92, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not1.i.i.i, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

bb.k:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.j
  %.sink7.in.i.i.i = phi ptr [ %i.be, %bb.k ], [ %i.bb, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ay, %bb.j ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.bf = ptrtoint ptr %2 to i64
  %i.bg = ptrtoint ptr %.sink7.i.i.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %.0.in.i.i.i = sdiv exact i64 %i.bh, 88
  %i.bi = shl i64 %.0.in.i.i.i, 32
  %i.bj = ashr exact i64 %i.bi, 30
  %i.bk = getelementptr inbounds i8, ptr %i.au, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !72 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.bn = and i32 %i.bl, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = xor i32 %i.bo, -1
  %i.bq = zext i32 %i.ar to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = lshr i32 %i.bl, 5
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !72
  %i.bw = and i32 %i.bv, %i.bp
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %.pre105 = load i8, ptr %i.f, align 1           ; 3 uses
  br i1 %i.as, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit101, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !97
  %i.bz = and i8 %.pre105, 8
  %.not.i.i.i93 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i93, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i95 = icmp eq ptr %i.cd, null
  br i1 %.not1.i.i.i95, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97

bb.p:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97: ; preds = %bb.p, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96, %bb.o
  %.sink7.in.i.i.i98 = phi ptr [ %i.ch, %bb.p ], [ %i.ce, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96 ], [ %i.cb, %bb.o ]
  %.sink7.i.i.i99 = load ptr, ptr %.sink7.in.i.i.i98, align 8, !tbaa !43
  %i.ci = ptrtoint ptr %2 to i64
  %i.cj = ptrtoint ptr %.sink7.i.i.i99 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %.0.in.i.i.i100 = sdiv exact i64 %i.ck, 88
  %i.cl = shl i64 %.0.in.i.i.i100, 32
  %i.cm = ashr exact i64 %i.cl, 30
  %i.cn = getelementptr inbounds i8, ptr %i.by, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !72 ; 3 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit101, label %bb.q

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97
  %i.cq = and i32 %i.co, 31
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = xor i32 %i.cr, -1
  %i.ct = zext i32 %i.ar to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %i.cv = lshr i32 %i.co, 5
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72
  %i.cz = and i32 %i.cy, %i.cs
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !72
  %.pre = load i8, ptr %i.f, align 1
  br label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit101

_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit101: ; preds = %bb.m, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97, %bb.q
  %i.da = phi i8 [ %.pre105, %bb.m ], [ %.pre105, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i97 ], [ %.pre, %bb.q ] ; 2 uses
  %i.db = and i8 %i.da, 32
  %.not103 = icmp eq i8 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !86
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !88 ; 2 uses
  br i1 %.not103, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit101
  switch i32 %i.dg, label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
    i32 7, label %bb.y
    i32 8, label %bb.z
    i32 9, label %bb.aa
    i32 10, label %bb.ae
  ]

bb.s:                                             ; preds = %bb.r
  %i.dh = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 0, ptr %i.di, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.t:                                             ; preds = %bb.r
  %i.dj = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.u:                                             ; preds = %bb.r
  %i.dl = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 0, ptr %i.dm, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.v:                                             ; preds = %bb.r
  %i.dn = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 0, ptr %i.do, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.w:                                             ; preds = %bb.r
  %i.dp = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 0, ptr %i.dq, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.x:                                             ; preds = %bb.r
  %i.dr = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.y:                                             ; preds = %bb.r
  %i.dt = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 0, ptr %i.du, align 4, !tbaa !174
  br label %_ZNK6google8protobuf10Reflection15ClearOneofFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.z:                                             ; preds = %bb.r
  %i.dv = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !72
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load i32, ptr %spec.select.i, align 4, !tbaa !72
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi i32 [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483644
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i19 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i19, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIiEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIiEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIiEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIiEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi i32 [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIiEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection8SetInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.26, i32 noundef 1)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store i32 %3, ptr %i.ac, align 8, !tbaa !72
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load i32, ptr %3, align 4, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483644
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i ]
  store i32 %i.ac, ptr %.0.i17, align 4, !tbaa !72
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load i32, ptr %3, align 4, !tbaa !72
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !123
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIlEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load i64, ptr %spec.select.i, align 8, !tbaa !123
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIlEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIlEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi i64 [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483640
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i19 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i19, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIlEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIlEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIlEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !123
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIlEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIlEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi i64 [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIlEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIlEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection8SetInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEl(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.31, i32 noundef 2)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store i64 %3, ptr %i.ac, align 8, !tbaa !123
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIlEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIlEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load i64, ptr %3, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483640
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i ]
  store i64 %i.ac, ptr %.0.i17, align 8, !tbaa !123
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load i64, ptr %3, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIlEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !72
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIjEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load i32, ptr %spec.select.i, align 4, !tbaa !72
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIjEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIjEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi i32 [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483644
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i19 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i19, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIjEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIjEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIjEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIjEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIjEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi i32 [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIjEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIjEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection9SetUInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 3
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.36, i32 noundef 3)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store i32 %3, ptr %i.ac, align 8, !tbaa !72
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIjEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIjEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load i32, ptr %3, align 4, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483644
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i ]
  store i32 %i.ac, ptr %.0.i17, align 4, !tbaa !72
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load i32, ptr %3, align 4, !tbaa !72
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIjEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !123
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetImEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load i64, ptr %spec.select.i, align 8, !tbaa !123
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetImEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetImEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi i64 [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483640
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i19 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i19, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldImEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldImEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldImEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !123
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldImEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetImEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi i64 [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetImEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldImEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection9SetUInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 4
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.41, i32 noundef 4)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store i64 %3, ptr %i.ac, align 8, !tbaa !123
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldImEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldImEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load i64, ptr %3, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483640
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i ]
  store i64 %i.ac, ptr %.0.i17, align 8, !tbaa !123
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load i64, ptr %3, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetImEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load float, ptr %i.v, align 8, !tbaa !40 ; 2 uses
  store float %i.w, ptr %i.a, align 4, !tbaa !177
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIfEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load float, ptr %spec.select.i, align 4, !tbaa !177
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIfEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIfEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi float [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load float, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483644
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i20 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i20, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIfEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIfEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIfEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !177
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIfEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIfEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi float [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIfEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIfEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection8SetFloatEPNS0_7MessageEPKNS0_15FieldDescriptorEf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 2 uses
  store float %3, ptr %i.a, align 4, !tbaa !177
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 6
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.46, i32 noundef 6)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store float %3, ptr %i.ac, align 8, !tbaa !177
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIfEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIfEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load float, ptr %3, align 4, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483644
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i ]
  store float %i.ac, ptr %.0.i17, align 4, !tbaa !177
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load float, ptr %3, align 4, !tbaa !177
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIfEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load double, ptr %i.v, align 8, !tbaa !40 ; 2 uses
  store double %i.w, ptr %i.a, align 8, !tbaa !179
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIdEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load double, ptr %spec.select.i, align 8, !tbaa !179
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIdEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIdEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi double [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load double, ptr %i.bd, align 8, !tbaa !40
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483640
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i20 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i20, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIdEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIdEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIdEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !179
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIdEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIdEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0 = phi double [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIdEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIdEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection9SetDoubleEPNS0_7MessageEPKNS0_15FieldDescriptorEd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  store double %3, ptr %i.a, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !86    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %.not = icmp eq i32 %i.n, 5
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.51, i32 noundef 5)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not16 = icmp eq i8 %i.o, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.u to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i, i32 noundef %i.ab, i8 noundef zeroext %i.k, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store double %3, ptr %i.ac, align 8, !tbaa !179
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIdEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIdEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load double, ptr %3, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483640
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i ]
  store double %i.ac, ptr %.0.i17, align 8, !tbaa !179
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load double, ptr %3, align 8, !tbaa !179
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIdEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i8, ptr %i.v, align 8, !tbaa !40, !range !76, !noundef !59 ; 2 uses
  store i8 %i.w, ptr %i.a, align 1, !tbaa !180
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIbEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
  %.pre = load i8, ptr %spec.select.i, align 1, !tbaa !180, !range !76
  br label %_ZNK6google8protobuf8internal12ExtensionSet3GetIbEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit

_ZNK6google8protobuf8internal12ExtensionSet3GetIbEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit: ; preds = %bb.h, %bb.i
  %i.ac = phi i8 [ %i.w, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.h, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !40, !range !76, !noundef !59
  br label %bb.n

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i.i = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i.i, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 2 uses
  %i.bp = and i32 %i.bo, 2147483647
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i20 = icmp ne i32 %i.br, -1
  %i.bs = icmp slt i32 %i.bo, 0
  %or.cond = select i1 %.not.i.i.i20, i1 %i.bs, i1 false, !prof !241
  br i1 %or.cond, label %bb.m, label %_ZNK6google8protobuf10Reflection8GetFieldIbEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, !prof !241

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection8GetFieldIbEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection8GetFieldIbEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i, %bb.m
  %.sink = phi ptr [ %i.bv, %bb.m ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i.i ]
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !180, !range !76, !noundef !59
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection8GetFieldIbEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.l, %_ZNK6google8protobuf8internal12ExtensionSet3GetIbEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit
  %.0.in = phi i8 [ %i.ac, %_ZNK6google8protobuf8internal12ExtensionSet3GetIbEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit ], [ %i.by, %_ZNK6google8protobuf10Reflection8GetFieldIbEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.be, %bb.l ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection7SetBoolEPNS0_7MessageEPKNS0_15FieldDescriptorEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = zext i1 %3 to i8                         ; 2 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = and i8 %i.i, 32
  %.not15 = icmp eq i8 %i.j, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !86    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !88
  %.not = icmp eq i32 %i.o, 7
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef nonnull @.str.56, i32 noundef 7)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = and i8 %i.i, 8
  %.not16 = icmp eq i8 %i.p, 0
  br i1 %.not16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46   ; 3 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = inttoptr i64 %i.v to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.z, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ad = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %.0.i.i, i32 noundef %i.ac, i8 noundef zeroext %i.l, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef null)
  store i8 %i.b, ptr %i.ad, align 8, !tbaa !180
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @_ZNK6google8protobuf10Reflection8SetFieldIbEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIbEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load i8, ptr %3, align 1, !tbaa !180, !range !76, !noundef !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483647
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i ]
  store i8 %i.ac, ptr %.0.i17, align 1, !tbaa !180
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load i8, ptr %3, align 1, !tbaa !180, !range !76, !noundef !59
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIbEEjPKNS0_15FieldDescriptorE.exit.i37

end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf10Reflection13GetStringViewERKNS0_7MessageEPKNS0_15FieldDescriptorERNS1_12ScratchSpaceE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 32
  %.not10 = icmp eq i8 %i.h, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 9
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.63, i32 noundef 9)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = tail call { i64, ptr } @_ZNK6google8protobuf10Reflection17GetStringViewImplERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_12ScratchSpaceE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  ret { i64, ptr } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection9SetStringEPNS0_7MessageEPKNS0_15FieldDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 5 uses
  %i.h = and i8 %i.g, 32
  %.not86 = icmp eq i8 %i.h, 0
  br i1 %.not86, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86    ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 9
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, i32 noundef 9)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.i:                                             ; preds = %bb.g
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 5 uses
  %i.u = and i8 %i.g, 8
  %.not87 = icmp eq i8 %i.u, 0
  br i1 %.not87, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.0.i.i, i32 noundef %i.aa, i8 noundef zeroext %i.j, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull @_ZN6google8protobuf8internal12ExtensionSet10CreateImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS2_9ExtensionESB_PNS0_5ArenaE)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !114 ; 9 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !122 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %3, align 8, !tbaa !122   ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  br i1 %i.ai, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !121 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i.i = icmp eq ptr %3, %i.ac
  br i1 %.not21.i.i, label %_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit, label %bb.l, !prof !47

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ak, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !40
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !121 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !121
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !40
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !122
  br label %_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !121
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !121
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !40
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !40
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !40
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !122
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !121
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !121
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !40
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !122
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !40
  br label %_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !122
  br label %_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.o, %bb.p
  %i.ba = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ad, %bb.o ], [ %i.ah, %bb.p ], [ %i.ag, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !121
  store i8 0, ptr %i.ba, align 1, !tbaa !40
  br label %bb.ae

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bd = load i8, ptr %i.bc, align 1             ; 3 uses
  %i.be = and i8 %i.bd, 7
  switch i8 %i.be, label %bb.ae [
    i8 2, label %bb.r
    i8 1, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
    i8 3, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  ]

bb.r:                                             ; preds = %bb.q
  %i.bf = and i8 %i.bd, 8
  %.not.i.i56.not = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i56.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = and i8 %i.g, 16
  %.not.i.i.i = icmp eq i8 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !59 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bp = ptrtoint ptr %i.bi to i64
  %i.bq = select i1 %.not.i.i.i, i64 0, i64 %i.bp
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 56
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = shl i32 %i.bu, 2
  %i.bw = add i32 %i.bv, %i.bk
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !58
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bi)
  %i.cd = icmp eq ptr %.0.i.i, null
  br i1 %i.cd, label %bb.u, label %bb.v, !prof !47

bb.u:                                             ; preds = %bb.t
  %i.ce = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

bb.v:                                             ; preds = %bb.t
  %i.cf = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i, i64 noundef 16, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505124CordEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.u, %bb.v
  %.sink = phi ptr [ %i.ce, %bb.u ], [ %i.cf, %bb.v ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  %i.cg = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store ptr %.sink, ptr %i.cg, align 8, !tbaa !158
  br label %bb.w

bb.w:                                             ; preds = %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit, %bb.s
  %i.ch = load ptr, ptr %3, align 8, !tbaa !122
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !121
  %i.ck = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !158
  %i.cm = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 %i.cj, ptr %i.ch) ; 0 uses
  br label %bb.ae

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.r
  %i.cn = load ptr, ptr %3, align 8, !tbaa !122
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !121
  %i.cq = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.cr = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 %i.cp, ptr %i.cn) ; 0 uses
  br label %bb.ae

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i: ; preds = %bb.q, %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  switch i8 %i.j, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge [
    i8 12, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
    i8 9, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  ]

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %.sink7.i.i.i69.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.pre = ptrtoint ptr %2 to i64
  %.pre90 = ptrtoint ptr %.sink7.i.i.i69.pre to i64
  %.pre92 = sub i64 %.pre, %.pre90
  %.pre94 = sdiv exact i64 %.pre92, 88
  %.pre95 = shl i64 %.pre94, 32
  %.pre97 = ashr exact i64 %.pre95, 30
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.cu = ptrtoint ptr %2 to i64
  %.sink7.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %i.cv = ptrtoint ptr %.sink7.i.i.i to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.0.in.i.i.i = sdiv exact i64 %i.cw, 88
  %i.cx = shl i64 %.0.in.i.i.i, 32
  %i.cy = ashr exact i64 %i.cx, 30                ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !72
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %bb.x, label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.x:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %i.dc = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.dd = load ptr, ptr %3, align 8, !tbaa !122
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !121
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !121
  %i.di = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 noundef 0, i64 noundef %i.dh, ptr noundef %i.dd, i64 noundef %i.df) ; 0 uses
  br label %bb.ae

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %.pre-phi98 = phi i64 [ %.pre97, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge ], [ %i.cy, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit ]
  %i.dj = getelementptr inbounds i8, ptr %i.ct, i64 %.pre-phi98
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !72
  %i.dl = and i32 %i.dk, 2
  %.not88 = icmp eq i32 %i.dl, 0
  %i.dm = and i8 %i.bd, 8
  %.not.i.i78.not = icmp eq i8 %i.dm, 0           ; 2 uses
  br i1 %.not88, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i78.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit74, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = and i8 %i.g, 16
  %.not.i.i.i72 = icmp eq i8 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !59 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !77
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !71
  %i.dw = ptrtoint ptr %i.dp to i64
  %i.dx = select i1 %.not.i.i.i72, i64 0, i64 %i.dw
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 56
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = shl i32 %i.eb, 2
  %i.ed = add i32 %i.ec, %i.dr
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !72
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !58
  %i.ej = icmp eq i32 %i.eg, %i.ei
  br i1 %i.ej, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit74, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dp)
  %i.ek = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store ptr null, ptr %i.ek, align 8, !tbaa !183
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit74

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit74: ; preds = %bb.y, %bb.aa, %bb.z
  %i.el = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  tail call void @_ZN6google8protobuf8internal11MicroString9SetStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.i.i, i64 noundef 7)
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i78.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit81, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = and i8 %i.g, 16
  %.not.i.i.i79 = icmp eq i8 %i.em, 0
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !59 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !71
  %i.ev = ptrtoint ptr %i.eo to i64
  %i.ew = select i1 %.not.i.i.i79, i64 0, i64 %i.ev
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 56
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = shl i32 %i.fa, 2
  %i.fc = add i32 %i.fb, %i.eq
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !72
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !58
  %i.fi = icmp eq i32 %i.ff, %i.fh
  br i1 %i.fi, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit81, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eo)
  %i.fj = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %i.fj, align 8, !tbaa !85
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit81

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit81: ; preds = %bb.ab, %bb.ad, %bb.ac
  %i.fk = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.i.i)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit81, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit74, %bb.x, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.w, %bb.q, %_ZN6google8protobuf8internal12ExtensionSet3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvPNS0_5ArenaEihOT0_PKNS0_15FieldDescriptorE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !262
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !263  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 2
  %.not23 = icmp eq i8 %i.h, 0
  br i1 %.not23, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit
  tail call void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %i.e)
  br label %bb.x

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 56
  %i.s = trunc i64 %i.r to i32
  %i.t = shl i32 %i.s, 2
  %i.u = add i32 %i.t, %i.j
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !72   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = tail call noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.z, i32 noundef %i.x) ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = inttoptr i64 %i.ac to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = icmp eq ptr %.0.i.i, null
  br i1 %i.ai, label %bb.f, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !86
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  switch i32 %i.an, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit [
    i32 9, label %bb.g
    i32 10, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, 7
  switch i8 %i.aq, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit [
    i8 2, label %bb.h
    i8 1, label %bb.j
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawIPN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !158 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.as) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 16) #40
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 8
  %.not.i.i.i28 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i28, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29: ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i30 = icmp eq ptr %i.bd, null
  br i1 %.not1.i.i.i30, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31, %bb.l
  %.sink7.in.i.i.i32 = phi ptr [ %i.bh, %bb.l ], [ %i.be, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31 ], [ %i.bb, %bb.k ]
  %.sink7.i.i.i33 = load ptr, ptr %.sink7.in.i.i.i32, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %i.aa to i64
  %i.bj = ptrtoint ptr %.sink7.i.i.i33 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.0.in.i.i.i34 = sdiv exact i64 %i.bk, 88
  %i.bl = shl i64 %.0.in.i.i.i34, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %i.av, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.bp = and i32 %i.bo, 2
  %.not35 = icmp eq i32 %i.bp, 0
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %i.bq = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa) ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !183
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, 3
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.o:                                             ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %i.bv = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa)
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.p:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !89
  %.not.i.i = icmp eq i32 %i.bx, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.pre17.i = load i8, ptr %.phi.trans.insert16.i, align 1
  %.pre = and i8 %.pre17.i, 8                     ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not1.i.i.i, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  %i.bh = or i32 %i.bg, %i.ba
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !89
  %.not.i.i10 = icmp eq i32 %i.bj, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre17.i = load i8, ptr %.phi.trans.insert16.i, align 1
  %.pre = and i8 %.pre17.i, 8                     ; 2 uses
  br i1 %.not.i.i10, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i11 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i11, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12: ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i13 = icmp eq ptr %i.bo, null
  br i1 %.not1.i.i.i13, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.i:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14, %bb.h
  %.sink7.in.i.i.i15 = phi ptr [ %i.bs, %bb.i ], [ %i.bp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14 ], [ %i.bm, %bb.h ]
  %.sink7.i.i.i16 = load ptr, ptr %.sink7.in.i.i.i15, align 8, !tbaa !43
  %i.bt = ptrtoint ptr %2 to i64
  %i.bu = ptrtoint ptr %.sink7.i.i.i16 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %.0.in.i.i.i17 = sdiv exact i64 %i.bv, 88
  %i.bw = shl i64 %.0.in.i.i.i17, 32
  %i.bx = ashr exact i64 %i.bw, 30
  %i.by = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !72
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.cb = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.cg, null
  br i1 %.not1.i.i10.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !92
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.l, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.k
  %.sink7.in.i.i13.i = phi ptr [ %i.ck, %bb.l ], [ %i.ch, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ce, %bb.k ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.cl = ptrtoint ptr %2 to i64
  %i.cm = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.0.in.i.i15.i = sdiv exact i64 %i.cn, 88
  %i.co = shl i64 %.0.in.i.i15.i, 32
  %i.cp = ashr exact i64 %i.co, 30
  %i.cq = getelementptr inbounds i8, ptr %.pre.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72
  %i.cs = and i32 %i.cr, 2147483640
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.j, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i = phi ptr [ %i.cb, %bb.j ], [ %i.cu, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection9SetStringEPNS0_7MessageEPKNS0_15FieldDescriptorERKN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 5 uses
  %i.h = and i8 %i.g, 32
  %.not107 = icmp eq i8 %i.h, 0
  br i1 %.not107, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86    ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 9
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.64, i32 noundef 9)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.i:                                             ; preds = %bb.g
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 6 uses
  %i.u = and i8 %i.g, 8
  %.not108 = icmp eq i8 %i.u, 0
  br i1 %.not108, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet13MutableStringB5cxx11EPNS0_5ArenaEihPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.0.i.i, i32 noundef %i.aa, i8 noundef zeroext %i.j, ptr noundef nonnull %2)
  tail call void @_ZN4absl12lts_2025051216CopyCordToStringERKNS0_4CordEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ab)
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1             ; 3 uses
  %i.ae = and i8 %i.ad, 7
  switch i8 %i.ae, label %_ZN4absl12lts_202505124CordaSERKS1_.exit [
    i8 2, label %bb.l
    i8 1, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
    i8 3, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = and i8 %i.ad, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = and i8 %i.g, 16
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !59 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ai)
  %i.bd = icmp eq ptr %.0.i.i, null
  br i1 %i.bd, label %bb.o, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.be = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.bf = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i, i64 noundef 16, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505124CordEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.o, %bb.p
  %.sink = phi ptr [ %i.be, %bb.o ], [ %i.bf, %bb.p ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  %i.bg = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !158
  br label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit, %bb.m
  %i.bh = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, %3
  br i1 %i.bj, label %_ZN4absl12lts_202505124CordaSERKS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !40
  %i.bl = trunc i8 %i.bk to i1
  %i.bm = load i8, ptr %3, align 8
  %i.bn = trunc i8 %i.bm to i1
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !186
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep10AssignSlowERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.l
  %i.bo = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 4 uses
  %i.bp = icmp eq ptr %i.bo, %3
  br i1 %i.bp, label %_ZN4absl12lts_202505124CordaSERKS1_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !40
  %i.br = trunc i8 %i.bq to i1
  %i.bs = load i8, ptr %3, align 8
  %i.bt = trunc i8 %i.bs to i1
  %or.cond.i.i67 = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond.i.i67, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !186
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.w:                                             ; preds = %bb.u
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep10AssignSlowERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i: ; preds = %bb.k, %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  switch i8 %i.j, label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge [
    i8 12, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
    i8 9, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  ]

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %.sink7.i.i.i78.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.pre = ptrtoint ptr %2 to i64
  %.pre111 = ptrtoint ptr %.sink7.i.i.i78.pre to i64
  %.pre113 = sub i64 %.pre, %.pre111
  %.pre115 = sdiv exact i64 %.pre113, 88
  %.pre116 = shl i64 %.pre115, 32
  %.pre118 = ashr exact i64 %.pre116, 30
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.bw = ptrtoint ptr %2 to i64
  %.sink7.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %i.bx = ptrtoint ptr %.sink7.i.i.i to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.0.in.i.i.i = sdiv exact i64 %i.by, 88
  %i.bz = shl i64 %.0.in.i.i.i, 32
  %i.ca = ashr exact i64 %i.bz, 30                ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !72
  %i.cd = trunc i32 %i.cc to i1
  br i1 %i.cd, label %bb.x, label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.x:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %i.ce = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  invoke void @_ZN6google8protobuf8internal18InlinedStringField3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.0.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !40
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.z:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.z
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !40
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.aj

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %.pre-phi119 = phi i64 [ %.pre118, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i._ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit_crit_edge ], [ %i.ca, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit ]
  %i.cq = getelementptr inbounds i8, ptr %i.bv, i64 %.pre-phi119
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72
  %i.cs = and i32 %i.cr, 2
  %.not109 = icmp eq i32 %i.cs, 0
  %i.ct = and i8 %i.ad, 8
  %.not.i.i93.not = icmp eq i8 %i.ct, 0           ; 2 uses
  br i1 %.not109, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i93.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = and i8 %i.g, 16
  %.not.i.i.i81 = icmp eq i8 %i.cu, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !59 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !71
  %i.dd = ptrtoint ptr %i.cw to i64
  %i.de = select i1 %.not.i.i.i81, i64 0, i64 %i.dd
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 56
  %i.di = trunc i64 %i.dh to i32
  %i.dj = shl i32 %i.di, 2
  %i.dk = add i32 %i.dj, %i.cy
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !72
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !58
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.cw)
  %i.dr = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store ptr null, ptr %i.dr, align 8, !tbaa !183
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83: ; preds = %bb.aa, %bb.ac, %bb.ab
  %i.ds = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  invoke void @_ZN6google8protobuf8internal11MicroString9SetStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %.0.i.i, i64 noundef 7)
          to label %_ZN6google8protobuf8internal11MicroString3SetIJPNS0_5ArenaEEEEvONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit unwind label %bb.ad

_ZN6google8protobuf8internal11MicroString3SetIJPNS0_5ArenaEEEEvONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83
  %i.dt = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZN6google8protobuf8internal11MicroString3SetIJPNS0_5ArenaEEEEvONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !40
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZN6google8protobuf8internal11MicroString3SetIJPNS0_5ArenaEEEEvONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.ad:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit83
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ad
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !40
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.aj

bb.ae:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i93.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = and i8 %i.g, 16
  %.not.i.i.i94 = icmp eq i8 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !59 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !71
  %i.en = ptrtoint ptr %i.eg to i64
  %i.eo = select i1 %.not.i.i.i94, i64 0, i64 %i.en
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 56
  %i.es = trunc i64 %i.er to i32
  %i.et = shl i32 %i.es, 2
  %i.eu = add i32 %i.et, %i.ei
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !72
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eg)
  %i.fb = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %i.fb, align 8, !tbaa !85
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96: ; preds = %bb.ae, %bb.ag, %bb.af
  %i.fc = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldINS0_8internal14ArenaStringPtrEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3)
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %.0.i.i)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96
  %i.fd = load ptr, ptr %6, align 8, !tbaa !122   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.ah
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !40
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN4absl12lts_202505124CordaSERKS1_.exit

bb.ai:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit96
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !122   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ai
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !40
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.aj

_ZN4absl12lts_202505124CordaSERKS1_.exit:         ; preds = %bb.w, %bb.v, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.t, %bb.s, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.k, %bb.j
  ret void

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet13MutableStringB5cxx11EPNS0_5ArenaEihPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf8internal18InlinedStringField3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection17GetRepeatedStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = and i8 %i.i, 32
  %.not37 = icmp eq i8 %i.j, 0
  br i1 %.not37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.17)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !86
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !88
  %.not = icmp eq i32 %i.o, 9
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull @.str.65, i32 noundef 9)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = and i8 %i.i, 8
  %.not38 = icmp eq i8 %i.p, 0
  br i1 %.not38, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf8internal12ExtensionSet11GetRepeatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_ii(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i32 noundef %i.v, i32 noundef %4) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !119
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !122  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !121 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !123
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !122
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !123
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %.noexc.i ], [ %i.x, %bb.h ] ; 2 uses
  switch i64 %i.aa, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !40
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !121
  %i.ai = load ptr, ptr %0, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 7
  %i.an = icmp eq i8 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sink7.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ar = ptrtoint ptr %3 to i64
  %i.as = ptrtoint ptr %.sink7.i.i.i.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %.0.in.i.i.i.i = sdiv exact i64 %i.at, 88
  %i.au = shl i64 %.0.in.i.i.i.i, 32
  %i.av = ashr exact i64 %i.au, 30
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72 ; 2 uses
  %i.ay = and i32 %i.ax, 2147483640               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !89 ; 3 uses
  %.not.i.i.i = icmp ne i32 %i.ba, -1
  %i.bb = icmp slt i32 %i.ax, 0
  %or.cond = select i1 %.not.i.i.i, i1 %i.bb, i1 false, !prof !241 ; 2 uses
  br i1 %i.an, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEjPKNS0_15FieldDescriptorE.exit.i.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.k
  br i1 %or.cond, label %bb.l, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i, !prof !241

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = zext nneg i32 %i.ay to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !150
  br label %_ZNK6google8protobuf10Reflection16GetRepeatedFieldIN4absl12lts_202505124CordEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i.i
  %i.bi = zext nneg i32 %i.ay to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bi
  br label %_ZNK6google8protobuf10Reflection16GetRepeatedFieldIN4absl12lts_202505124CordEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit

_ZNK6google8protobuf10Reflection16GetRepeatedFieldIN4absl12lts_202505124CordEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit: ; preds = %bb.l, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i
  %.1.i.i = phi ptr [ %i.bj, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bk = load i32, ptr %.1.i.i, align 4, !tbaa !95
  %i.bl = and i32 %i.bk, 1
  %i.bm = icmp eq i32 %i.bl, 0
end_hunk_9
begin_hunk_10_@_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = and i8 %i.ah, 8
  %.not.i.i.not = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = and i8 %i.g, 16
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !59 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = select i1 %.not.i.i.i, i64 0, i64 %i.as
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 56
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = shl i32 %i.ax, 2
  %i.az = add i32 %i.ay, %i.an
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !58
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2)
  br label %bb.p

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.k, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = ptrtoint ptr %.sink7.i.i.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %.0.in.i.i.i = sdiv exact i64 %i.bm, 88
  %i.bn = shl i64 %.0.in.i.i.i, 32
  %i.bo = ashr exact i64 %i.bn, 30
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !72 ; 2 uses
  %i.br = and i32 %i.bq, 2147483640
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !89 ; 2 uses
  %.not.i.i31 = icmp ne i32 %i.bt, -1
  %i.bu = icmp slt i32 %i.bq, 0
  %or.cond = select i1 %.not.i.i31, i1 %i.bu, i1 false, !prof !241
  br i1 %or.cond, label %bb.n, label %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit, !prof !241

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !85
  br label %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, %bb.n
  %.sink = phi ptr [ %i.bx, %bb.n ], [ %1, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPKNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %i.by = zext nneg i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit
  %i.cc = tail call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2)
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit, %bb.o, %bb.m, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.025 = phi ptr [ %i.af, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %i.bg, %bb.m ], [ %i.cc, %bb.o ], [ %i.ca, %_ZNK6google8protobuf10Reflection6GetRawIPKNS0_7MessageEEERKT_RS4_PKNS0_15FieldDescriptorE.exit ]
  ret ptr %.025
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf8internal12ExtensionSet10GetMessageEPNS0_5ArenaEiPKNS0_10DescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 32
  %.not52 = icmp eq i8 %i.h, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 10
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.77, i32 noundef 10)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq ptr %3, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %.037 = select i1 %i.n, ptr %i.p, ptr %3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.i:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 3 uses
  %i.x = and i8 %i.g, 8
  %.not53 = icmp eq i8 %i.x, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %.0.i.i, ptr noundef nonnull %2, ptr noundef %.037)
  br label %bb.t

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i14.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.pre = ptrtoint ptr %2 to i64
  %.pre55 = ptrtoint ptr %.sink7.i.i14.i.pre to i64
  %.pre57 = sub i64 %.pre, %.pre55
  %.pre59 = sdiv exact i64 %.pre57, 88
  %.pre60 = shl i64 %.pre59, 32
  %.pre62 = ashr exact i64 %.pre60, 30            ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.k
  %i.af = getelementptr inbounds i8, ptr %.pre.i, i64 %.pre62
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !72
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i, !prof !93

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.ai = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.k, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.aj = getelementptr inbounds i8, ptr %.pre.i, i64 %.pre62
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !72
  %i.al = and i32 %i.ak, 2147483640
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.l, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i = phi ptr [ %i.ai, %bb.l ], [ %i.an, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, 8
  %.not.i.i41.not = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i41.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit
  %i.ar = load i8, ptr %i.f, align 1
  %i.as = and i8 %i.ar, 16
  %.not.i.i.i42 = icmp eq i8 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !59 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = select i1 %.not.i.i.i42, i64 0, i64 %i.bb
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 56
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = shl i32 %i.bg, 2
  %i.bi = add i32 %i.bh, %i.aw
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.au)
  %i.bp = tail call noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.bq = tail call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2)
  %i.br = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef %.0.i.i) ; 2 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !84
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !96 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97
  %i.bx = load i8, ptr %i.f, align 1
  %i.by = and i8 %i.bx, 8
  %.not.i.i.i45 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i45, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i47 = icmp eq ptr %i.cc, null
  br i1 %.not1.i.i.i47, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48, %bb.p
  %.sink7.in.i.i.i49 = phi ptr [ %i.cg, %bb.q ], [ %i.cd, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48 ], [ %i.ca, %bb.p ]
  %.sink7.i.i.i50 = load ptr, ptr %.sink7.in.i.i.i49, align 8, !tbaa !43
  %i.ch = ptrtoint ptr %2 to i64
  %i.ci = ptrtoint ptr %.sink7.i.i.i50 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %.0.in.i.i.i51 = sdiv exact i64 %i.cj, 88
  %i.ck = shl i64 %.0.in.i.i.i51, 32
  %i.cl = ashr exact i64 %i.ck, 30
  %i.cm = getelementptr inbounds i8, ptr %i.bw, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !72 ; 3 uses
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split, label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.cp = and i32 %i.cn, 31
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = zext i32 %i.bt to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = lshr i32 %i.cn, 5
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  %i.cx = or i32 %i.cw, %i.cq
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split: ; preds = %bb.m, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %bb.r
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !84
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split, %bb.n
  %i.cy = phi ptr [ %.pr, %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split ], [ %i.br, %bb.n ] ; 2 uses
  %.038 = phi ptr [ %.0.i, %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exitthread-pre-split ], [ %i.bp, %bb.n ]
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.da = tail call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2)
  %i.db = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef %.0.i.i) ; 2 uses
  store ptr %i.db, ptr %.038, align 8, !tbaa !84
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.s, %bb.j
  %.0 = phi ptr [ %i.ac, %bb.j ], [ %i.db, %bb.s ], [ %i.cy, %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection12MutableFieldIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = select i1 %.not.i.i.i, i64 0, i64 %i.q
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 56
  %i.v = trunc i64 %i.u to i32
  %i.w = shl i32 %i.v, 2
  %i.x = add i32 %i.w, %i.l
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  store i32 %i.j, ptr %i.z, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 8
  %.not.i.i.i9 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i9, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not1.i.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.an, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ak, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = ptrtoint ptr %.sink7.i.i.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %.0.in.i.i.i = sdiv exact i64 %i.at, 88
  %i.au = shl i64 %.0.in.i.i.i, 32
  %i.av = ashr exact i64 %i.au, 30
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72 ; 3 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.az = and i32 %i.ax, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = zext i32 %i.ab to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = lshr i32 %i.ax, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  %i.bh = or i32 %i.bg, %i.ba
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !89
  %.not.i.i10 = icmp eq i32 %i.bj, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre17.i = load i8, ptr %.phi.trans.insert16.i, align 1
  %.pre = and i8 %.pre17.i, 8                     ; 2 uses
  br i1 %.not.i.i10, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i11 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i11, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12: ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i13 = icmp eq ptr %i.bo, null
  br i1 %.not1.i.i.i13, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.i:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14, %bb.h
  %.sink7.in.i.i.i15 = phi ptr [ %i.bs, %bb.i ], [ %i.bp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14 ], [ %i.bm, %bb.h ]
  %.sink7.i.i.i16 = load ptr, ptr %.sink7.in.i.i.i15, align 8, !tbaa !43
  %i.bt = ptrtoint ptr %2 to i64
  %i.bu = ptrtoint ptr %.sink7.i.i.i16 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %.0.in.i.i.i17 = sdiv exact i64 %i.bv, 88
  %i.bw = shl i64 %.0.in.i.i.i17, 32
  %i.bx = ashr exact i64 %i.bw, 30
  %i.by = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !72
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.cb = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.cg, null
  br i1 %.not1.i.i10.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !92
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.l, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.k
  %.sink7.in.i.i13.i = phi ptr [ %i.ck, %bb.l ], [ %i.ch, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ce, %bb.k ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.cl = ptrtoint ptr %2 to i64
  %i.cm = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.0.in.i.i15.i = sdiv exact i64 %i.cn, 88
  %i.co = shl i64 %.0.in.i.i15.i, 32
  %i.cp = ashr exact i64 %i.co, 30
  %i.cq = getelementptr inbounds i8, ptr %.pre.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72
  %i.cs = and i32 %i.cr, 2147483640
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.j, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i = phi ptr [ %i.cb, %bb.j ], [ %i.cu, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection30UnsafeArenaSetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 32
  %.not84 = icmp eq i8 %i.h, 0
  br i1 %.not84, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86    ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 10
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.78, i32 noundef 10)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.i:                                             ; preds = %bb.g
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %i.u = and i8 %i.g, 8
  %.not85 = icmp eq i8 %i.u, 0
  br i1 %.not85, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  tail call void @_ZN6google8protobuf8internal12ExtensionSet30UnsafeArenaSetAllocatedMessageEPNS0_5ArenaEihPKNS0_15FieldDescriptorEPNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.0.i.i, i32 noundef %i.aa, i8 noundef zeroext %i.j, ptr noundef nonnull %3, ptr noundef %2)
  br label %bb.ag

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 8
  %.not.i.i.not = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !59
  %i.ag = icmp eq ptr %2, null
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.af)
  br i1 %i.ag, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !89
  %.not.i.i41 = icmp eq i32 %i.ai, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre17.i = load i8, ptr %i.f, align 1
  %.pre86 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i41, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i42 = icmp eq i8 %.pre86, 0
  br i1 %.not.i.i.i42, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.n
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not1.i.i.i, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.p:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.p, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.o
  %.sink7.in.i.i.i = phi ptr [ %i.ap, %bb.p ], [ %i.am, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ak, %bb.o ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.aq = ptrtoint ptr %3 to i64
  %i.ar = ptrtoint ptr %.sink7.i.i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.0.in.i.i.i = sdiv exact i64 %i.as, 88
  %i.at = shl i64 %.0.in.i.i.i, 32
  %i.au = ashr exact i64 %i.at, 30
  %i.av = getelementptr inbounds i8, ptr %.pre.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !72
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.ay = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.m, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre86, 0
  br i1 %.not.i.i8.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.bb, null
  br i1 %.not1.i.i10.i, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.r
  %.sink7.in.i.i13.i = phi ptr [ %i.bf, %bb.s ], [ %i.bc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ba, %bb.r ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.0.in.i.i15.i = sdiv exact i64 %i.bi, 88
  %i.bj = shl i64 %.0.in.i.i15.i, 32
  %i.bk = ashr exact i64 %i.bj, 30
  %i.bl = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !72
  %i.bn = and i32 %i.bm, 2147483640
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.q, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i43 = phi ptr [ %i.ay, %bb.q ], [ %i.bp, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  store ptr %2, ptr %.0.i43, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = load i8, ptr %i.f, align 1
  %i.bt = and i8 %i.bs, 16
  %.not.i.i44 = icmp eq i8 %i.bt, 0
  %i.bu = load ptr, ptr %i.ae, align 8, !nonnull !59 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.cb = ptrtoint ptr %i.bu to i64
  %i.cc = select i1 %.not.i.i44, i64 0, i64 %i.cb
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 56
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = shl i32 %i.cg, 2
  %i.ci = add i32 %i.ch, %i.bw
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  store i32 %i.br, ptr %i.ck, align 4, !tbaa !72
  br label %bb.ag

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.k
  %i.cl = icmp eq ptr %2, null
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !96 ; 3 uses
  %i.co = icmp eq i32 %i.cn, -1                   ; 2 uses
  br i1 %i.cl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  br i1 %i.co, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i.i50 = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.cs = ptrtoint ptr %3 to i64
  %i.ct = ptrtoint ptr %.sink7.i.i.i50 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %.0.in.i.i.i51 = sdiv exact i64 %i.cu, 88
  %i.cv = shl i64 %.0.in.i.i.i51, 32
  %i.cw = ashr exact i64 %i.cv, 30
  %i.cx = getelementptr inbounds i8, ptr %i.cq, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72 ; 3 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.da = and i32 %i.cy, 31
  %i.db = shl nuw i32 1, %i.da
  %i.dc = xor i32 %i.db, -1
  %i.dd = zext i32 %i.cn to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = lshr i32 %i.cy, 5
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !72
  %i.dj = and i32 %i.di, %i.dc
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.v:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  br i1 %i.co, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i56

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i56: ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i.i58 = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.dn = ptrtoint ptr %3 to i64
  %i.do = ptrtoint ptr %.sink7.i.i.i58 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %.0.in.i.i.i59 = sdiv exact i64 %i.dp, 88
  %i.dq = shl i64 %.0.in.i.i.i59, 32
  %i.dr = ashr exact i64 %i.dq, 30
  %i.ds = getelementptr inbounds i8, ptr %i.dl, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !72 ; 3 uses
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i56
  %i.dv = and i32 %i.dt, 31
  %i.dw = shl nuw i32 1, %i.dv
  %i.dx = zext i32 %i.cn to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx
  %i.dz = lshr i32 %i.dt, 5
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !72
  %i.ed = or i32 %i.ec, %i.dw
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.w, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i56, %bb.v, %bb.u, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !89
  %.not.i.i60 = icmp eq i32 %i.ef, -1
  %.phi.trans.insert.i61 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i62 = load ptr, ptr %.phi.trans.insert.i61, align 8, !tbaa !90 ; 2 uses
  %.pre17.i64 = load i8, ptr %i.f, align 1
  %.pre = and i8 %.pre17.i64, 8                   ; 2 uses
  br i1 %.not.i.i60, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i73, label %bb.x

bb.x:                                             ; preds = %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i65 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i65, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i66

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i66: ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i67 = icmp eq ptr %i.ei, null
  br i1 %.not1.i.i.i67, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i68

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i68: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69

bb.z:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i66
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !92
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69: ; preds = %bb.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i68, %bb.y
  %.sink7.in.i.i.i70 = phi ptr [ %i.em, %bb.z ], [ %i.ej, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i68 ], [ %i.eg, %bb.y ]
  %.sink7.i.i.i71 = load ptr, ptr %.sink7.in.i.i.i70, align 8, !tbaa !43
  %i.en = ptrtoint ptr %3 to i64
  %i.eo = ptrtoint ptr %.sink7.i.i.i71 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %.0.in.i.i.i72 = sdiv exact i64 %i.ep, 88
  %i.eq = shl i64 %.0.in.i.i.i72, 32
  %i.er = ashr exact i64 %i.eq, 30
  %i.es = getelementptr inbounds i8, ptr %.pre.i62, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !72
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i73, !prof !93

bb.aa:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69
  %i.ev = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit83

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i73: ; preds = %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i69
  %.not.i.i8.i74 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i74, label %bb.ab, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i75

bb.ab:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i73
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i75: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i73
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i76 = icmp eq ptr %i.ey, null
  br i1 %.not1.i.i10.i76, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i77

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i77: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i75
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78

bb.ac:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i75
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !92
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78: ; preds = %bb.ac, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i77, %bb.ab
  %.sink7.in.i.i13.i79 = phi ptr [ %i.fc, %bb.ac ], [ %i.ez, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i77 ], [ %i.ew, %bb.ab ]
  %.sink7.i.i14.i80 = load ptr, ptr %.sink7.in.i.i13.i79, align 8, !tbaa !43
  %i.fd = ptrtoint ptr %3 to i64
  %i.fe = ptrtoint ptr %.sink7.i.i14.i80 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %.0.in.i.i15.i81 = sdiv exact i64 %i.ff, 88
  %i.fg = shl i64 %.0.in.i.i15.i81, 32
  %i.fh = ashr exact i64 %i.fg, 30
  %i.fi = getelementptr inbounds i8, ptr %.pre.i62, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !72
  %i.fk = and i32 %i.fj, 2147483640
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit83

_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit83: ; preds = %bb.aa, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78
  %.0.i82 = phi ptr [ %i.ev, %bb.aa ], [ %i.fm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i78 ] ; 2 uses
  %i.fn = icmp eq ptr %.0.i.i, null
  br i1 %i.fn, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit83
  %i.fo = load ptr, ptr %.0.i82, align 8, !tbaa !84 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !100
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  tail call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #36
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit83
  store ptr %2, ptr %.0.i82, align 8, !tbaa !84
  br label %bb.ag

bb.ag:                                            ; preds = %bb.l, %bb.j, %bb.af, %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit
  ret void
}

declare void @_ZN6google8protobuf8internal12ExtensionSet30UnsafeArenaSetAllocatedMessageEPNS0_5ArenaEihPKNS0_15FieldDescriptorEPNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection19SetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6google8protobuf10Reflection30UnsafeArenaSetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef null, ptr noundef %3)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !47

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit24

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit24

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %i.p = icmp eq ptr %.0.i.i, %.0.i.i23
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit24
  tail call void @_ZNK6google8protobuf10Reflection30UnsafeArenaSetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.k

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit24
  %i.q = icmp eq ptr %.0.i.i23, null
  br i1 %i.q, label %_ZN6google8protobuf5Arena3OwnINS0_7MessageEEEvPT_.exit, label %bb.j

_ZN6google8protobuf5Arena3OwnINS0_7MessageEEEvPT_.exit: ; preds = %bb.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i, ptr noundef nonnull %2, ptr noundef nonnull @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv)
  tail call void @_ZNK6google8protobuf10Reflection30UnsafeArenaSetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = tail call noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef null)
  tail call void @_ZN6google8protobuf7Message8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %_ZN6google8protobuf5Arena3OwnINS0_7MessageEEEvPT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Reflection25UnsafeArenaReleaseMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 5 uses
  %i.h = and i8 %i.g, 32
  %.not46 = icmp eq i8 %i.h, 0
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !86
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88
  %.not = icmp eq i32 %i.m, 10
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.79, i32 noundef 10)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq ptr %3, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %.028 = select i1 %i.n, ptr %i.p, ptr %3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.i:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %i.r to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.i ]
  %i.x = and i8 %i.g, 8
  %.not47 = icmp eq i8 %i.x, 0
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet25UnsafeArenaReleaseMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %.0.i.i, ptr noundef nonnull %2, ptr noundef %.028)
  br label %bb.s

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not.i.i.not = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit.thread63

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit35, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.am = ptrtoint ptr %2 to i64
  %i.an = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %.0.in.i.i.i = sdiv exact i64 %i.ao, 88
  %i.ap = shl i64 %.0.in.i.i.i, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !72 ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit35, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.au = and i32 %i.as, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = xor i32 %i.av, -1
  %i.ax = zext i32 %i.ah to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = lshr i32 %i.as, 5
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !72
  %i.bd = and i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !72
  %.pre = load i8, ptr %i.ad, align 1
  %.pre17.i.pre48.pre = load i8, ptr %i.f, align 1 ; 2 uses
  %.pre51 = and i8 %.pre, 8
  %i.be = icmp eq i8 %.pre51, 0
  br i1 %i.be, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit35, label %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit.thread63

_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit.thread63: ; preds = %bb.k, %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.pre17.i.pre4866 = phi i8 [ %.pre17.i.pre48.pre, %_ZNK6google8protobuf10Reflection11ClearHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.g, %bb.k ]
  %i.bf = and i8 %.pre17.i.pre4866, 16
  %.not.i.i.i33 = icmp eq i8 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !59 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb1EZNKS1_14SwapOneofFieldILb1EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE15LocalVarWrapperZNKS3_ILb1EEEvS5_S5_S8_E14MessageWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_:bb.a
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.eo = load ptr, ptr %3, align 8, !tbaa !404
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !405
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !406
  call void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal11MicroStringEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.eo, ptr noundef %i.eq, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.aj

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i41 = icmp eq i8 %i.el, 8
  br i1 %.not.i.i.i41, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper17GetArenaStringPtrEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.et, align 8, !tbaa !100
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr @.str.163, ptr %i.eu, align 8, !tbaa !429
  tail call void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #41
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper17GetArenaStringPtrEv.exit: ; preds = %bb.ab
  %.sroa.0.0.copyload.i42 = load ptr, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i42, ptr %4, align 8
  %i.ev = load ptr, ptr %3, align 8, !tbaa !404
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !405
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !406
  call void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal14ArenaStringPtrEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ev, ptr noundef %i.ex, ptr noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aj

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 667) #37
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 20, ptr nonnull @.str.161)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.fa = load i8, ptr %i.k, align 2, !tbaa !86
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !88
  store i32 %i.fd, ptr %i.j, align 4, !tbaa !88
  %i.fe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ah

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #38
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #38
  unreachable

bb.aj:                                            ; preds = %bb.t, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetCordEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper17GetArenaStringPtrEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper14GetMicroStringEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper16UnsafeGetMessageEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm9EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm10EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS5_8internal14ArenaStringPtrENS8_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_RSt7variantIJiljmfdbS7_S9_SA_SE_SK_EEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeESP_SS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSJ_EENSt9enable_ifIX16is_invocable_r_vISL_T0_DpT1_EESL_E4typeEOSQ_DpOSR_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #40
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSJ_EENSt9enable_ifIX16is_invocable_r_vISL_T0_DpT1_EESL_E4typeEOSQ_DpOSR_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSJ_EENSt9enable_ifIX16is_invocable_r_vISL_T0_DpT1_EESL_E4typeEOSQ_DpOSR_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #25

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #32

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldIPN4absl12lts_202505124CordEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ae, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ah, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.0.in.i.i.i = sdiv exact i64 %i.ap, 88
  %i.aq = shl i64 %.0.in.i.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.av = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bd, %bb.j ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ay, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i15.i = sdiv exact i64 %i.bg, 88
  %i.bh = shl i64 %.0.in.i.i15.i, 32
  %i.bi = ashr exact i64 %i.bh, 30
  %i.bj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = and i32 %i.bk, 2147483640
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.av, %bb.h ], [ %i.bn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i ]
  store ptr %i.ac, ptr %.0.i17, align 8, !tbaa !158
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = load ptr, ptr %3, align 8, !tbaa !158
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.cj, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cm, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %2 to i64
  %i.cu = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.0.in.i.i.i31 = sdiv exact i64 %i.cv, 88
  %i.cw = shl i64 %.0.in.i.i.i31, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !92
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37: ; preds = %bb.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36, %bb.p
  %.sink7.in.i.i13.i38 = phi ptr [ %i.dk, %bb.q ], [ %i.dh, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36 ], [ %i.de, %bb.p ]
  %.sink7.i.i14.i39 = load ptr, ptr %.sink7.in.i.i13.i38, align 8, !tbaa !43
  %i.dl = ptrtoint ptr %2 to i64
  %i.dm = ptrtoint ptr %.sink7.i.i14.i39 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %.0.in.i.i15.i40 = sdiv exact i64 %i.dn, 88
  %i.do = shl i64 %.0.in.i.i15.i40, 32
  %i.dp = ashr exact i64 %i.do, 30
  %i.dq = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ds = and i32 %i.dr, 2147483640
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37, %bb.o
  %.0.i41 = phi ptr [ %i.db, %bb.o ], [ %i.du, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i37 ]
  store ptr %i.ch, ptr %.0.i41, align 8, !tbaa !158
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !96 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.ea = load i8, ptr %.phi.trans.insert16.i22, align 1
  %i.eb = and i8 %i.ea, 8
  %.not.i.i.i43 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i43, label %bb.t, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44: ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i45 = icmp eq ptr %i.eg, null
  br i1 %.not1.i.i.i45, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

bb.u:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.u, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46, %bb.t
  %.sink7.in.i.i.i47 = phi ptr [ %i.ek, %bb.u ], [ %i.eh, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46 ], [ %i.ee, %bb.t ]
  %.sink7.i.i.i48 = load ptr, ptr %.sink7.in.i.i.i47, align 8, !tbaa !43
  %i.el = ptrtoint ptr %2 to i64
  %i.em = ptrtoint ptr %.sink7.i.i.i48 to i64
  %i.en = sub i64 %i.el, %i.em
  %.0.in.i.i.i49 = sdiv exact i64 %i.en, 88
  %i.eo = shl i64 %.0.in.i.i.i49, 32
  %i.ep = ashr exact i64 %i.eo, 30
  %i.eq = getelementptr inbounds i8, ptr %i.dz, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !72 ; 3 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.et = and i32 %i.er, 31
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = zext i32 %i.dw to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %i.ex = lshr i32 %i.er, 5
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !72
  %i.fb = or i32 %i.fa, %i.eu
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.v, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %bb.r, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal11MicroStringEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ad, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ai, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ag, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.am = ptrtoint ptr %2 to i64
  %i.an = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %.0.in.i.i.i = sdiv exact i64 %i.ao, 88
  %i.ap = shl i64 %.0.in.i.i.i, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !72
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.au = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.ay, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bc, %bb.j ], [ %i.az, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ax, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.0.in.i.i15.i = sdiv exact i64 %i.bf, 88
  %i.bg = shl i64 %.0.in.i.i15.i, 32
  %i.bh = ashr exact i64 %i.bg, 30
  %i.bi = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.bk = and i32 %i.bj, 2147483640
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.au, %bb.h ], [ %i.bm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %i.bn = load i64, ptr %3, align 8, !tbaa !85
  store i64 %i.bn, ptr %.0.i17, align 8, !tbaa !85
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.ci, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.cn, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cr, %bb.n ], [ %i.co, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cl, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %.0.in.i.i.i31 = sdiv exact i64 %i.cu, 88
  %i.cv = shl i64 %.0.in.i.i.i31, 32
  %i.cw = ashr exact i64 %i.cv, 30
  %i.cx = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.da = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.df, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !92
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37: ; preds = %bb.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36, %bb.p
  %.sink7.in.i.i13.i38 = phi ptr [ %i.dj, %bb.q ], [ %i.dg, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36 ], [ %i.dd, %bb.p ]
  %.sink7.i.i14.i39 = load ptr, ptr %.sink7.in.i.i13.i38, align 8, !tbaa !43
  %i.dk = ptrtoint ptr %2 to i64
  %i.dl = ptrtoint ptr %.sink7.i.i14.i39 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %.0.in.i.i15.i40 = sdiv exact i64 %i.dm, 88
  %i.dn = shl i64 %.0.in.i.i15.i40, 32
  %i.do = ashr exact i64 %i.dn, 30
  %i.dp = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !72
  %i.dr = and i32 %i.dq, 2147483640
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37, %bb.o
  %.0.i41 = phi ptr [ %i.da, %bb.o ], [ %i.dt, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i37 ]
  %i.du = load i64, ptr %3, align 8, !tbaa !85
  store i64 %i.du, ptr %.0.i41, align 8, !tbaa !85
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !96 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.ea = load i8, ptr %.phi.trans.insert16.i22, align 1
  %i.eb = and i8 %i.ea, 8
  %.not.i.i.i43 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i43, label %bb.t, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44: ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i45 = icmp eq ptr %i.eg, null
  br i1 %.not1.i.i.i45, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

bb.u:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i44
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.u, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46, %bb.t
  %.sink7.in.i.i.i47 = phi ptr [ %i.ek, %bb.u ], [ %i.eh, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i46 ], [ %i.ee, %bb.t ]
  %.sink7.i.i.i48 = load ptr, ptr %.sink7.in.i.i.i47, align 8, !tbaa !43
  %i.el = ptrtoint ptr %2 to i64
  %i.em = ptrtoint ptr %.sink7.i.i.i48 to i64
  %i.en = sub i64 %i.el, %i.em
  %.0.in.i.i.i49 = sdiv exact i64 %i.en, 88
  %i.eo = shl i64 %.0.in.i.i.i49, 32
  %i.ep = ashr exact i64 %i.eo, 30
  %i.eq = getelementptr inbounds i8, ptr %i.dz, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !72 ; 3 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i
  %i.et = and i32 %i.er, 31
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = zext i32 %i.dw to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %i.ex = lshr i32 %i.er, 5
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !72
  %i.fb = or i32 %i.fa, %i.eu
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.v, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i, %bb.r, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal14ArenaStringPtrEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not.i.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !59 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, %i.j
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  %.pre17.i.pre = load i8, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre17.i = phi i8 [ %.pre17.i.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %.not.i.i15 = icmp eq i32 %i.ad, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !90 ; 2 uses
  %.pre51 = and i8 %.pre17.i, 8                   ; 2 uses
  br i1 %.not.i.i15, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i16 = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i.i16, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.f
  %.sink7.in.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ai, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.ag, %bb.f ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !43
  %i.am = ptrtoint ptr %2 to i64
  %i.an = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %.0.in.i.i.i = sdiv exact i64 %i.ao, 88
  %i.ap = shl i64 %.0.in.i.i.i, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !72
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !93

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.au = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.k

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre51, 0
  br i1 %.not.i.i8.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.ay, null
  br i1 %.not1.i.i10.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.i
  %.sink7.in.i.i13.i = phi ptr [ %i.bc, %bb.j ], [ %i.az, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ax, %bb.i ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !43
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.0.in.i.i15.i = sdiv exact i64 %i.bf, 88
  %i.bg = shl i64 %.0.in.i.i15.i, 32
  %i.bh = ashr exact i64 %i.bg, 30
  %i.bi = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.bk = and i32 %i.bj, 2147483640
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i, %bb.h
  %.0.i17 = phi ptr [ %i.au, %bb.h ], [ %i.bm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %i.bn = load i64, ptr %3, align 8, !tbaa !85
  store i64 %i.bn, ptr %.0.i17, align 8, !tbaa !85
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !58
  %i.bp = load i8, ptr %i.d, align 1
  %i.bq = and i8 %i.bp, 16
  %.not.i.i18 = icmp eq i8 %i.bq, 0
  %i.br = load ptr, ptr %i.g, align 8, !nonnull !59 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = select i1 %.not.i.i18, i64 0, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 56
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = add i32 %i.cd, %i.bs
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i32 %i.bo, ptr %i.cg, align 4, !tbaa !72
  br label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit

.critedge:                                        ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !89
  %.not.i.i19 = icmp eq i32 %i.ci, -1
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert16.i22 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.pre17.i23 = load i8, ptr %.phi.trans.insert16.i22, align 1
  %.pre = and i8 %.pre17.i23, 8                   ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, label %bb.l

bb.l:                                             ; preds = %.critedge
  %.not.i.i.i24 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i24, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.cn, null
  br i1 %.not1.i.i.i26, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.m
  %.sink7.in.i.i.i29 = phi ptr [ %i.cr, %bb.n ], [ %i.co, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.cl, %bb.m ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !43
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %.0.in.i.i.i31 = sdiv exact i64 %i.cu, 88
  %i.cv = shl i64 %.0.in.i.i.i31, 32
  %i.cw = ashr exact i64 %i.cv, 30
  %i.cx = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32, !prof !93

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.da = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32: ; preds = %.critedge, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i33 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i33, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i32
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 2 uses
  %.not1.i.i10.i35 = icmp eq ptr %i.df, null
  br i1 %.not1.i.i10.i35, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i36: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i37

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i34
end_hunk_11
