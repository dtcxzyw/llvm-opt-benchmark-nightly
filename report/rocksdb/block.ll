Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block?download=true
inline.NumInlined: 1466
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7rocksdb5Block19GetCorruptionStatusEv:bb.a
  store i8 0, ptr %i.r, align 1, !tbaa !202
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  store ptr null, ptr %i.u, align 8, !tbaa !81
  store ptr %i.v, ptr %i.m, align 8, !tbaa !81
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr @.str.1, ptr %7, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 27, ptr %i.w, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr @.str.6, ptr %8, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !33
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.g

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5, label %_ZN7rocksdb6StatusD2Ev.exit7, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i6

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.d, %bb.e, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i6: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit7

_ZN7rocksdb6StatusD2Ev.exit7:                     ; preds = %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb5BlockC2EONS_13BlockContentsEmPNS_10StatisticsEj(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %6 = alloca %"struct.rocksdb::DataBlockFooter", align 4 ; 10 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  store ptr @.str.6, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false), !tbaa.struct !133
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  store ptr null, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb13BlockContentsC2EOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZN7rocksdb13BlockContentsC2EOS0_.exit

_ZN7rocksdb13BlockContentsC2EOS0_.exit:           ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !277
  store i64 %i.k, ptr %i.i, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7rocksdb18SharedCleanablePtraSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.l) #22 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !203
  store i64 %i.o, ptr %i.g, align 8, !tbaa !203
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  store i32 %4, ptr %i.t, align 4, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.u, align 8, !tbaa !205
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  store i16 0, ptr %i.v, align 2, !tbaa !206
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.x = load ptr, ptr %0, align 8, !tbaa !32
  %i.y = load i64, ptr %i.b, align 8, !tbaa !82
  store ptr %i.x, ptr %5, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i8 0, ptr %6, align 4, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN7rocksdb15DataBlockFooter10DecodeFromEPNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 4 dereferenceable(13) %6, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7rocksdb13BlockContentsC2EOS0_.exit
  %i.ac = load i8, ptr %7, align 8, !tbaa !167
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !82
  %i.af = trunc i64 %i.ae to i32
  br label %.thread44.sink.split.sink.split

bb.e:                                             ; preds = %_ZN7rocksdb13BlockContentsC2EOS0_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit32

bb.f:                                             ; preds = %.thread48
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !278
  store i32 %i.aj, ptr %i.q, align 4, !tbaa !208
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !279, !range !84, !noundef !85
  store i8 %i.al, ptr %i.r, align 8, !tbaa !209
  %i.am = load i8, ptr %6, align 4, !tbaa !172
  switch i8 %i.am, label %.thread44.sink.split [
    i8 0, label %bb.n
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.an = load ptr, ptr %0, align 8, !tbaa !32
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ap = invoke noundef zeroext i1 @_ZN7rocksdb18DataBlockHashIndex10InitializeEPKcmPt(ptr noundef nonnull align 2 dereferenceable(2) %i.v, ptr noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.b, align 8, !tbaa !82
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.w

bb.l:                                             ; preds = %bb.i
  %i.ar = load i16, ptr %i.a, align 2, !tbaa !280
  %i.as = zext i16 %i.ar to i64
  store i64 %i.as, ptr %i.z, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %.pr = load i64, ptr %i.b, align 8, !tbaa !82
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %.thread44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.au = load i32, ptr %i.q, align 4, !tbaa !208
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %i.ax = icmp ult i64 %i.at, %i.aw
  br i1 %i.ax, label %.thread44.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %8 = sub nuw i64 %i.at, %i.aw
  %i.ay = trunc i64 %8 to i32
  store i32 %i.ay, ptr %i.p, align 8, !tbaa !199
  %i.az = load i8, ptr %i.aa, align 1, !range !84
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.q, label %.thread44

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %i.ab, align 4, !tbaa !281 ; 2 uses
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !199
  %i.bd = icmp ugt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.thread44.sink.split.sink.split, label %.thread46

.thread44.sink.split.sink.split:                  ; preds = %bb.q, %bb.d
  %.sink = phi i32 [ %i.af, %bb.d ], [ 0, %bb.q ]
  store i32 %.sink, ptr %i.p, align 8, !tbaa !199
  br label %.thread44.sink.split

.thread44.sink.split:                             ; preds = %.thread44.sink.split.sink.split, %bb.o, %bb.g
  store i64 0, ptr %i.b, align 8, !tbaa !82
  br label %.thread44

.thread44:                                        ; preds = %.thread44.sink.split, %bb.n, %bb.p
  %.not26 = phi i1 [ false, %bb.p ], [ true, %bb.n ], [ true, %.thread44.sink.split ]
  %i.be = icmp eq i64 %2, 0
  %i.bf = icmp eq ptr %3, null
  %or.cond4.not53 = or i1 %i.be, %i.bf
  %or.cond50 = or i1 %or.cond4.not53, %.not26
  br i1 %or.cond50, label %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit, label %.thread48

.thread46:                                        ; preds = %bb.q
  %i.bg = load ptr, ptr %0, align 8, !tbaa !32
  %i.bh = zext i32 %i.bb to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !207
  %i.bj = icmp ne i64 %2, 0
  %i.bk = icmp ne ptr %3, null
  %or.cond447 = and i1 %i.bj, %i.bk
  br i1 %or.cond447, label %.thread48, label %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit

.thread48:                                        ; preds = %.thread44, %.thread46
  %i.bl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.r unwind label %bb.f       ; 3 uses

bb.r:                                             ; preds = %.thread48
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !199
  %i.bn = zext i32 %i.bm to i64
  invoke void @_ZN7rocksdb18BlockReadAmpBitmapC2EmmPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(36) %i.bl, i64 noundef %i.bn, i64 noundef %2, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !197 ; 3 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !146 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNKSt14default_deleteIN7rocksdb18BlockReadAmpBitmapEEclEPS1_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #24
  br label %_ZNKSt14default_deleteIN7rocksdb18BlockReadAmpBitmapEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb18BlockReadAmpBitmapEEclEPS1_.exit.i.i: ; preds = %bb.u, %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 40) #24
  br label %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit

bb.v:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 40) #24
  br label %bb.w

