begin_hunk_0

.critedge.i:                                      ; preds = %bb.n, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit24, %bb.m, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit22
  store i32 9, ptr %i.r, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.o:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit24
  %i.br = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
end_hunk_0
begin_hunk_1

bb.q:                                             ; preds = %bb.p
  store i32 9, ptr %i.r, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bw = shl nuw nsw i32 %i.ax, 10
end_hunk_1
begin_hunk_2

bb.s:                                             ; preds = %bb.l
  store i32 9, ptr %i.r, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.t:                                             ; preds = %bb.r, %bb.k
  %.1.i = phi i32 [ %i.by, %bb.r ], [ %i.ax, %bb.k ]
end_hunk_2
begin_hunk_3

.thread:                                          ; preds = %bb.f, %bb.i
  store i32 10, ptr %i.r, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.u:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %i.bz = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
end_hunk_3
begin_hunk_4
  %i.cl = load i64, ptr %1, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 11, ptr %i.cm, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.y:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %1, align 8, !tbaa !42
  store i32 12, ptr %i.r, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.z:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 3 uses
end_hunk_4
begin_hunk_5
  store ptr %i.dv, ptr %i.ds, align 8, !tbaa !95
  br label %.critedge

.critedge.sink.split:                             ; preds = %.critedge.i, %bb.q, %bb.s, %bb.y, %.thread, %.thread42
  %.sink = phi i64 [ %i.cl, %.thread42 ], [ %i.w, %.thread ], [ %i.cn, %bb.y ], [ %i.w, %bb.s ], [ %i.w, %bb.q ], [ %i.w, %.critedge.i ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink, ptr %5, align 8, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.o, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit, %.critedge.sink.split, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}
end_hunk_5
begin_hunk_6
  %.sroa.107.18 = phi i32 [ %i.yx, %bb.ey ], [ %i.aeb, %_ZN5arrow4json17MultiStringStream4TakeEv.exit377 ] ; 3 uses
  %.179 = phi i32 [ %.0.i339, %bb.ey ], [ %i.aes, %_ZN5arrow4json17MultiStringStream4TakeEv.exit377 ]
  %i.acx = icmp eq ptr %i.acw, %i.acv
  br i1 %i.acx, label %.critedge135, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit364

_ZNK5arrow4json17MultiStringStream4PeekEv.exit364: ; preds = %bb.ez
  %i.acy = getelementptr inbounds i8, ptr %i.acw, i64 -8
end_hunk_6
begin_hunk_7
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !37 ; 2 uses
  %i.adb = add i8 %i.ada, -48
  %or.cond1048 = icmp ult i8 %i.adb, 10
  br i1 %or.cond1048, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit368, label %.critedge135, !prof !112

_ZNK5arrow4json17MultiStringStream4PeekEv.exit368: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit364
  %i.adc = mul nsw i32 %.179, 10
end_hunk_7
begin_hunk_8
  br label %bb.fq

.critedge135:                                     ; preds = %bb.ez, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit364, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit343, %.critedge137, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162, %bb.cn, %.critedge125, %.critedge130.thread925, %.critedge130, %bb.ek, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit313
  %.sroa.107.19 = phi i32 [ %.sroa.107.15692, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit343 ], [ %.sroa.107.12923, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit313 ], [ %.sroa.107.7, %.critedge125 ], [ %i.yx, %bb.ek ], [ %.sroa.107.12.ph, %.critedge130 ], [ %.sroa.107.9, %bb.cn ], [ %i.acj, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162 ], [ %.sroa.107.11911, %.critedge130.thread925 ], [ %.sroa.107.17, %.critedge137 ], [ %.sroa.107.18, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit364 ], [ %.sroa.107.18, %bb.ez ] ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !94
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
end_hunk_8
begin_hunk_9

.critedge.i:                                      ; preds = %bb.h, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22, %bb.g, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit20
  store i32 9, ptr %i.j, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.i:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 2
end_hunk_9
begin_hunk_10

bb.k:                                             ; preds = %bb.j
  store i32 9, ptr %i.j, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bk = shl nuw nsw i32 %i.ap, 10
end_hunk_10
begin_hunk_11

bb.m:                                             ; preds = %bb.f
  store i32 9, ptr %i.j, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.l, %bb.e
  %.1.i = phi i32 [ %i.bm, %bb.l ], [ %i.ap, %bb.e ]
end_hunk_11
begin_hunk_12

.thread27:                                        ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit16, %bb.d
  store i32 10, ptr %i.j, align 8, !tbaa !59
  br label %.critedge.sink.split

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 1
end_hunk_12
begin_hunk_13
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 11, ptr %i.cg, align 8, !tbaa !59
  br label %.critedge.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_13
begin_hunk_14
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  store i32 12, ptr %i.j, align 8, !tbaa !59
  br label %.critedge.sink.split

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25: ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 1
end_hunk_14
begin_hunk_15
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !95
  br label %.critedge

.critedge.sink.split:                             ; preds = %.critedge.i, %bb.k, %bb.m, %bb.r, %.thread27, %.thread32
  %.sink = phi i64 [ %i.cf, %.thread32 ], [ %i.s, %.thread27 ], [ %i.cl, %bb.r ], [ %i.s, %bb.m ], [ %i.s, %bb.k ], [ %i.s, %.critedge.i ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink, ptr %5, align 8, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit19, %bb.i, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit, %.critedge.sink.split, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}
end_hunk_15
begin_hunk_16
  %i.zf = load i8, ptr %i.zd, align 1, !tbaa !37  ; 2 uses
  %i.zg = add i8 %i.zf, -48
  %or.cond872 = icmp ult i8 %i.zg, 10
  br i1 %or.cond872, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit280, label %.critedge135, !prof !112

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit280: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit278
  %i.zh = mul nsw i32 %.179, 10
end_hunk_16
begin_hunk_17
  br label %bb.dp

.critedge135:                                     ; preds = %bb.db, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit278, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit264, %.critedge137, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit226._crit_edge, %.critedge125, %.critedge130, %bb.co, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit251.a
  %.sroa.107.19 = phi i32 [ %.sroa.107.15558, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit264 ], [ %.sroa.107.12768, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit251.a ], [ %.sroa.107.12.ph, %.critedge130 ], [ %i.vo, %bb.co ], [ %.sroa.107.8.lcssa.ph, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit226._crit_edge ], [ %.sroa.107.7, %.critedge125 ], [ %.sroa.107.17, %.critedge137 ], [ %.sroa.107.18, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit278 ], [ %.sroa.107.18, %bb.db ] ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !94
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
end_hunk_17
begin_hunk_18
!153 = !{!"branch_weights", i32 0, i32 -2147483648, i32 0}
!154 = distinct !{!154, !86}
!155 = distinct !{!155, !86}
!156 = !{!"branch_weights", !"expected", i32 1073741, i32 2146409907}
!157 = distinct !{!157, !86}
!158 = distinct !{!158, !86}
!159 = distinct !{!159, !86}
end_hunk_18
