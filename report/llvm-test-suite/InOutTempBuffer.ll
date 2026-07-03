inline.NumInlined: 23
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16CInOutTempBuffer5WriteEPKvj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i32 1048576, %i.b
  %i.e = tail call noundef i32 @llvm.umin.i32(i32 %i.d, i32 %2) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = zext nneg i32 %i.e to i64                ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = tail call i32 @CrcUpdate(i32 noundef %i.l, ptr noundef %1, i64 noundef %i.j)
  store i32 %i.m, ptr %i.k, align 8, !tbaa !35
  %i.n = load i32, ptr %i.a, align 8, !tbaa !32
  %i.o = add i32 %i.n, %i.e
  store i32 %i.o, ptr %i.a, align 8, !tbaa !32
  %i.p = sub i32 %2, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %i.r, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i32 [ %i.p, %bb.b ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ]
  %i.u = tail call noundef zeroext i1 @_ZN16CInOutTempBuffer11WriteToFileEPKvj(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef %.0, i32 noundef %.013)
  ret i1 %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN16CInOutTempBuffer13WriteToStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.NWindows::NFile::NIO::CInFile", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr noundef nonnull align 8 dereferenceable(1084) %i.b)
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = zext i32 %i.e to i64
  %i.i = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %1, ptr noundef %i.g, i64 noundef %i.h) ; 2 uses
  %.not44 = icmp eq i32 %i.i, 0
  br i1 %.not44, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.k = load i32, ptr %i.d, align 8, !tbaa !32
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i32 @CrcUpdate(i32 noundef -1, ptr noundef %i.j, i64 noundef %i.l)
  %i.n = load i32, ptr %i.d, align 8, !tbaa !32
  %i.o = zext i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.036 = phi i32 [ %i.m, %bb.d ], [ -1, %bb.b ]  ; 3 uses
  %.030 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.b ]   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.q = load i8, ptr %i.p, align 8, !tbaa !33, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.v, align 8
  %i.w = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #13 ; 2 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !25
  store i8 0, ptr %i.w, align 1, !tbaa !26
  store i32 4, ptr %i.u, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO7CInFileE, i64 16), ptr %2, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %2, ptr noundef %i.y, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = icmp ult i64 %.030, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.thread61

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %.13178 = phi i64 [ %.030, %.lr.ph ], [ %i.au, %bb.q ] ; 2 uses
  %.13777 = phi i32 [ %.036, %.lr.ph ], [ %i.ar, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.ag = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile8ReadPartEPvjRj(ptr noundef nonnull align 8 dereferenceable(1084) %2, ptr noundef %i.af, i32 noundef 1048576, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ag, label %bb.l, label %.thread

bb.k:                                             ; preds = %bb.p, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.al = zext i32 %i.ai to i64
  %i.am = invoke noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %1, ptr noundef %i.ak, i64 noundef %i.al)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %bb.p, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = invoke i32 @CrcUpdate(i32 noundef %.13777, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %bb.q unwind label %bb.k       ; 2 uses

.thread:                                          ; preds = %bb.j, %bb.n
  %.4.ph = phi i32 [ %i.am, %bb.n ], [ -2147467259, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.as = load i32, ptr %i.a, align 4, !tbaa !4
  %i.at = zext i32 %i.as to i64
  %i.au = add i64 %.13178, %i.at                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.thread61

bb.r:                                             ; preds = %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.u

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread61

.thread61:                                        ; preds = %bb.q, %.preheader, %bb.s
  %.13776 = phi i32 [ %.13777, %bb.s ], [ %.036, %.preheader ], [ %i.ar, %bb.q ]
  %.13171 = phi i64 [ %.13178, %bb.s ], [ %.030, %.preheader ], [ %i.au, %bb.q ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.v

bb.t:                                             ; preds = %.thread, %bb.g
  %.6 = phi i32 [ %.4.ph, %.thread ], [ -2147467259, %bb.g ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ae, %bb.h ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn.pn

bb.v:                                             ; preds = %.thread61, %bb.e
  %.541 = phi i32 [ %.13776, %.thread61 ], [ %.036, %bb.e ]
  %.535 = phi i64 [ %.13171, %.thread61 ], [ %.030, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !35
  %i.az = icmp eq i32 %i.ay, %.541
  br i1 %i.az, label %3, label %bb.w

3:                                                ; preds = %bb.v
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %5 = load i64, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i64 %.535, %5
  %7 = select i1 %6, i32 0, i32 -2147467259
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.c, %3, %bb.v, %bb.a
  %.8 = phi i32 [ -2147467259, %bb.a ], [ %i.i, %bb.c ], [ %.6, %bb.t ], [ -2147467259, %bb.v ], [ %7, %3 ]
  ret i32 %.8
}

declare noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr noundef nonnull align 8 dereferenceable(1084)) unnamed_addr #6

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb(ptr noundef nonnull align 8 dereferenceable(1084), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile8ReadPartEPvjRj(ptr noundef nonnull align 8 dereferenceable(1084), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(1084) dereferenceable(1084)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467259, 1) i32 @_ZN27CSequentialOutTempBufferImp5WriteEPKvjPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1120 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = icmp ult i32 %i.d, 1048576
  br i1 %i.e, label %bb.b, label %_ZN16CInOutTempBuffer5WriteEPKvj.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i32 1048576, %i.d
  %i.g = tail call noundef i32 @llvm.umin.i32(i32 %i.f, i32 %2) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = zext nneg i32 %i.g to i64                ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1160 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = tail call i32 @CrcUpdate(i32 noundef %i.n, ptr noundef %1, i64 noundef %i.l)
  store i32 %i.o, ptr %i.m, align 8, !tbaa !35
  %i.p = load i32, ptr %i.c, align 8, !tbaa !32
  %i.q = add i32 %i.p, %i.g
  store i32 %i.q, ptr %i.c, align 8, !tbaa !32
  %i.r = sub i32 %2, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1152 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = add i64 %i.u, %i.l
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  br label %_ZN16CInOutTempBuffer5WriteEPKvj.exit

_ZN16CInOutTempBuffer5WriteEPKvj.exit:            ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.r, %bb.b ], [ %2, %bb.a ]
  %.0.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ]
  %i.w = tail call noundef zeroext i1 @_ZN16CInOutTempBuffer11WriteToFileEPKvj(ptr noundef nonnull align 8 dereferenceable(1164) %i.b, ptr noundef %.0.i, i32 noundef %.013.i) ; 2 uses
  %.not9 = icmp eq ptr %3, null
  br i1 %.not9, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %_ZN16CInOutTempBuffer5WriteEPKvj.exit
  %.12 = select i1 %i.w, i32 %2, i32 0
  store i32 %.12, ptr %3, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %_ZN16CInOutTempBuffer5WriteEPKvj.exit, %.sink.split
  %. = select i1 %i.w, i32 0, i32 -2147467259
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN27CSequentialOutTempBufferImp14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !26
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !26
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !26
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !26
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !26
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !26
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !26
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !26
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !26
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !26
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !26
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !26
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !26
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !26
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !26
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !26
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !26
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !26
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !26
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !26
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !26
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !26
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !26
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !26
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !26
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %bb.p, label %_ZeqRK4GUIDS1_.exit.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit
  store ptr %0, ptr %2, align 8, !tbaa !44
  %i.av = load ptr, ptr %0, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit, %bb.p
  %.0 = phi i32 [ 0, %bb.p ], [ -2147467262, %_ZeqRK4GUIDS1_.exit ], [ -2147467262, %bb.a ], [ -2147467262, %bb.i ], [ -2147467262, %bb.b ], [ -2147467262, %bb.c ], [ -2147467262, %bb.k ], [ -2147467262, %bb.d ], [ -2147467262, %bb.o ], [ -2147467262, %bb.e ], [ -2147467262, %bb.j ], [ -2147467262, %bb.f ], [ -2147467262, %bb.n ], [ -2147467262, %bb.g ], [ -2147467262, %bb.l ], [ -2147467262, %bb.h ], [ -2147467262, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN27CSequentialOutTempBufferImp6AddRefEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !45
  ret i32 %i.c
}
end_hunk_0
