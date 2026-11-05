Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/symbolize?download=true
inline.NumInlined: 205
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal14ForEachSectionEiRKSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEERK10Elf64_ShdrEE:bb.a
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !65

.loopexit:                                        ; preds = %bb.s, %.preheader, %.thread, %.thread86, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit30.thread, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit30
  %.4 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit30 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit30.thread ], [ %i.cv, %.thread86 ], [ false, %.thread ], [ true, %.preheader ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit, %.loopexit
  %.5 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit ], [ %.4, %.loopexit ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal22GetSectionHeaderByNameEiPKcmP10Elf64_Shdr(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [100 x i8], align 16              ; 10 uses
  %4 = alloca %struct.Elf64_Ehdr, align 8         ; 7 uses
  %5 = alloca %struct.Elf64_Shdr, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 663, ptr noundef nonnull @.str.1, ptr noundef %1, i64 noundef %2)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  br label %.lr.ph.split.us.preheader.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.outer.i.i, %bb.c
  %.sroa.34.2 = phi i64 [ 0, %bb.c ], [ %.sroa.34.3.lcssa, %.outer.i.i ] ; 2 uses
  %.sroa.21.2 = phi i64 [ 0, %bb.c ], [ %.sroa.21.3.lcssa, %.outer.i.i ] ; 2 uses
  %.028.ph72.i.i = phi i64 [ 0, %bb.c ], [ %i.s, %.outer.i.i ] ; 10 uses
  %.029.ph71.i.i = phi ptr [ %4, %bb.c ], [ %i.q, %.outer.i.i ] ; 2 uses
  %.030.ph70.i.i = phi i64 [ 0, %bb.c ], [ %i.r, %.outer.i.i ] ; 3 uses
  %.not.us.i.i135 = icmp sge i64 %.028.ph72.i.i, %.sroa.21.2
  %i.d = icmp slt i64 %.028.ph72.i.i, %.sroa.34.2
  %or.cond136 = and i1 %.not.us.i.i135, %i.d
  br i1 %or.cond136, label %.outer.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.preheader.i.i, %.lr.ph.split.us.i.i
  %i.e = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i) ; 3 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %i.e, %.028.ph72.i.i
  br label %.lr.ph.split.us.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @__errno_location() #25
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %.lr.ph.split.us.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread, !llvm.loop !0