_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %.thread46, %_ZNKSt14default_deleteIN7rocksdb18BlockReadAmpBitmapEEclEPS1_.exit.i.i, %bb.s, %.thread44
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !81 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i29, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.w:                                             ; preds = %bb.v, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.ah, %bb.f ], [ %i.aq, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i30, label %_ZN7rocksdb6StatusD2Ev.exit32, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit32

_ZN7rocksdb6StatusD2Ev.exit32:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31, %bb.w, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %.pn, %bb.w ], [ %.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt10unique_ptrIN7rocksdb18BlockReadAmpBitmapESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #22
  call void @_ZN7rocksdb13BlockContentsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZN7rocksdb18DataBlockHashIndex10InitializeEPKcmPt(ptr noundef nonnull align 2 dereferenceable(2), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb18BlockReadAmpBitmapC2EmmPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 4, ptr %0, align 8, !tbaa !286
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 32, ptr %i.a, align 4, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i8 0, ptr %i.c, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !287
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() ; 2 uses
  %i.g = trunc i64 %2 to i32
  %i.h = load i32, ptr %i.f, align 4, !tbaa !289
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 16807              ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = and i64 %i.j, 2147483647
  %i.m = add nuw nsw i64 %i.k, %i.l
  %i.n = trunc nuw i64 %i.m to i32                ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  %i.p = add i32 %i.n, -2147483647
  %spec.select.i.i = select i1 %i.o, i32 %i.p, i32 %i.n ; 2 uses
  store i32 %spec.select.i.i, ptr %i.f, align 4, !tbaa !289
  %i.q = urem i32 %spec.select.i.i, %i.g
  store i32 %i.q, ptr %i.e, align 8, !tbaa !144
  %i.r = lshr i64 %2, 1                           ; 2 uses
  %.not9 = icmp eq i64 %i.r, 0
  %.pre = load i8, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  br i1 %.not9, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i8
  %reass.sub = sub i8 %.pre, %i.t
  %i.u = add i8 %reass.sub, 64                    ; 2 uses
  store i8 %i.u, ptr %i.c, align 8, !tbaa !143
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.v = phi i8 [ %i.u, %.lr.ph ], [ %.pre, %bb.a ]
  %i.w = add i64 %1, -1
  %i.x = zext nneg i8 %i.v to i64
  %i.y = lshr i64 %i.w, %i.x
  %i.z = load i32, ptr %i.a, align 4, !tbaa !145
  %i.aa = zext i32 %i.z to i64
  %i.ab = udiv i64 %i.y, %i.aa                    ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 4611686018427387903
  %i.ae = shl i64 %i.ac, 2
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #23 ; 7 uses
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ac
  %i.aj = and i64 %i.ab, 4611686018427387903      ; 3 uses
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp samesign ult i64 %i.aj, 31
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.ak, 24
  %n.vec = and i64 %i.ak, 9223372036854775776     ; 4 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ao ; 4 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 32
  %i.aq = getelementptr i8, ptr %next.gep, i64 64
  %i.ar = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !291
  store <8 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !291
  store <8 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !291
end_hunk_0
