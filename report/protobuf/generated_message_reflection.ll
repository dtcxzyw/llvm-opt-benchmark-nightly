Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_reflection?download=true
inline.NumInlined: 8094
inline.NumDeleted: 3434
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.l, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !41
  %i.s = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.t = ptrtoint ptr %.sink7.i.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %.0.in.i.i.i = sdiv exact i64 %i.u, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.v = ashr exact i64 %sext.i.i, 30
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = and i32 %i.x, 2147483640                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !86  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i14.i = icmp eq ptr %i.af, null
  br i1 %.not1.i.i14.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i, %bb.g
  %.sink7.in.i.i16.i = phi ptr [ %i.aj, %bb.h ], [ %i.ag, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i ], [ %i.ad, %bb.g ]
  %.sink7.i.i17.i = load ptr, ptr %.sink7.in.i.i16.i, align 8, !tbaa !41
  %i.ak = ptrtoint ptr %.sink7.i.i17.i to i64
  %i.al = sub i64 %i.s, %i.ak
  %.0.in.i.i18.i = sdiv exact i64 %i.al, 88
  %sext.i19.i = shl i64 %.0.in.i.i18.i, 32
  %i.am = ashr exact i64 %sext.i19.i, 30
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !90

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.aq = zext i32 %i.aa to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !82
  %i.at = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.at, 0
  %i.au = zext nneg i32 %i.y to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !141
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ax = zext nneg i32 %i.y to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.i, %bb.j, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %.1.i = phi ptr [ %i.ay, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i ], [ %i.aw, %bb.j ], [ %i.av, %bb.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %.not4346 = icmp eq ptr %i.b, %i.d
  br i1 %.not4346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.048 = phi ptr [ %2, %.lr.ph ], [ %.3, %bb.k ] ; 3 uses
  %.sroa.040.047 = phi ptr [ %i.b, %.lr.ph ], [ %i.bm, %bb.k ] ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !266   ; 2 uses
  %i.h = icmp ne i8 %i.g, 2
  %.not44 = icmp eq ptr %.sroa.040.047, null      ; 2 uses
  %.not = or i1 %.not44, %i.h
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.sroa.040.047, align 8, !tbaa !269 ; 2 uses
  %i.j = add i8 %i.i, -118
  %or.cond.i = icmp ult i8 %i.j, -117
  br i1 %or.cond.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.d ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 2
  %i.o = load i32, ptr %i.n, align 2
  %i.p = zext i32 %i.o to i64
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.q = icmp ne i8 %i.g, 1
  %.not24 = or i1 %.not44, %i.q
  br i1 %.not24, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !271  ; 6 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 8
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not1.i.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.g
  %.sink7.in.i.i = phi ptr [ %i.af, %bb.h ], [ %i.ac, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.z, %bb.g ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.s to i64
  %i.ah = ptrtoint ptr %.sink7.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.0.in.i.i = sdiv exact i64 %i.ai, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.aj = ashr exact i64 %sext.i, 30
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !83
  %switch.tableidx = add i8 %i.an, -9             ; 2 uses
  %i.ao = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ao, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i
  %i.ap = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ap
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %switch.lookup
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ]
  %i.aq = and i32 %.sink.i.i, %i.al               ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 65536
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  %i.as = load i8, ptr %.sroa.040.047, align 8, !tbaa !272 ; 2 uses
  %i.at = add i8 %i.as, -118
  %or.cond.i26 = icmp ult i8 %i.at, -117
  br i1 %or.cond.i26, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = zext nneg i8 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28: ; preds = %bb.i, %bb.j
  %.0.i27 = phi ptr [ %i.aw, %bb.j ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 16
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !273
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 18
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !274
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 19
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !275
  %3 = zext nneg i32 %i.aq to i64
  %i.bd = shl nuw i64 %3, 48
  %i.be = zext i8 %i.bc to i64
  %i.bf = shl nuw nsw i64 %i.be, 24
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = zext i8 %i.ba to i64
  %i.bi = shl nuw nsw i64 %i.bh, 16
  %i.bj = or disjoint i64 %i.bg, %i.bi
  %i.bk = zext i16 %i.ay to i64
  %i.bl = or disjoint i64 %i.bj, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %.0.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %.0.i27, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.e ]
  %.sink = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %i.p, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %i.bl, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ 0, %bb.e ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink, ptr %.048, align 8, !tbaa !82
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i64 %.sink, ptr %.sroa.4.0..0.sroa_idx, align 8, !tbaa !38
  %.3 = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 32 ; 2 uses
  %.not43 = icmp eq ptr %i.bm, %i.d
  br i1 %.not43, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277  ; 2 uses
  %.not2527 = icmp eq ptr %i.b, %i.d
  br i1 %.not2527, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not26 = icmp eq i32 %i.j, -1
  %i.k = shl i32 %i.j, 3
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.029 = phi ptr [ %2, %.lr.ph ], [ %i.bg, %bb.i ] ; 4 uses
  %.sroa.022.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.bh, %bb.i ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.022.028, align 8, !tbaa !280 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 8
  %.not.i = icmp eq i8 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br i1 %.not.i, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !57
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.r = and i8 %.pre, 8
  %.not.i.i21 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i21, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.w, null
  br i1 %.not1.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.u, %bb.d ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !41
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = ptrtoint ptr %.sink7.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %.0.in.i.i = sdiv exact i64 %i.ad, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.ae = ashr exact i64 %sext.i, 30
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !83
  %switch.tableidx = add i8 %i.ai, -9             ; 2 uses
  %i.aj = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aj, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i
  %i.ak = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ak
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %switch.lookup
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ]
  %i.al = and i32 %.sink.i.i, %i.ag
  store i32 %i.al, ptr %.029, align 4, !tbaa !282
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69
  %i.aq = ptrtoint ptr %.0.i to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl nsw i32 %i.au, 2
  %i.aw = add nsw i32 %i.av, %i.h
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !283 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  %i.ba = add i32 %i.ay, %i.k
  %i.bb = select i1 %i.az, i32 %i.ba, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sink = phi i32 [ %i.bb, %bb.h ], [ %i.aw, %bb.f ], [ 0, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.029, i64 4
  store i32 %.sink, ptr %i.bc, align 4, !tbaa !284
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bf = load <2 x i16>, ptr %i.bd, align 4, !tbaa !285
  store <2 x i16> %i.bf, ptr %i.be, align 4, !tbaa !285
  %i.bg = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 24 ; 2 uses
  %.not25 = icmp eq ptr %i.bh, %i.d
  br i1 %.not25, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.190", align 8    ; 7 uses
  %4 = alloca %"class.std::vector.150", align 16  ; 8 uses
  %5 = alloca %"struct.std::pair.222", align 8    ; 6 uses
  %6 = alloca %"struct.std::pair.225", align 8    ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !693  ; 2 uses
  %.not51 = icmp eq ptr %i.b, %i.d
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.b

._crit_edge:                                      ; preds = %bb.an, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %.053 = phi ptr [ %2, %.lr.ph ], [ %.1, %bb.an ] ; 18 uses
  %.sroa.025.052 = phi ptr [ %i.b, %.lr.ph ], [ %i.ep, %bb.an ] ; 6 uses
  %i.k = load i32, ptr %.sroa.025.052, align 8, !tbaa !696
  switch i32 %i.k, label %bb.an [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
bb.ar:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !174 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !97
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef ptr %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hw)
          to label %bb.as unwind label %bb.bt

bb.as:                                            ; preds = %bb.ar
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !749
  br label %bb.at

bb.at:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit, %bb.as
  %i.id = phi i32 [ %i.ic, %bb.as ], [ %i.hv, %_ZN6google8protobuf8internal8AllocateEm.exit ]
  %i.ie = trunc i32 %i.id to i16
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !42 ; 2 uses
  %.not196 = icmp eq i32 %i.ig, -1
  %i.ih = trunc i32 %i.ig to i16
  %spec.select = select i1 %.not196, i16 0, i16 %i.ih
  br i1 %.not.i.i286, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ii = getelementptr inbounds i8, ptr %.sroa.16.0.lcssa281, i64 -24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !307
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !56
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.im = phi i32 [ %i.il, %bb.au ], [ 0, %bb.at ]
  %i.in = load i32, ptr %i.fw, align 8, !tbaa !750
  %i.io = load ptr, ptr %i.gx, align 8, !tbaa !747
  %i.ip = load ptr, ptr %i.gw, align 8, !tbaa !320
  %i.iq = load ptr, ptr %i.ht, align 8, !tbaa !174 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !97
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = invoke noundef ptr %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.iq)
          to label %bb.aw unwind label %bb.bt