.lr.ph.split.us.i.i:                              ; preds = %bb.f, %bb.e
  %.sroa.34.4 = phi i64 [ 0, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.21.4 = phi i64 [ 0, %bb.f ], [ %.028.ph72.i.i, %bb.e ] ; 2 uses
  %.not.us.i.i = icmp samesign uge i64 %.028.ph72.i.i, %.sroa.21.4
  %i.l = icmp slt i64 %.028.ph72.i.i, %.sroa.34.4
  %or.cond = select i1 %.not.us.i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %.outer.i.i, label %.lr.ph

.outer.i.i:                                       ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.preheader.i.i
  %.sroa.34.3.lcssa = phi i64 [ %.sroa.34.2, %.lr.ph.split.us.preheader.i.i ], [ %.sroa.34.4, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.21.3.lcssa = phi i64 [ %.sroa.21.2, %.lr.ph.split.us.preheader.i.i ], [ %.sroa.21.4, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.m = sub nsw i64 %.028.ph72.i.i, %.sroa.21.3.lcssa
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %i.o = sub nuw nsw i64 64, %.030.ph70.i.i
  %i.p = sub nuw nsw i64 %.sroa.34.3.lcssa, %.028.ph72.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i, ptr nonnull align 1 %i.n, i64 %.sroa.speculated.i.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i, i64 %.sroa.speculated.i.i
  %i.r = add nuw nsw i64 %.sroa.speculated.i.i, %.030.ph70.i.i ; 3 uses
  %i.s = add nuw nsw i64 %.sroa.speculated.i.i, %.028.ph72.i.i
  %i.t = icmp samesign ult i64 %i.r, 64
  br i1 %i.t, label %.lr.ph.split.us.preheader.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread: ; preds = %bb.f
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 518, ptr noundef nonnull @.str.5, i32 noundef %i.j)
  br label %bb.t

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit: ; preds = %.outer.i.i, %bb.d
  %.sroa.34.5 = phi i64 [ 0, %bb.d ], [ %.sroa.34.3.lcssa, %.outer.i.i ]
  %.sroa.21.5 = phi i64 [ 0, %bb.d ], [ %.sroa.21.3.lcssa, %.outer.i.i ]
  %.2.i.i = phi i64 [ %.030.ph70.i.i, %bb.d ], [ %i.r, %.outer.i.i ]
  %i.u = icmp eq i64 %.2.i.i, 64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.w = load i16, ptr %i.v, align 2
  %.not = icmp eq i16 %i.w, 64
  %or.cond226 = select i1 %i.u, i1 %.not, i1 false
  br i1 %or.cond226, label %bb.g, label %bb.t

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 62
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !20
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 6
  %i.ad = add nsw i64 %i.ac, %i.y
  br label %.lr.ph.split.us.preheader.i.i29

.lr.ph.split.us.preheader.i.i29:                  ; preds = %.outer.i.i37, %bb.g
  %.sroa.34.6 = phi i64 [ %.sroa.34.5, %bb.g ], [ %.sroa.34.7.lcssa, %.outer.i.i37 ] ; 2 uses
  %.sroa.21.6 = phi i64 [ %.sroa.21.5, %bb.g ], [ %.sroa.21.7.lcssa, %.outer.i.i37 ] ; 2 uses
  %.028.ph72.i.i30 = phi i64 [ %i.ad, %bb.g ], [ %i.at, %.outer.i.i37 ] ; 10 uses
  %.029.ph71.i.i31 = phi ptr [ %5, %bb.g ], [ %i.ar, %.outer.i.i37 ] ; 2 uses
  %.030.ph70.i.i32 = phi i64 [ 0, %bb.g ], [ %i.as, %.outer.i.i37 ] ; 3 uses
  %.not.us.i.i34138 = icmp sge i64 %.028.ph72.i.i30, %.sroa.21.6
  %i.ae = icmp slt i64 %.028.ph72.i.i30, %.sroa.34.6
  %or.cond97139 = and i1 %.not.us.i.i34138, %i.ae
  br i1 %or.cond97139, label %.outer.i.i37, label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph.split.us.preheader.i.i29, %.lr.ph.split.us.i.i33
  %i.af = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i30) ; 3 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph140
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i64 %i.af, %.028.ph72.i.i30
  br label %.lr.ph.split.us.i.i33

bb.j:                                             ; preds = %.lr.ph140
  %i.aj = tail call ptr @__errno_location() #25
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %.lr.ph.split.us.i.i33, label %.thread.sink.split, !llvm.loop !0

.lr.ph.split.us.i.i33:                            ; preds = %bb.j, %bb.i
  %.sroa.34.8 = phi i64 [ 0, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %.sroa.21.8 = phi i64 [ 0, %bb.j ], [ %.028.ph72.i.i30, %bb.i ] ; 2 uses
  %.not.us.i.i34 = icmp sge i64 %.028.ph72.i.i30, %.sroa.21.8
  %i.am = icmp slt i64 %.028.ph72.i.i30, %.sroa.34.8
  %or.cond97 = select i1 %.not.us.i.i34, i1 %i.am, i1 false
  br i1 %or.cond97, label %.outer.i.i37, label %.lr.ph140

.outer.i.i37:                                     ; preds = %.lr.ph.split.us.i.i33, %.lr.ph.split.us.preheader.i.i29
  %.sroa.34.7.lcssa = phi i64 [ %.sroa.34.6, %.lr.ph.split.us.preheader.i.i29 ], [ %.sroa.34.8, %.lr.ph.split.us.i.i33 ] ; 3 uses
  %.sroa.21.7.lcssa = phi i64 [ %.sroa.21.6, %.lr.ph.split.us.preheader.i.i29 ], [ %.sroa.21.8, %.lr.ph.split.us.i.i33 ] ; 3 uses
  %i.an = sub nsw i64 %.028.ph72.i.i30, %.sroa.21.7.lcssa
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  %i.ap = sub nuw nsw i64 64, %.030.ph70.i.i32
  %i.aq = sub nsw i64 %.sroa.34.7.lcssa, %.028.ph72.i.i30
  %.sroa.speculated.i.i38 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i31, ptr nonnull align 1 %i.ao, i64 %.sroa.speculated.i.i38, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i31, i64 %.sroa.speculated.i.i38
  %i.as = add nuw nsw i64 %.sroa.speculated.i.i38, %.030.ph70.i.i32 ; 3 uses
  %i.at = add nsw i64 %.sroa.speculated.i.i38, %.028.ph72.i.i30
  %i.au = icmp samesign ult i64 %i.as, 64
  br i1 %i.au, label %.lr.ph.split.us.preheader.i.i29, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39: ; preds = %.outer.i.i37, %bb.h
  %.sroa.34.9 = phi i64 [ 0, %bb.h ], [ %.sroa.34.7.lcssa, %.outer.i.i37 ]
  %.sroa.21.9 = phi i64 [ 0, %bb.h ], [ %.sroa.21.7.lcssa, %.outer.i.i37 ]
  %.2.i.i35 = phi i64 [ %.030.ph70.i.i32, %bb.h ], [ %i.as, %.outer.i.i37 ]
  %i.av = icmp eq i64 %.2.i.i35, 64
  br i1 %i.av, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !21 ; 2 uses
  %.not28153.not = icmp eq i16 %i.ax, 0
  br i1 %.not28153.not, label %.thread, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  %.not74.i = icmp eq i64 %2, 0
  %wide.trip.count = zext i16 %i.ax to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph157, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.sroa.21.0155 = phi i64 [ %.sroa.21.9, %.lr.ph157 ], [ %.sroa.21.1791202, %bb.s ]
  %.sroa.34.0154 = phi i64 [ %.sroa.34.9, %.lr.ph157 ], [ %.sroa.34.1790204, %bb.s ]
  %i.ba = shl nuw nsw i64 %indvars.iv, 6
  %i.bb = add nsw i64 %i.y, %i.ba
  br label %.lr.ph.split.us.preheader.i.i40

.lr.ph.split.us.preheader.i.i40:                  ; preds = %.outer.i.i48, %bb.k
  %.sroa.34.10 = phi i64 [ %.sroa.34.0154, %bb.k ], [ %.sroa.34.11.lcssa, %.outer.i.i48 ] ; 2 uses
  %.sroa.21.10 = phi i64 [ %.sroa.21.0155, %bb.k ], [ %.sroa.21.11.lcssa, %.outer.i.i48 ] ; 2 uses
  %.028.ph72.i.i41 = phi i64 [ %i.bb, %bb.k ], [ %i.br, %.outer.i.i48 ] ; 10 uses
  %.029.ph71.i.i42 = phi ptr [ %3, %bb.k ], [ %i.bp, %.outer.i.i48 ] ; 2 uses
  %.030.ph70.i.i43 = phi i64 [ 0, %bb.k ], [ %i.bq, %.outer.i.i48 ] ; 3 uses
  %.not.us.i.i45143 = icmp sge i64 %.028.ph72.i.i41, %.sroa.21.10
  %i.bc = icmp slt i64 %.028.ph72.i.i41, %.sroa.34.10
  %or.cond98144 = and i1 %.not.us.i.i45143, %i.bc
  br i1 %or.cond98144, label %.outer.i.i48, label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph.split.us.preheader.i.i40, %.lr.ph.split.us.i.i44
  %i.bd = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i41) ; 3 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph145
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i64 %i.bd, %.028.ph72.i.i41
  br label %.lr.ph.split.us.i.i44

bb.n:                                             ; preds = %.lr.ph145
  %i.bh = tail call ptr @__errno_location() #25
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 4
  br i1 %i.bj, label %.lr.ph.split.us.i.i44, label %.thread.sink.split, !llvm.loop !0

.lr.ph.split.us.i.i44:                            ; preds = %bb.n, %bb.m
  %.sroa.34.12 = phi i64 [ 0, %bb.n ], [ %i.bg, %bb.m ] ; 2 uses
  %.sroa.21.12 = phi i64 [ 0, %bb.n ], [ %.028.ph72.i.i41, %bb.m ] ; 2 uses
  %.not.us.i.i45 = icmp sge i64 %.028.ph72.i.i41, %.sroa.21.12
  %i.bk = icmp slt i64 %.028.ph72.i.i41, %.sroa.34.12
  %or.cond98 = select i1 %.not.us.i.i45, i1 %i.bk, i1 false
  br i1 %or.cond98, label %.outer.i.i48, label %.lr.ph145

.outer.i.i48:                                     ; preds = %.lr.ph.split.us.i.i44, %.lr.ph.split.us.preheader.i.i40
  %.sroa.34.11.lcssa = phi i64 [ %.sroa.34.10, %.lr.ph.split.us.preheader.i.i40 ], [ %.sroa.34.12, %.lr.ph.split.us.i.i44 ] ; 3 uses
  %.sroa.21.11.lcssa = phi i64 [ %.sroa.21.10, %.lr.ph.split.us.preheader.i.i40 ], [ %.sroa.21.12, %.lr.ph.split.us.i.i44 ] ; 3 uses
  %i.bl = sub nsw i64 %.028.ph72.i.i41, %.sroa.21.11.lcssa
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bl
  %i.bn = sub nuw nsw i64 64, %.030.ph70.i.i43
  %i.bo = sub nsw i64 %.sroa.34.11.lcssa, %.028.ph72.i.i41
  %.sroa.speculated.i.i49 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i42, ptr nonnull align 1 %i.bm, i64 %.sroa.speculated.i.i49, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i42, i64 %.sroa.speculated.i.i49
  %i.bq = add nuw nsw i64 %.sroa.speculated.i.i49, %.030.ph70.i.i43 ; 3 uses
  %i.br = add nsw i64 %.sroa.speculated.i.i49, %.028.ph72.i.i41
  %i.bs = icmp samesign ult i64 %i.bq, 64
  br i1 %i.bs, label %.lr.ph.split.us.preheader.i.i40, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50: ; preds = %.outer.i.i48, %bb.l
  %.sroa.34.13 = phi i64 [ 0, %bb.l ], [ %.sroa.34.11.lcssa, %.outer.i.i48 ] ; 2 uses
  %.sroa.21.13 = phi i64 [ 0, %bb.l ], [ %.sroa.21.11.lcssa, %.outer.i.i48 ] ; 2 uses
  %.2.i.i46 = phi i64 [ %.030.ph70.i.i43, %bb.l ], [ %i.bq, %.outer.i.i48 ]
  %i.bt = icmp eq i64 %.2.i.i46, 64
  br i1 %i.bt, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50
  br i1 %.not74.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread, label %.lr.ph.split.us.preheader.i.preheader

.lr.ph.split.us.preheader.i.preheader:            ; preds = %bb.o
  %i.bu = load i32, ptr %3, align 8, !tbaa !23
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nsw i64 %i.az, %i.bv
  br label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.split.us.preheader.i.preheader, %.outer.i
  %.sroa.34.14 = phi i64 [ %.sroa.34.15.lcssa, %.outer.i ], [ %.sroa.34.13, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.sroa.21.14 = phi i64 [ %.sroa.21.15.lcssa, %.outer.i ], [ %.sroa.21.13, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.028.ph72.i = phi i64 [ %i.cm, %.outer.i ], [ %i.bw, %.lr.ph.split.us.preheader.i.preheader ] ; 10 uses
  %.029.ph71.i = phi ptr [ %i.ck, %.outer.i ], [ %i.a, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.030.ph70.i = phi i64 [ %i.cl, %.outer.i ], [ 0, %.lr.ph.split.us.preheader.i.preheader ] ; 3 uses
  %.not.us.i148 = icmp sge i64 %.028.ph72.i, %.sroa.21.14
  %i.bx = icmp slt i64 %.028.ph72.i, %.sroa.34.14
  %or.cond99149 = and i1 %.not.us.i148, %i.bx
  br i1 %or.cond99149, label %.outer.i, label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph.split.us.preheader.i, %.lr.ph.split.us.i
  %i.by = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i) ; 3 uses
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph150
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = add nsw i64 %i.by, %.028.ph72.i
  br label %.lr.ph.split.us.i

bb.r:                                             ; preds = %.lr.ph150
  %i.cc = tail call ptr @__errno_location() #25
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %.lr.ph.split.us.i, label %.thread.sink.split, !llvm.loop !0

.lr.ph.split.us.i:                                ; preds = %bb.r, %bb.q
  %.sroa.34.16 = phi i64 [ 0, %bb.r ], [ %i.cb, %bb.q ] ; 2 uses
  %.sroa.21.16 = phi i64 [ 0, %bb.r ], [ %.028.ph72.i, %bb.q ] ; 2 uses
  %.not.us.i = icmp sge i64 %.028.ph72.i, %.sroa.21.16
  %i.cf = icmp slt i64 %.028.ph72.i, %.sroa.34.16
  %or.cond99 = select i1 %.not.us.i, i1 %i.cf, i1 false
  br i1 %or.cond99, label %.outer.i, label %.lr.ph150

.outer.i:                                         ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %.sroa.34.15.lcssa = phi i64 [ %.sroa.34.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.34.16, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.21.15.lcssa = phi i64 [ %.sroa.21.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.21.16, %.lr.ph.split.us.i ] ; 3 uses
  %i.cg = sub nsw i64 %.028.ph72.i, %.sroa.21.15.lcssa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = sub nuw nsw i64 %2, %.030.ph70.i
  %i.cj = sub nsw i64 %.sroa.34.15.lcssa, %.028.ph72.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ci) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i, ptr nonnull align 1 %i.ch, i64 %.sroa.speculated.i, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.029.ph71.i, i64 %.sroa.speculated.i
  %i.cl = add nuw nsw i64 %.sroa.speculated.i, %.030.ph70.i ; 3 uses
  %i.cm = add nsw i64 %.sroa.speculated.i, %.028.ph72.i
  %i.cn = icmp ult i64 %i.cl, %2
  br i1 %i.cn, label %.lr.ph.split.us.preheader.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86: ; preds = %.outer.i, %bb.p
  %.sroa.34.17 = phi i64 [ 0, %bb.p ], [ %.sroa.34.15.lcssa, %.outer.i ] ; 2 uses
  %.sroa.21.17 = phi i64 [ 0, %bb.p ], [ %.sroa.21.15.lcssa, %.outer.i ] ; 2 uses
  %.2.i = phi i64 [ %.030.ph70.i, %bb.p ], [ %i.cl, %.outer.i ]
  %i.co = icmp eq i64 %.2.i, %2
  br i1 %i.co, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread, label %bb.s

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread: ; preds = %bb.o, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86
  %.sroa.34.1790205 = phi i64 [ %.sroa.34.17, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86 ], [ %.sroa.34.13, %bb.o ]
  %.sroa.21.1791203 = phi i64 [ %.sroa.21.17, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86 ], [ %.sroa.21.13, %bb.o ]
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr %1, i64 %2)
  %i.cp = icmp eq i32 %bcmp, 0
  br i1 %i.cp, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread
  %.sroa.34.1790204 = phi i64 [ %.sroa.34.17, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86 ], [ %.sroa.34.1790205, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread ]
  %.sroa.21.1791202 = phi i64 [ %.sroa.21.17, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86 ], [ %.sroa.21.1791203, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.k, !llvm.loop !70

.thread.sink.split:                               ; preds = %bb.j, %bb.n, %bb.r
  %.lcssa.sink = phi i32 [ %i.cd, %bb.r ], [ %i.bi, %bb.n ], [ %i.ak, %bb.j ]
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 518, ptr noundef nonnull @.str.5, i32 noundef %.lcssa.sink)
  br label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50, %bb.s, %.thread.sink.split, %.preheader, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39
  %.4 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39 ], [ false, %.thread.sink.split ], [ false, %.preheader ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86.thread ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50 ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit, %.thread
  %.5 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit ], [ %.4, %.thread ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.6 = phi i1 [ false, %bb.b ], [ %.5, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.6
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052618debugging_internal25SetSymbolDecoratorFactoryEPFSt10unique_ptrINS1_15SymbolDecoratorENS1_22SymbolDecoratorDeleterEEiE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_119g_decorator_factoryE, ptr %0 acq_rel, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal23RegisterFileMappingHintEPKvS3_mPKc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ugt ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052613base_internal16InitSigSafeArenaEv()
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 10 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit

bb.f:                                             ; preds = %bb.e
  %i.c = and i32 %i.a, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.e = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.not.i.i.i, label %bb.h, label %.thread13.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.f = or disjoint i32 %i.a, 1
  %i.g = cmpxchg ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.f acquire monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit

.thread13.i.i.i:                                  ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = add nsw i32 %i.j, 1
  store atomic i32 %i.k, ptr %i.i monotonic, align 4
  %i.l = or i32 %i.a, 5
  %i.m = cmpxchg ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.l acquire monotonic, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.f
  %i.o = or disjoint i32 %i.a, 1
  %i.p = cmpxchg ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.o acquire monotonic, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit

bb.i:                                             ; preds = %.thread13.i.i.i
  %i.r = extractvalue { i32, i1 } %i.m, 0
  %i.s = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 76 ; 2 uses
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = add nsw i32 %i.u, -1
  store atomic i32 %i.v, ptr %i.t monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit

_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.e, %bb.h, %.thread13.i.i.i, %.thread.i.i.i, %bb.i
  %.04.i.i.i = phi i32 [ %i.a, %bb.e ], [ %i.r, %bb.i ], [ %i.h, %bb.h ], [ %i.a, %.thread13.i.i.i ], [ %i.q, %.thread.i.i.i ]
  %i.w = and i32 %.04.i.i.i, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit
  %i.y = load i32, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !14
  %i.z = icmp slt i32 %i.y, 8                     ; 3 uses
  br i1 %i.z, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal12SigSafeArenaEv()
  %i.ad = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.ab, ptr noundef %i.ac) ; 3 uses
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.l, label %bb.m, !prof !24

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38), i32 noundef 1626, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %3, i64 %i.ab, i1 false)
  %i.ae = load i32, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !14 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !14
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [32 x i8], ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %i.ag ; 4 uses
  store ptr %0, ptr %i.ah, align 16, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %2, ptr %i.aj, align 16, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ad, ptr %i.ak, align 8, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %i.al = load atomic i32, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.am = and i32 %i.al, 2
  %i.an = atomicrmw xchg ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.am release, align 4 ; 3 uses
  %i.ao = and i32 %i.an, 4
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 76 ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = add nsw i32 %i.ar, -1
  store atomic i32 %i.as, ptr %i.aq monotonic, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not4.i = icmp ult i32 %i.an, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.an) #29
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit: ; preds = %bb.q, %bb.p, %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit
  %.0 = phi i1 [ false, %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit ], [ %i.z, %bb.p ], [ %i.z, %bb.q ]
  ret i1 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @_ZN4absl12lts_2026052613base_internal16InitSigSafeArenaEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef, ptr noundef) local_unnamed_addr #1 section "malloc_hook"

declare noundef ptr @_ZN4absl12lts_2026052613base_internal12SigSafeArenaEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 10 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal8SpinLock8try_lockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.not.i.i.i, label %bb.d, label %.thread13.i.i.i

bb.d:                                             ; preds = %bb.c
end_hunk_0
