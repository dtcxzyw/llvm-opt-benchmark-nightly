inline.NumInlined: 4553
inline.NumDeleted: 1209
begin_hunk_0_@_ZN2v88internal6String30MarkForExternalizationDuringGCINS_6String29ExternalOneByteStringResourceEEEbPNS0_7IsolateEPT_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.k = load i8, ptr %i.j, align 8, !range !9
  %i.l = trunc nuw i8 %i.k to i1
  %not..i.i = xor i1 %i.i, true
  %i.m = select i1 %not..i.i, i1 true, i1 %i.l
  br i1 %i.m, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.o = load i8, ptr %i.n, align 8, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit

_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit: ; preds = %bb.c, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.r, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %1, %bb.c ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 58472
  %i.s = load ptr, ptr %.in.i, align 8
  %i.t = tail call noundef zeroext i1 @_ZN2v88internal21StringForwardingTable25TryUpdateExternalResourceINS_6String29ExternalOneByteStringResourceEEEbiPT_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.g, ptr noundef %2) #25
  br i1 %i.t, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #25
  %i.x = or i32 %i.b, 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.y = and i32 %i.b, 1
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN2v88internal4Name13EnsureRawHashEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i32, ptr %i.a acquire, align 4 ; 4 uses
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN2v88internal4Name13EnsureRawHashEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.aa, 3
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.af = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %i.aa)
  br label %_ZN2v88internal4Name13EnsureRawHashEv.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !104
  %i.ag = call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashERKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !9, !noundef !10
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8
  br i1 %i.aj, label %bb.l, label %_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #25
  br label %_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i

_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN2v88internal4Name13EnsureRawHashEv.exit

_ZN2v88internal4Name13EnsureRawHashEv.exit:       ; preds = %_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i, %bb.j, %bb.h, %bb.g
  %.018 = phi i32 [ %i.b, %bb.g ], [ %i.ag, %_ZN2v88internal6String20ComputeAndSetRawHashEv.exit.i ], [ %i.af, %bb.j ], [ %i.aa, %bb.h ]
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1) #25
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !9, !noundef !10
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ar = load i8, ptr %i.aq, align 8, !range !9
  %i.as = trunc nuw i8 %i.ar to i1
  %not..i.i19 = xor i1 %i.ap, true
  %i.at = select i1 %not..i.i19, i1 true, i1 %i.as
  br i1 %i.at, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit23, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Name13EnsureRawHashEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.av = load i8, ptr %i.au, align 8, !range !9, !noundef !10
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i20, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i20: ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit23