bb.aw:                                            ; preds = %bb.av
  %i.iv = ptrtoint ptr %i.io to i64
  %i.iw = ptrtoint ptr %i.ip to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 4
  %i.iz = trunc i64 %i.iy to i16
  %i.ja = trunc i64 %.pre-phi237 to i16
  %.tr51 = trunc i64 %i.fk to i8
  %i.jb = shl i8 %.tr51, 3
  %i.jc = add i8 %i.jb, -8
  %i.jd = load i8, ptr %3, align 8, !tbaa !751    ; 2 uses
  %i.je = add i8 %i.jd, -118
  %or.cond.i = icmp ult i8 %i.je, -117
  br i1 %or.cond.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jf = zext nneg i8 %i.jd to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit: ; preds = %bb.aw, %bb.ax
  %.0.i92 = phi ptr [ %i.jh, %bb.ax ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.aw ]
  store i16 %i.ie, ptr %i.ho, align 8, !tbaa !754
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i16 %spec.select, ptr %i.ji, align 2, !tbaa !755
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 %i.im, ptr %i.jj, align 4, !tbaa !756
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i8 %i.jc, ptr %i.jk, align 8, !tbaa !757
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ho, i64 9 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = and i8 %i.jm, -2
  store i8 %i.jn, ptr %i.jl, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ho, i64 10 ; 2 uses
  store i16 %i.fv, ptr %i.jo, align 2, !tbaa !758
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 %i.in, ptr %i.jp, align 4, !tbaa !759
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  store i32 %i.gp, ptr %i.jq, align 8, !tbaa !760
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ho, i64 20
  store i16 %i.ja, ptr %i.jr, align 4, !tbaa !761
  %i.js = getelementptr inbounds nuw i8, ptr %i.ho, i64 22 ; 3 uses
  store i16 %i.iz, ptr %i.js, align 2, !tbaa !762
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 4 uses
  store i32 %i.gu, ptr %i.jt, align 8, !tbaa !763
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.iu, ptr %i.ju, align 8, !tbaa !764
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  store ptr null, ptr %i.jv, align 8, !tbaa !765
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  store ptr %.0.i92, ptr %i.jw, align 8, !tbaa !766
  %i.jx = load ptr, ptr %i.fd, align 8, !tbaa !264 ; 2 uses
  %i.jy = load ptr, ptr %i.fe, align 8, !tbaa !264 ; 2 uses
  %.not4346.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not4346.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bh, %.lr.ph.i93
  %.048.i = phi ptr [ %i.jz, %.lr.ph.i93 ], [ %.3.i, %bb.bh ] ; 3 uses
  %.sroa.040.047.i = phi ptr [ %i.jx, %.lr.ph.i93 ], [ %i.mi, %bb.bh ] ; 10 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 24
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !266 ; 2 uses
  %i.kd = icmp ne i8 %i.kc, 2
  %.not44.i = icmp eq ptr %.sroa.040.047.i, null  ; 2 uses
  %.not.i94 = or i1 %.not44.i, %i.kd
  br i1 %.not.i94, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !269 ; 2 uses
  %i.kf = add i8 %i.ke, -118
  %or.cond.i.i = icmp ult i8 %i.kf, -117
  br i1 %or.cond.i.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = zext nneg i8 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i: ; preds = %bb.ba, %bb.az
  %.0.i.i = phi ptr [ %i.ki, %bb.ba ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.az ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 2
  %i.kk = load i32, ptr %i.kj, align 2
  %i.kl = zext i32 %i.kk to i64
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ay
  %i.km = icmp ne i8 %i.kc, 1
  %.not24.i = or i1 %.not44.i, %i.km
  br i1 %.not24.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !271 ; 6 uses
  %i.kp = load ptr, ptr %i.ka, align 8, !tbaa !87
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = and i8 %i.kr, 8
  %.not.i.i.i95 = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i95, label %bb.bd, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96

bb.bd:                                            ; preds = %bb.bc
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !88
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96: ; preds = %bb.bc
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i.i97 = icmp eq ptr %i.kx, null
  br i1 %.not1.i.i.i97, label %bb.be, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

bb.be:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !89
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99: ; preds = %bb.be, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98, %bb.bd
  %.sink7.in.i.i.i100 = phi ptr [ %i.lb, %bb.be ], [ %i.ky, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98 ], [ %i.kv, %bb.bd ]
  %.sink7.i.i.i101 = load ptr, ptr %.sink7.in.i.i.i100, align 8, !tbaa !41
  %i.lc = ptrtoint ptr %i.ko to i64
  %i.ld = ptrtoint ptr %.sink7.i.i.i101 to i64
  %i.le = sub i64 %i.lc, %i.ld
  %.0.in.i.i.i102 = sdiv exact i64 %i.le, 88
  %sext.i.i103 = shl i64 %.0.in.i.i.i102, 32
  %i.lf = ashr exact i64 %sext.i.i103, 30
  %i.lg = getelementptr inbounds i8, ptr %i.kp, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.lj = load i8, ptr %i.li, align 2, !tbaa !83
  %switch.tableidx = add i8 %i.lj, -9             ; 2 uses
  %i.lk = icmp ult i8 %switch.tableidx, 4
  br i1 %i.lk, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99
  %i.ll = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ll
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99, %switch.lookup
  %.sink.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99 ]
  %i.lm = and i32 %.sink.i.i.i, %i.lh             ; 2 uses
  %i.ln = icmp samesign ult i32 %i.lm, 65536
  br i1 %i.ln, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i
  %i.lo = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !272 ; 2 uses
  %i.lp = add i8 %i.lo, -118
  %or.cond.i26.i = icmp ult i8 %i.lp, -117
  br i1 %or.cond.i26.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lq = zext nneg i8 %i.lo to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i: ; preds = %bb.bg, %bb.bf
  %.0.i27.i = phi ptr [ %i.ls, %bb.bg ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bf ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 16
  %i.lu = load i16, ptr %i.lt, align 8, !tbaa !273
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 18
  %i.lw = load i8, ptr %i.lv, align 2, !tbaa !274
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 19
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !275
  %7 = zext nneg i32 %i.lm to i64
  %i.lz = shl nuw i64 %7, 48
  %i.ma = zext i8 %i.ly to i64
  %i.mb = shl nuw nsw i64 %i.ma, 24
  %i.mc = or disjoint i64 %i.mb, %i.lz
  %i.md = zext i8 %i.lw to i64
  %i.me = shl nuw nsw i64 %i.md, 16
  %i.mf = or disjoint i64 %i.mc, %i.me
  %i.mg = zext i16 %i.lu to i64
  %i.mh = or disjoint i64 %i.mf, %i.mg
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i, %bb.bb, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %.0.i.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %.0.i27.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bb ]
  %.sink.i = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %i.kl, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %i.mh, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ 0, %bb.bb ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i, ptr %.048.i, align 8, !tbaa !82
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  store i64 %.sink.i, ptr %.sroa.4.0..0.sroa_idx.i, align 8, !tbaa !38
  %.3.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 32 ; 2 uses
  %.not43.i = icmp eq ptr %i.mi, %i.jy
  br i1 %.not43.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, label %bb.ay

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit: ; preds = %bb.bh
  %.pre228 = load i16, ptr %i.jo, align 2, !tbaa !758
  br label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit: ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.mj = phi i16 [ %.pre228, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit ], [ %i.fv, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ]
  %i.mk = ptrtoint ptr %i.ho to i64               ; 4 uses
  %i.ml = zext i16 %i.mj to i64
  %i.mm = add i64 %i.ml, %i.mk
  %i.mn = inttoptr i64 %i.mm to ptr               ; 2 uses
  %.val = load ptr, ptr %i.fx, align 8, !tbaa !745 ; 2 uses
  %.val64 = load ptr, ptr %i.fz, align 8, !tbaa !745 ; 2 uses
  %.not12.i = icmp eq ptr %.val, %.val64
  br i1 %.not12.i, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, %._crit_edge.i
  %.014.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.mn, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %.sroa.05.013.i = phi ptr [ %i.nm, %._crit_edge.i ], [ %.val, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %i.mo = load i32, ptr %.sroa.05.013.i, align 8, !tbaa !771
  store i32 %i.mo, ptr %.014.i, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !746 ; 3 uses
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !319 ; 8 uses
  %i.mu = ptrtoint ptr %i.ms to i64               ; 3 uses
  %i.mv = ptrtoint ptr %i.mt to i64               ; 3 uses
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = lshr exact i64 %i.mw, 2
  %i.my = trunc i64 %i.mx to i16
  %i.mz = getelementptr i8, ptr %.014.i, i64 6    ; 6 uses
  store i16 %i.my, ptr %i.mp, align 2, !tbaa !285
  %.not89.i = icmp eq ptr %i.mt, %i.ms
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph16.i
  %i.na = add i64 %i.mu, -4
  %i.nb = sub i64 %i.na, %i.mv                    ; 2 uses
  %i.nc = lshr i64 %i.nb, 2
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nb, 28
  br i1 %min.iters.check, label %.lr.ph.i104.preheader310, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i104.preheader
  %scevgep = getelementptr i8, ptr %.014.i, i64 10
  %i.ne = add i64 %i.mu, -4
  %i.nf = sub i64 %i.ne, %i.mv
  %i.ng = and i64 %i.nf, -4                       ; 2 uses
  %scevgep300 = getelementptr i8, ptr %scevgep, i64 %i.ng
  %scevgep301 = getelementptr i8, ptr %i.mt, i64 4
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.ng
  %bound0 = icmp ult ptr %i.mz, %scevgep302
  %bound1 = icmp ult ptr %i.mt, %scevgep300
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i104.preheader310, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nd, 9223372036854775804     ; 3 uses
  %i.nh = shl i64 %n.vec, 2                       ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mz, i64 %i.nh  ; 2 uses
  %i.nj = getelementptr i8, ptr %i.mt, i64 %i.nh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nk = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mz, i64 %i.nk
  %next.gep303 = getelementptr i8, ptr %i.mt, i64 %i.nk
  %wide.vec = load <8 x i16>, ptr %next.gep303, align 2, !tbaa !285, !alias.scope !772
  store <8 x i16> %wide.vec, ptr %next.gep, align 2, !tbaa !285, !alias.scope !773, !noalias !772
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i104.preheader310

.lr.ph.i104.preheader310:                         ; preds = %vector.memcheck, %.lr.ph.i104.preheader, %middle.block
  %.111.i.ph = phi ptr [ %i.mz, %vector.memcheck ], [ %i.mz, %.lr.ph.i104.preheader ], [ %i.ni, %middle.block ]
  %.sroa.01.010.i.ph = phi ptr [ %i.mt, %vector.memcheck ], [ %i.mt, %.lr.ph.i104.preheader ], [ %i.nj, %middle.block ]
  br label %.lr.ph.i104

._crit_edge.i:                                    ; preds = %.lr.ph.i104, %middle.block, %.lr.ph16.i
  %.1.lcssa.i = phi ptr [ %i.mz, %.lr.ph16.i ], [ %i.ni, %middle.block ], [ %i.nn, %.lr.ph.i104 ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 32 ; 2 uses
  %.not.i106 = icmp eq ptr %i.nm, %.val64
  br i1 %.not.i106, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader310, %.lr.ph.i104
  %.111.i = phi ptr [ %i.nn, %.lr.ph.i104 ], [ %.111.i.ph, %.lr.ph.i104.preheader310 ] ; 2 uses
  %.sroa.01.010.i = phi ptr [ %i.np, %.lr.ph.i104 ], [ %.sroa.01.010.i.ph, %.lr.ph.i104.preheader310 ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.111.i, i64 4 ; 2 uses
  %i.no = load <2 x i16>, ptr %.sroa.01.010.i, align 2, !tbaa !285
  store <2 x i16> %i.no, ptr %.111.i, align 2, !tbaa !285
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4 ; 2 uses
  %.not8.i105 = icmp eq ptr %i.np, %i.ms
  br i1 %.not8.i105, label %._crit_edge.i, label %.lr.ph.i104, !llvm.loop !721

_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit: ; preds = %._crit_edge.i, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit
  %.0.lcssa.i107 = phi ptr [ %i.mn, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i107, i64 2
  store i16 -1, ptr %.0.lcssa.i107, align 2, !tbaa !285
  store i16 -1, ptr %i.nq, align 2, !tbaa !285
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !277 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !277 ; 2 uses
  %.not2527.i = icmp eq ptr %i.ns, %i.nu
  br i1 %.not2527.i, label %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit
  %i.nv = load i32, ptr %i.jq, align 8, !tbaa !760
  %i.nw = zext i32 %i.nv to i64
  %i.nx = add i64 %i.nw, %i.mk
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !87
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = load i32, ptr %i.hu, align 8            ; 2 uses
  %.not26.i = icmp eq i32 %i.od, -1
  %i.oe = shl i32 %i.od, 3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bp, %.lr.ph.i108
  %.029.i = phi ptr [ %i.ny, %.lr.ph.i108 ], [ %i.qa, %bb.bp ] ; 4 uses
  %.sroa.022.028.i = phi ptr [ %i.ns, %.lr.ph.i108 ], [ %i.qb, %bb.bp ] ; 4 uses
  %i.of = load ptr, ptr %.sroa.022.028.i, align 8, !tbaa !280 ; 8 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 3
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = and i8 %i.oh, 8
  %.not.i.i109 = icmp eq i8 %i.oi, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br i1 %.not.i.i109, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %i.ok = load ptr, ptr %i.oj, align 8, !nonnull !57
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i111 = phi ptr [ %i.ok, %bb.bj ], [ null, %bb.bi ] ; 3 uses
  %i.ol = and i8 %.pre.i, 8
  %.not.i.i21.i = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i21.i, label %bb.bk, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112

bb.bk:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !88
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i.i113 = icmp eq ptr %i.oq, null
  br i1 %.not1.i.i.i113, label %bb.bl, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

bb.bl:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !89
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115: ; preds = %bb.bl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114, %bb.bk
  %.sink7.in.i.i.i116 = phi ptr [ %i.ou, %bb.bl ], [ %i.or, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114 ], [ %i.oo, %bb.bk ]
  %.sink7.i.i.i117 = load ptr, ptr %.sink7.in.i.i.i116, align 8, !tbaa !41
  %i.ov = ptrtoint ptr %i.of to i64
  %i.ow = ptrtoint ptr %.sink7.i.i.i117 to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %.0.in.i.i.i118 = sdiv exact i64 %i.ox, 88
  %sext.i.i119 = shl i64 %.0.in.i.i.i118, 32
end_hunk_1
