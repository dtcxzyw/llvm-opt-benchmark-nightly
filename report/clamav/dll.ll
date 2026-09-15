Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/dll?download=true
inline.NumInlined: 45
inline.NumDeleted: 25
begin_hunk_0_@RARReadHeaderEx:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 10360
  store i32 %i.dx, ptr %i.dy, align 1, !tbaa !182
  br label %.thread

bb.au:                                            ; preds = %bb.q, %bb.w, %bb.ak, %bb.al, %bb.aj, %bb.j
  %.pn122 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.ai, %bb.q ], [ %i.aw, %bb.w ], [ %i.dh, %bb.aj ], [ %i.dj, %bb.al ], [ %i.di, %bb.ak ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn122, 1
  %i.dz = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI8RAR_EXIT) #16
  %i.ea = icmp eq i32 %.3, %i.dz
  br i1 %i.ea, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %.3109 = extractvalue { ptr, i32 } %.pn122, 0
  %i.eb = tail call ptr @__cxa_begin_catch(ptr %.3109) #16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 83424
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !34 ; 2 uses
  %.not124 = icmp eq i32 %i.ed, 0
  br i1 %.not124, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !109
  %i.ef = tail call fastcc noundef i32 @_ZL13RarErrorToDll8RAR_EXIT(i32 noundef %i.ee)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.eg = phi i32 [ %i.ef, %bb.aw ], [ %i.ed, %bb.av ]
  tail call void @__cxa_end_catch() #16
  br label %.thread

.thread:                                          ; preds = %bb.p, %RARProcessFile.exit, %bb.at, %bb.l, %bb.k, %bb.g, %bb.i, %bb.ax
  %.2112 = phi i32 [ 12, %bb.k ], [ %i.eg, %bb.ax ], [ %i.r, %bb.i ], [ 15, %bb.g ], [ %., %bb.l ], [ 0, %bb.at ], [ %i.af, %RARProcessFile.exit ], [ %i.ah, %bb.p ]
  ret i32 %.2112

bb.ay:                                            ; preds = %bb.au
  resume { ptr, i32 } %.pn122
}

declare noundef i64 @_ZN7Archive11SearchBlockE11HEADER_TYPE(ptr noundef nonnull align 8 dereferenceable(57108), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z12MergeArchiveR7ArchiveP11ComprDataIObw(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef, i1 noundef zeroext, i32 noundef signext) local_unnamed_addr #3

declare void @_ZN7Archive4SeekEli(ptr noundef nonnull align 8 dereferenceable(57108), i64 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @RARProcessFile(ptr noundef initializes((83424, 83428)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z11ProcessFilePviPcS0_PwS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN7RarTime6GetDosEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11ProcessFilePviPcS0_PwS1_(ptr noundef initializes((83424, 83428)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = alloca [2048 x i8], align 16             ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 83424 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 174816
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 2
  %i.i = icmp eq i32 %1, 0
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100904 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 149749
  %i.l = load i8, ptr %i.k, align 1, !tbaa !101, !range !102, !noundef !103
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 111980
  %i.o = load i32, ptr %i.n, align 4, !tbaa !114
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 123233
  %i.r = load i8, ptr %i.q, align 1, !tbaa !184, !range !102, !noundef !103
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef zeroext i1 @_Z12MergeArchiveR7ArchiveP11ComprDataIObw(ptr noundef nonnull align 8 dereferenceable(57108) %i.j, ptr noundef null, i1 noundef zeroext false, i32 noundef signext 76)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 149728
  %i.v = load i64, ptr %i.u, align 8, !tbaa !115
  invoke void @_ZN7Archive4SeekEli(ptr noundef nonnull align 8 dereferenceable(57108) %i.j, i64 noundef %i.v, i32 noundef 0)
          to label %bb.ar unwind label %bb.i

bb.i:                                             ; preds = %bb.aa, %bb.z, %bb.x, %bb.w, %bb.j, %bb.h, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI8RAR_EXIT
  br label %bb.aj

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c
  invoke void @_ZN7Archive10SeekToNextEv(ptr noundef nonnull align 8 dereferenceable(57108) %i.j)
          to label %bb.aq unwind label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 83420
  store i32 %1, ptr %i.x, align 4, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16416 ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 75228 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !105
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  invoke void @_Z8strncpyzPcPKcm(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef 2046)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aa = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, i64 noundef 2048)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.y, i64 noundef 2048)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI8RAR_EXIT
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aj

bb.q:                                             ; preds = %bb.o, %bb.k
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  invoke void @_Z8strncpyzPcPKcm(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i64 noundef 2046)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ac = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.z, i64 noundef 2048)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI8RAR_EXIT
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.aj

bb.v:                                             ; preds = %bb.t, %bb.q
  %.not66 = icmp eq ptr %4, null
  br i1 %.not66, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.y, ptr noundef nonnull %4, i64 noundef 2048)
          to label %bb.x unwind label %bb.i

bb.x:                                             ; preds = %bb.w
  invoke void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.y, i64 noundef 2048)
          to label %bb.y unwind label %bb.i

bb.y:                                             ; preds = %bb.x, %bb.v
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.z, ptr noundef nonnull %5, i64 noundef 2048)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 83476
  %6 = icmp eq i32 %1, 2
  %.str.1..str.2 = select i1 %6, ptr @.str.1, ptr @.str.2
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.ae, ptr noundef nonnull %.str.1..str.2, i64 noundef 2064)
          to label %bb.ab unwind label %bb.i