_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit23: ; preds = %_ZN2v88internal4Name13EnsureRawHashEv.exit, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i20
  %.pn.i21 = phi ptr [ %i.ay, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i20 ], [ %1, %_ZN2v88internal4Name13EnsureRawHashEv.exit ]
  %.in.i22 = getelementptr inbounds nuw i8, ptr %.pn.i21, i64 58472
  %i.az = load ptr, ptr %.in.i22, align 8
  %i.ba = ptrtoint ptr %0 to i64
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = call noundef i32 @_ZN2v88internal21StringForwardingTable26AddExternalResourceAndHashINS_6String29ExternalOneByteStringResourceEEEiNS0_6TaggedINS0_6StringEEEPT_j(ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 %i.bb, ptr noundef nonnull %2, i32 noundef %.018) #25
  %i.bd = shl i32 %i.bc, 4
  %i.be = or disjoint i32 %i.bd, 9
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit23, %bb.f
  %.sink = phi i32 [ %i.x, %bb.f ], [ %i.be, %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit23 ]
  store atomic i32 %.sink, ptr %i.a release, align 4
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, %bb.a
  %.1 = phi i1 [ false, %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit ], [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6String23SupportsExternalizationENS_6String8EncodingE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.a, %tailrecurse
  %.tr40 = phi ptr [ %i.o, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.f = load atomic volatile i64, ptr %.tr40 monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = and i16 %i.i, -121
  %i.k = icmp eq i16 %i.j, 5
  br i1 %i.k, label %tailrecurse, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

tailrecurse:                                      ; preds = %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.tr40, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp ult i16 %i.s, 128
  br i1 %i.t, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit, %tailrecurse, %bb.a
  %.tr.lcssa39 = phi ptr [ %0, %bb.a ], [ %i.o, %tailrecurse ], [ %.tr40, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit ] ; 2 uses
  %i.u = ptrtoint ptr %.tr.lcssa39 to i64
  %i.v = and i64 %i.u, -262144
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 262144
  %i.y = and i64 %i.x, 64
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %i.z = load atomic volatile i64, ptr %.tr.lcssa39 acquire, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2 ; 2 uses
  %i.ad = and i16 %i.ac, -121
  %i.ae = icmp eq i16 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 262144
  %i.af = and i64 %.sroa.0.0.copyload.i, 24
  %.not36 = icmp eq i64 %i.af, 0
  br i1 %.not36, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = and i16 %i.ac, 8
  %i.ah = zext nneg i16 %i.ag to i32
  %i.ai = icmp eq i32 %1, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %.1 = phi i1 [ false, %bb.c ], [ false, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ %i.ai, %bb.d ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef nonnull ptr @_ZNK2v88internal6String19PrefixForDebugPrintEv(ptr noundef nonnull align 4 captures(address) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 acquire, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 3 uses
  %i.e = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = and i16 %i.h, 8
  %i.j = icmp eq i16 %i.i, 0
  %i.k = and i16 %i.d, -96
  %i.l = icmp eq i16 %i.k, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i16 %i.d, -121
  %switch.tableidx = add i16 %i.m, -1             ; 2 uses
  %i.n = icmp ult i16 %switch.tableidx, 5
  br i1 %i.n, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i16 %i.d, -121
  %switch.tableidx17 = add i16 %i.o, -1           ; 2 uses
  %i.p = icmp ult i16 %switch.tableidx17, 5
  br i1 %i.p, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.c
  %switch.tableidx17.sink = phi i16 [ %switch.tableidx, %bb.c ], [ %switch.tableidx17, %bb.e ]
  %switch.table._ZNK2v88internal6String19PrefixForDebugPrintEv.1.sink = phi ptr [ @switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE, %bb.c ], [ @switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE.2, %bb.e ]
  %i.q = zext nneg i16 %switch.tableidx17.sink to i64
  %switch.gep19 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZNK2v88internal6String19PrefixForDebugPrintEv.1.sink, i64 %i.q
  %switch.load20 = load ptr, ptr %switch.gep19, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ @.str.4, %bb.c ], [ @.str, %bb.b ], [ @.str.9, %bb.e ], [ @.str.5, %bb.d ], [ %switch.load20, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef nonnull ptr @_ZNK2v88internal6String19SuffixForDebugPrintEv(ptr noundef nonnull align 4 captures(address) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 acquire, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = and i16 %i.d, -96
  %i.f = icmp eq i16 %i.e, 0
  %.str.10..str.9 = select i1 %i.f, ptr @.str.10, ptr @.str.9
  ret ptr %.str.10..str.9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 %i.b, ptr %2, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.11, i64 13, ptr nonnull %2, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.c = load atomic volatile i64, ptr %0 acquire, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2 ; 3 uses
  %i.g = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, 8
  %i.l = icmp eq i16 %i.k, 0
  %i.m = and i16 %i.f, -96
  %i.n = icmp eq i16 %i.m, 0                      ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i16 %i.f, -121
  %switch.tableidx = add i16 %i.o, -1             ; 2 uses
  %i.p = icmp ult i16 %switch.tableidx, 5
  br i1 %i.p, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit.sink.split, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.n, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i16 %i.f, -121
  %switch.tableidx16 = add i16 %i.q, -1           ; 2 uses
  %i.r = icmp ult i16 %switch.tableidx16, 5
  br i1 %i.r, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit.sink.split, label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit

_ZNK2v88internal6String19PrefixForDebugPrintEv.exit.sink.split: ; preds = %bb.e, %bb.c
  %switch.tableidx16.sink = phi i16 [ %switch.tableidx, %bb.c ], [ %switch.tableidx16, %bb.e ]
  %switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE.2.sink = phi ptr [ @switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE, %bb.c ], [ @switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE.2, %bb.e ]
  %i.s = zext nneg i16 %switch.tableidx16.sink to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE.2.sink, i64 %i.s
  %switch.load19 = load ptr, ptr %switch.gep18, align 8
  br label %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit

_ZNK2v88internal6String19PrefixForDebugPrintEv.exit: ; preds = %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit.sink.split, %bb.e, %bb.c, %bb.b, %bb.d
  %.0.i = phi ptr [ @.str.4, %bb.c ], [ @.str, %bb.b ], [ @.str.9, %bb.e ], [ @.str.5, %bb.d ], [ %switch.load19, %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit.sink.split ] ; 2 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #29
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.0.i, i64 %i.t, ptr null, i64 0) #25
  %i.u = icmp ugt i32 %i.b, 1024
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.12, i64 15, ptr null, i64 0) #25
  br label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal6String19PrefixForDebugPrintEv.exit
  call void @_ZN2v88internal6String9PrintUC16EPNS0_12StringStreamEii(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load atomic volatile i64, ptr %0 acquire, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = and i16 %i.y, -96
  %i.aa = icmp ne i16 %i.z, 0                     ; 2 uses
  %.str.10..str.9.i11 = select i1 %i.aa, ptr @.str.9, ptr @.str.10
  %i.ab = zext i1 %i.aa to i64
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.str.10..str.9.i11, i64 %i.ab, ptr null, i64 0) #25
  %i.ac = call noundef zeroext i1 @_ZN2v88internal12StringStream3PutEc(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 62) #25 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal12StringStream3PutEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String9PrintUC16EPNS0_12StringStreamEii(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.v8::internal::StringCharacterStream", align 8 ; 14 uses
  %i.c = icmp slt i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %.0 = select i1 %i.c, i32 %i.e, i32 %3          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.f = ptrtoint ptr %0 to i64
  %i.g = or disjoint i64 %i.f, 1
  call void @_ZN2v88internal21StringCharacterStreamC2ENS0_6TaggedINS0_6StringEEEi(ptr noundef nonnull align 8 dereferenceable(320) %5, i64 %i.g, i32 noundef %2)
  %i.h = icmp slt i32 %2, %.0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 304 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 280
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.01723 = phi i32 [ %2, %.lr.ph ], [ %i.as, %bb.p ]
  %i.n = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.p = load i32, ptr %i.k, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread21, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i: ; preds = %bb.c
  %i.r = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull %i.b) ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread21, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread21: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.a, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread21
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 312 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !9, !noundef !10
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8
  br i1 %i.v, label %bb.d, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #25
  br label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

_ZN2v88internal21StringCharacterStreamD2Ev.exit:  ; preds = %.critedge, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i
  %i.y = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %5, i64 %i.r, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.pre = load ptr, ptr %i.i, align 8             ; 2 uses
  %.pre24 = load ptr, ptr %i.j, align 8
  %i.z = icmp eq ptr %.pre, %.pre24
  br i1 %i.z, label %bb.f, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread

bb.f:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aa = load i32, ptr %i.k, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i: ; preds = %bb.f
  %i.ac = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull %i.a) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i
  %i.ae = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %5, i64 %i.ac, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i: ; preds = %bb.g, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pre25 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread: ; preds = %bb.b, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread
  %i.af = phi ptr [ %.pre25, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i ], [ %.pre, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread ], [ %i.n, %bb.b ] ; 4 uses
  %i.ag = load i8, ptr %i.m, align 8, !range !9, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ai, ptr %i.i, align 8
  %i.aj = load i8, ptr %i.af, align 1
  %i.ak = zext i8 %i.aj to i16
end_hunk_0
begin_hunk_1_@_ZN2v88internal6String18SlowAsIntegerIndexEPm:bb.a

bb.p:                                             ; preds = %bb.l, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %_ZN2v88internal4Name13EnsureRawHashEv.exit, %_ZN2v88internal21StringCharacterStreamD2Ev.exit
  %.1 = phi i1 [ %i.bi, %_ZN2v88internal21StringCharacterStreamD2Ev.exit ], [ true, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ], [ false, %_ZN2v88internal4Name13EnsureRawHashEv.exit ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal13StringToIndexINS0_21StringCharacterStreamEmLNS0_11ToIndexModeE1EEEbPT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i: ; preds = %bb.b
  %i.m = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.d) ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = tail call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %i.m, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i: ; preds = %bb.c, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, %bb.a
  %i.q = phi ptr [ %.pre, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !9, !noundef !10
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.u, ptr %i.e, align 8
  %i.v = load i8, ptr %i.q, align 1
  %i.w = zext i8 %i.v to i16
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store ptr %i.x, ptr %i.e, align 8
  %i.y = load i16, ptr %i.q, align 2
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

_ZN2v88internal21StringCharacterStream7GetNextEv.exit: ; preds = %bb.e, %bb.f
  %i.z = phi ptr [ %i.u, %bb.e ], [ %i.x, %bb.f ]
  %i.aa = phi i16 [ %i.w, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 48
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN2v88internal21StringCharacterStream7GetNextEv.exit
  store i64 0, ptr %1, align 8
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.h, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i: ; preds = %bb.h
  %i.ah = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = tail call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %i.ah, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.aj) ; 0 uses
  br label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i: ; preds = %bb.i, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i, %bb.h
  %i.al = phi i1 [ false, %bb.i ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit

bb.j:                                             ; preds = %_ZN2v88internal21StringCharacterStream7GetNextEv.exit
  %i.am = zext i16 %i.aa to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.k, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %bb.k
  %i.as = phi ptr [ %i.z, %bb.k ], [ %i.bn, %bb.r ] ; 2 uses
  %.0 = phi i64 [ %i.ap, %bb.k ], [ %i.bu, %bb.r ] ; 2 uses
  %i.at = load ptr, ptr %i.g, align 8
  %.not.i15 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i15, label %bb.m, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.au = load i32, ptr %i.aq, align 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.s, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i17

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i17: ; preds = %bb.m
  %i.aw = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i17
  %i.ay = tail call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %i.aw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.ar) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.pre33 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.pre34 = load ptr, ptr %i.g, align 8
  %i.az = icmp eq ptr %.pre33, %.pre34
  br i1 %i.az, label %bb.n, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread

bb.n:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ba = load i32, ptr %i.aq, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i21

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i21: ; preds = %bb.n
  %i.bc = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i21
  %i.be = tail call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %i.bc, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.ar) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22: ; preds = %bb.o, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i21, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pre35 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread: ; preds = %bb.l, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread
  %i.bf = phi ptr [ %.pre35, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i22 ], [ %.pre33, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread ], [ %i.as, %bb.l ] ; 4 uses
  %i.bg = load i8, ptr %i.r, align 8, !range !9, !noundef !10
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.e, align 8
  %i.bj = load i8, ptr %i.bf, align 1
  %i.bk = zext i8 %i.bj to i16
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit23

bb.q:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit20.thread.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  store ptr %i.bl, ptr %i.e, align 8
  %i.bm = load i16, ptr %i.bf, align 2
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit23

_ZN2v88internal21StringCharacterStream7GetNextEv.exit23: ; preds = %bb.p, %bb.q
  %i.bn = phi ptr [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %i.bo = phi i16 [ %i.bk, %bb.p ], [ %i.bm, %bb.q ]
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.r, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit

bb.r:                                             ; preds = %_ZN2v88internal21StringCharacterStream7GetNextEv.exit23
  %i.bs = mul nuw nsw i64 %.0, 10
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = add nuw nsw i64 %i.bs, %i.bt            ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bu, 9007199254740992
  br i1 %i.bv, label %bb.l, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit, !llvm.loop !330

bb.s:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i17, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  store i64 %.0, ptr %1, align 8
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit: ; preds = %bb.r, %_ZN2v88internal21StringCharacterStream7GetNextEv.exit23, %bb.s, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i, %bb.g, %bb.j
  %.3 = phi i1 [ false, %bb.j ], [ false, %bb.g ], [ %i.al, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread.i ], [ true, %bb.s ], [ false, %_ZN2v88internal21StringCharacterStream7GetNextEv.exit23 ], [ false, %bb.r ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String7PrintOnEP8_IO_FILE(ptr noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !331
  %i.e = load atomic volatile i64, ptr %0 acquire, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = and i16 %i.h, 15
  switch i16 %i.i, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.o = trunc nuw i64 %indvars.iv to i32
  %i.p = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.c, align 8
  %i.r = inttoptr i64 %i.q to ptr                 ; 6 uses
  %i.s = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = and i16 %i.v, 16
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #25, !inline_history !78
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25, !inline_history !78
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.j:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.c, align 8
  %i.al = inttoptr i64 %i.ak to ptr               ; 6 uses
  %i.am = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = and i16 %i.ap, 16
  %.not.i.i5 = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i5, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #25, !inline_history !79
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ax = load ptr, ptr %i.al, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25, !inline_history !79
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i6 = phi ptr [ %i.aw, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i6, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bd = trunc nuw i64 %indvars.iv to i32
  %i.be = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %0, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  %.0.i = phi i16 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.aj, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bc, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.be, %bb.n ], [ %i.bg, %bb.o ]
  %i.bh = load i8, ptr %i.d, align 8, !range !9, !noundef !10
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bk = zext i16 %.0.i to i32
  tail call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.bk) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !334
}

declare void @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String7PrintOnERSo(ptr noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !335
  %i.e = load atomic volatile i64, ptr %0 acquire, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = and i16 %i.h, 15
  switch i16 %i.i, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.o = trunc nuw i64 %indvars.iv to i32
  %i.p = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.c, align 8
  %i.r = inttoptr i64 %i.q to ptr                 ; 6 uses
  %i.s = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = and i16 %i.v, 16
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #25, !inline_history !78
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25, !inline_history !78
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.j:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.c, align 8
  %i.al = inttoptr i64 %i.ak to ptr               ; 6 uses
  %i.am = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = and i16 %i.ap, 16
  %.not.i.i5 = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i5, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #25, !inline_history !79
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ax = load ptr, ptr %i.al, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25, !inline_history !79
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i6 = phi ptr [ %i.aw, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i6, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bd = trunc nuw i64 %indvars.iv to i32
  %i.be = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %0, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  %.0.i = phi i16 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.aj, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bc, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.be, %bb.n ], [ %i.bg, %bb.o ]
  %i.bh = load i8, ptr %i.d, align 8, !range !9, !noundef !10
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bk = trunc i16 %.0.i to i8
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.bk) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !338
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal9SeqString8TruncateEPNS0_7IsolateENS0_6HandleIS1_EEj(ptr noundef %0, ptr readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %_ZN2v88internal9SeqString12ClearPaddingEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %.not = icmp ugt i32 %i.g, %2
  br i1 %.not, label %bb.d, label %_ZN2v88internal9SeqString12ClearPaddingEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp ult i16 %i.k, 128
  br i1 %i.l, label %bb.e, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = and i16 %i.p, -113
  %or.cond = icmp eq i16 %i.q, 8
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %i.g, 23
  %i.s = add i32 %2, 23
  br label %bb.g

_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.e, %bb.d
  %i.t = shl i32 %i.g, 1
  %i.u = add i32 %i.t, 22
  %i.v = shl i32 %2, 1
  %i.w = add i32 %i.v, 22
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread, %bb.f
  %.016.in = phi i32 [ %i.r, %bb.f ], [ %i.u, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread ]
  %.0.in = phi i32 [ %i.s, %bb.f ], [ %i.w, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread ]
  %i.x = and i64 %i.c, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 262144
  %i.aa = and i64 %i.z, 256
  %.not56 = icmp eq i64 %i.aa, 0
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %.0 = and i32 %.0.in, -8
  %.016 = and i32 %.016.in, -8
  tail call void @_ZN2v88internal4Heap22NotifyObjectSizeChangeENS0_6TaggedINS0_10HeapObjectEEEiiNS0_18ClearRecordedSlotsE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ab, i64 %i.c, i32 noundef %.016, i32 noundef %.0, i32 noundef 1) #25
  %.pre = load i64, ptr %1, align 8
  %.pre57 = add i64 %.pre, -1
  %.pre58 = inttoptr i64 %.pre57 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi59 = phi ptr [ %.pre58, %bb.h ], [ %i.e, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre-phi59, i64 12
  store atomic volatile i32 %2, ptr %i.ac release, align 4
  %i.ad = load i64, ptr %1, align 8
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp ult i16 %i.aj, 128
  br i1 %i.ak, label %bb.j, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = and i16 %i.ao, -113
  %or.cond.i.i = icmp eq i16 %i.ap, 8
  br i1 %or.cond.i.i, label %bb.k, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add i32 %i.ar, 23
  br label %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i

_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i: ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = shl i32 %i.au, 1                        ; 2 uses
  %i.aw = add i32 %i.av, 22
  br label %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i

_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i: ; preds = %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i, %bb.k
  %.sink30.i.i = phi i32 [ %i.aw, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i ], [ %i.as, %bb.k ]
  %.sink29.in.i.i = phi i32 [ %i.av, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i ], [ %i.ar, %bb.k ]
  %.sink29.i.i = add i32 %.sink29.in.i.i, 16      ; 3 uses
  %i.ax = and i32 %.sink30.i.i, -8                ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %.sink29.i.i
  br i1 %i.ay, label %_ZN2v88internal9SeqString12ClearPaddingEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i
  %i.az = sub nsw i32 %i.ax, %.sink29.i.i
  %i.ba = sext i32 %.sink29.i.i to i64
  %i.bb = add i64 %i.ae, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = sext i32 %i.az to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.bd, i1 false)
  br label %_ZN2v88internal9SeqString12ClearPaddingEv.exit

_ZN2v88internal9SeqString12ClearPaddingEv.exit:   ; preds = %bb.l, %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i, %bb.c, %bb.b
  %.sroa.030.0 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.c ], [ %1, %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit.i ], [ %1, %bb.l ]
  ret ptr %.sroa.030.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal9SeqString12ClearPaddingEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %bb.b, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = and i16 %i.i, -113
  %or.cond.i = icmp eq i16 %i.j, 8
  br i1 %or.cond.i, label %bb.c, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = add i32 %i.l, 23
  br label %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit

_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i32 %i.o, 1                          ; 2 uses
  %i.q = add i32 %i.p, 22
  br label %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit

_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit: ; preds = %bb.c, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i
  %.sink30.i = phi i32 [ %i.q, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i ], [ %i.m, %bb.c ]
  %.sink29.in.i = phi i32 [ %i.p, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread.i ], [ %i.l, %bb.c ]
  %.sink29.i = add i32 %.sink29.in.i, 16          ; 3 uses
  %i.r = and i32 %.sink30.i, -8                   ; 2 uses
  %i.s = icmp eq i32 %i.r, %.sink29.i
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit
  %i.t = sub nsw i32 %i.r, %.sink29.i
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sext i32 %.sink29.i to i64
  %i.w = add i64 %i.v, %i.u
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = sext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9SeqString22GetDataAndPaddingSizesEv(ptr noundef nonnull align 4 captures(address) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %bb.b, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = and i16 %i.i, -113
  %or.cond = icmp eq i16 %i.j, 8
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = add i32 %i.l, 23
  br label %bb.d

_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i32 %i.o, 1                          ; 2 uses
  %i.q = add i32 %i.p, 22
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread, %bb.c
  %.sink30 = phi i32 [ %i.q, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ %i.m, %bb.c ]
  %.sink29.in = phi i32 [ %i.p, %_ZN2v88internal18IsSeqOneByteStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ %i.l, %bb.c ]
  %.sink29 = add i32 %.sink29.in, 16              ; 2 uses
  %i.r = and i32 %.sink30, -8
  %i.s = sub nsw i32 %i.r, %.sink29
  %.sroa.2.0.insert.ext.i3 = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i4 = shl nuw i64 %.sroa.2.0.insert.ext.i3, 32
  %.sroa.0.0.insert.ext.i5 = zext i32 %.sink29 to i64
  %.sroa.0.0.insert.insert.i6 = or disjoint i64 %.sroa.2.0.insert.shift.i4, %.sroa.0.0.insert.ext.i5
  ret i64 %.sroa.0.0.insert.insert.i6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK2v88internal16SeqOneByteString22GetDataAndPaddingSizesEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add i32 %i.b, 16                         ; 2 uses
  %i.d = add i32 %i.b, 23
  %i.e = and i32 %i.d, -8
  %i.f = sub nsw i32 %i.e, %i.c
  %.sroa.2.0.insert.ext = zext i32 %i.f to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK2v88internal16SeqTwoByteString22GetDataAndPaddingSizesEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = add i32 %i.c, 16                         ; 2 uses
  %i.e = add i32 %i.c, 22
  %i.f = and i32 %i.e, -8
  %i.g = sub nsw i32 %i.f, %i.d
  %.sroa.2.0.insert.ext = zext i32 %i.g to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 captures(address) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.x, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.lcssa, %bb.x ] ; 5 uses
  %.tr141 = phi i32 [ %1, %bb.a ], [ %.010.lcssa, %bb.x ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.s

bb.b:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !339
  %i.k = inttoptr i64 %i.j to ptr                 ; 10 uses
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = and i16 %i.o, 15
  switch i16 %i.p, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = zext i32 %.tr141 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = zext i32 %.tr141 to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.z = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.k, i32 noundef %.tr141, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = inttoptr i64 %i.ab to ptr               ; 6 uses
  %i.ad = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = and i16 %i.ag, 16
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #25, !inline_history !78
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ao = load ptr, ptr %i.ac, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25, !inline_history !78
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ar, %bb.i ]
  %i.as = zext i32 %.tr141 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.j:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, 16
  %.not.i.i13 = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #25, !inline_history !79
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !79
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i14 = phi ptr [ %i.bj, %bb.l ], [ %i.bn, %bb.m ]
  %i.bo = zext i32 %.tr141 to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i14, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.br = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.k, i32 noundef %.tr141, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bs = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.k, i32 noundef %.tr141, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  %.0.i = phi i16 [ %i.u, %bb.c ], [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.av, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bq, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.br, %bb.n ], [ %i.bs, %bb.o ]
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !range !9, !noundef !10
  %i.bv = trunc nuw i8 %i.bu to i1
  store i8 0, ptr %i.bt, align 8
  br i1 %i.bv, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bw = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit12

bb.s:                                             ; preds = %tailrecurse
  %i.bx = load atomic volatile i64, ptr %.tr acquire, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = and i16 %i.ca, -121
  %i.cc = icmp eq i16 %i.cb, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %i.cd = phi ptr [ %.pre-phi138, %bb.u ], [ %.tr, %bb.s ] ; 2 uses
  %.010134 = phi i32 [ %.1, %bb.u ], [ %.tr141, %bb.s ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, %.010134
  br i1 %i.ck, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cl = sub nuw i32 %.010134, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load i64, ptr %i.cm, align 8
  %.pre = add i64 %i.cn, -1
  %.pre137 = inttoptr i64 %.pre to ptr
  br label %bb.u
end_hunk_1
begin_hunk_2_@_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.aq to ptr               ; 6 uses
  %i.as = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  %i.aw = and i16 %i.av, 16
  %.not.i.i2 = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #25, !inline_history !79
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25, !inline_history !79
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i3 = phi ptr [ %i.bc, %bb.k ], [ %i.bg, %bb.l ]
  %i.bh = zext i32 %1 to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i3, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.m:                                             ; preds = %tailrecurse, %tailrecurse
  %i.bk = tail call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.d, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %tailrecurse
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.m
  %.0.i = phi i16 [ %i.n, %bb.b ], [ %i.r, %bb.c ], [ %i.s, %bb.d ], [ %i.ao, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bj, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %bb.m ]
  ret i16 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.i, %tailrecurse.backedge ] ; 2 uses
  %.tr52 = phi i32 [ %1, %bb.a ], [ %i.h, %tailrecurse.backedge ]
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = add i32 %.tr52, %i.g                     ; 7 uses
  %i.i = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.j = load atomic volatile i64, ptr %i.i acquire, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = and i16 %i.m, 15
  switch i16 %i.n, label %bb.n [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.d
    i16 1, label %bb.d
    i16 10, label %bb.e
    i16 2, label %bb.i
    i16 11, label %tailrecurse.backedge
    i16 3, label %tailrecurse.backedge
    i16 13, label %bb.m
    i16 5, label %bb.m
  ]

tailrecurse.backedge:                             ; preds = %tailrecurse, %tailrecurse
  br label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = zext i32 %i.h to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.c:                                             ; preds = %tailrecurse
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = zext i32 %i.h to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.d:                                             ; preds = %tailrecurse, %tailrecurse
  %i.x = tail call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %tailrecurse
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = inttoptr i64 %i.z to ptr                ; 6 uses
  %i.ab = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = and i16 %i.ae, 16
  %.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #25, !inline_history !78
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !78
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = zext i32 %i.h to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.i:                                             ; preds = %tailrecurse
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = inttoptr i64 %i.av to ptr               ; 6 uses
  %i.ax = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = and i16 %i.ba, 16
  %.not.i.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #25, !inline_history !79
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bi = load ptr, ptr %i.aw, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !79
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i3 = phi ptr [ %i.bh, %bb.k ], [ %i.bl, %bb.l ]
  %i.bm = zext i32 %i.h to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i3, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.m:                                             ; preds = %tailrecurse, %tailrecurse
  %i.bp = tail call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.i, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %tailrecurse
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.m
  %.0.i = phi i16 [ %i.s, %bb.b ], [ %i.w, %bb.c ], [ %i.x, %bb.d ], [ %i.at, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bo, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bp, %bb.m ]
  ret i16 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal14ExternalString19ExternalPayloadSizeEv(ptr noundef nonnull align 4 captures(address) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = and i16 %i.d, 8
  %i.f = icmp eq i16 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i1 %i.f to i32
  %i.j = shl i32 %i.h, %i.i
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FlatStringReaderC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 24)) %0, ptr noundef %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11RelocatableE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 59768 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8
  store ptr %0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal16FlatStringReaderE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = ptrtoint ptr %2 to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i64, ptr %2, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %i.g, align 4
  tail call void @_ZN2v88internal16FlatStringReader21PostGarbageCollectionEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FlatStringReader21PostGarbageCollectionEv(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %2 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 8 uses
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8, !noalias !348
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2, !noalias !348
  %i.i = and i16 %i.h, 15
  switch i16 %i.i, label %bb.l [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.m
    i16 1, label %bb.m
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 11, label %bb.m
    i16 3, label %bb.m
    i16 13, label %bb.m
    i16 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !353
  %i.n = inttoptr i64 %i.m to ptr                 ; 6 uses
  %i.o = load atomic volatile i64, ptr %i.d monotonic, align 8, !noalias !353
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2, !noalias !353
  %i.s = and i16 %i.r, 16
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !noalias !353
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !353
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #25, !noalias !353, !inline_history !49
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25, !noalias !353
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !353
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.n, align 8, !noalias !353
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !353
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25, !noalias !353, !inline_history !49
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !358
  %i.af = inttoptr i64 %i.ae to ptr               ; 6 uses
  %i.ag = load atomic volatile i64, ptr %i.d monotonic, align 8, !noalias !358
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2, !noalias !358
  %i.ak = and i16 %i.aj, 16
  %.not.i1 = icmp eq i16 %i.ak, 0
  br i1 %.not.i1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !noalias !358
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !358
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #25, !noalias !358, !inline_history !53
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #25, !noalias !358
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !358
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !358
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !358
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #25, !noalias !358, !inline_history !53
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26, !noalias !361
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.j, %bb.f, %bb.k, %bb.g, %bb.c, %bb.b
  %.sroa.011.sroa.0.0.ph = phi ptr [ %i.aq, %bb.j ], [ %i.y, %bb.f ], [ %i.au, %bb.k ], [ %i.ac, %bb.g ], [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.011.sroa.8.0.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.f ], [ 2, %bb.k ], [ 1, %bb.g ], [ 2, %bb.c ], [ 1, %bb.b ]
  store ptr %.sroa.011.sroa.0.0.ph, ptr %2, align 8
  %.sroa.011.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.011.sroa.8.0.ph, ptr %.sroa.011.sroa.8.0..sroa_idx60, align 4
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %2, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull align 8 poison)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.m, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = zext i1 %i.ax to i8
  store i8 %i.az, ptr %i.ay, align 8
  %.sink = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal18ConsStringIterator10InitializeENS0_6TaggedINS0_10ConsStringEEEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(276) initializes((256, 276)) %0, i64 %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 33, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 captures(none) dereferenceable(276) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp eq i32 %i.f, 32                     ; 2 uses
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %i.a, align 1
end_hunk_2