bb.ab:                                            ; preds = %bb.aa
  %7 = icmp ne i32 %1, 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 58617
  %i.ag = zext i1 %7 to i8
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 0, ptr %i.c, align 1, !tbaa !187
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 158016 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100904 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 174820 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !113
  %i.al = sext i32 %i.ak to i64
  %i.am = invoke noundef zeroext i1 @_ZN10CmdExtract18ExtractCurrentFileER7ArchivemRb(ptr noundef nonnull align 8 dereferenceable(16800) %i.ah, ptr noundef nonnull align 8 dereferenceable(57108) %i.ai, i64 noundef %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %.preheader unwind label %.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.ab
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 100912
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 111980
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ah
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !188
  %.not71 = icmp eq i64 %i.ap, -1
  br i1 %.not71, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = invoke noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108) %i.ai)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.not68 = icmp eq i64 %i.aq, 0
  br i1 %.not68, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !114
  %i.as = icmp eq i32 %i.ar, 3
  br i1 %i.as, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.at = load i32, ptr %i.aj, align 4, !tbaa !113
  %i.au = sext i32 %i.at to i64
  %i.av = invoke noundef zeroext i1 @_ZN10CmdExtract18ExtractCurrentFileER7ArchivemRb(ptr noundef nonnull align 8 dereferenceable(16800) %i.ah, ptr noundef nonnull align 8 dereferenceable(57108) %i.ai, i64 noundef %i.au, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ah unwind label %.loopexit ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7Archive10SeekToNextEv(ptr noundef nonnull align 8 dereferenceable(57108) %i.ai)
          to label %bb.ac unwind label %.loopexit, !llvm.loop !183

.loopexit:                                        ; preds = %bb.ad, %bb.ag, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI8RAR_EXIT
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.ab, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI8RAR_EXIT
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.u, %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %lpad.phi, %bb.ai ], [ %i.ad, %bb.u ], [ %i.ab, %bb.p ] ; 3 uses
  %.056 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  %.057 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %i.aw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #16
  %i.ax = icmp eq i32 %.056, %i.aw
  br i1 %i.ax, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ay = call ptr @__cxa_begin_catch(ptr %.057) #16 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI8RAR_EXIT) #16
  %i.ba = icmp eq i32 %.056, %i.az
  br i1 %i.ba, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.bb = call ptr @__cxa_begin_catch(ptr %.057) #16
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %.not70 = icmp eq i32 %i.bc, 0
  br i1 %.not70, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !109
  %i.be = call fastcc noundef i32 @_ZL13RarErrorToDll8RAR_EXIT(i32 noundef %i.bd)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.bf = phi i32 [ %i.be, %bb.an ], [ %i.bc, %bb.am ]
  call void @__cxa_end_catch() #16
  br label %bb.ar

.critedge:                                        ; preds = %bb.ae, %bb.ac, %bb.af
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 149728
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !115
  invoke void @_ZN7Archive4SeekEli(ptr noundef nonnull align 8 dereferenceable(57108) %i.ai, i64 noundef %i.bh, i32 noundef 0)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.j
  %i.bi = load i32, ptr %i.d, align 8, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %bb.h, %bb.aq, %bb.ao, %bb.ak
  %.0 = phi i32 [ %i.bi, %bb.aq ], [ 11, %bb.ak ], [ %i.bf, %bb.ao ], [ 0, %bb.h ], [ 15, %bb.g ]
  ret i32 %.0

bb.as:                                            ; preds = %bb.al
  resume { ptr, i32 } %.pn
}

declare void @_ZN7Archive10SeekToNextEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #3

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z11AddEndSlashPwm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN10CmdExtract18ExtractCurrentFileER7ArchivemRb(ptr noundef nonnull align 8 dereferenceable(16800), ptr noundef nonnull align 8 dereferenceable(57108), i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @RARProcessFileW(ptr noundef initializes((83424, 83428)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z11ProcessFilePviPcS0_PwS1_(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @RARSetChangeVolProc(ptr nofree noundef writeonly captures(none) initializes((83448, 83456)) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 83448
  store ptr %1, ptr %i.a, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @RARSetCallback(ptr nofree noundef writeonly captures(none) initializes((83432, 83448)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 83440
  store ptr %1, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 83432
  store i64 %2, ptr %i.b, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @RARSetProcessDataProc(ptr nofree noundef writeonly captures(none) initializes((83456, 83464)) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 83456
  store ptr %1, ptr %i.a, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define void @RARSetPassword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call noundef ptr @_Z11GetWideNamePKcPKwPwm(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 512) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100848
  call void @_ZN11SecPassword3SetEPKw(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull %i.a)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @_ZN11SecPassword3SetEPKw(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #3

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @RARGetDllVersion() local_unnamed_addr #7 {
bb.a:
  ret i32 8
}

declare void @_ZN11CommandDataC1Ev(ptr noundef nonnull align 8 dereferenceable(100904)) unnamed_addr #3

declare void @_ZN7ArchiveC1EP11CommandData(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef) unnamed_addr #3

declare void @_ZN10CmdExtractC1EP11CommandData(ptr noundef nonnull align 8 dereferenceable(16800), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11CommandDataD2Ev(ptr noundef nonnull align 8 dead_on_return(100904) dereferenceable(100904) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
end_hunk_0
