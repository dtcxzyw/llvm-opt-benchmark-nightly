Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4llvm3PPC18isXXBRDShuffleMaskEPNS_19ShuffleVectorSDNodeE:.lr.ph.split.us48.i.i
  %i.m = add i32 %i.j, -1
  %.not30.us53.i.i.4 = icmp eq i32 %i.l, %i.m
  br i1 %.not30.us53.i.i.4, label %.preheader64.i.i.5, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.5:                               ; preds = %.preheader64.i.i.4
  %gep.i.i.5 = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load i32, ptr %gep.i.i.5, align 4, !tbaa !318 ; 2 uses
  %i.o = add i32 %i.l, -1
  %.not30.us53.i.i.5 = icmp eq i32 %i.n, %i.o
  br i1 %.not30.us53.i.i.5, label %.preheader64.i.i.6, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.6:                               ; preds = %.preheader64.i.i.5
  %gep.i.i.6 = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.p = load i32, ptr %gep.i.i.6, align 4, !tbaa !318
  %i.q = add i32 %i.n, -1
  %.not30.us53.i.i.6 = icmp eq i32 %i.p, %i.q
  br i1 %.not30.us53.i.i.6, label %.critedge.us54.i.i, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.critedge.us54.i.i:                               ; preds = %.preheader64.i.i.6
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !318  ; 3 uses
  %i.t = and i32 %i.s, 7
  %.not29.us.i.i.1 = icmp eq i32 %i.t, 7
  br i1 %.not29.us.i.i.1, label %.preheader64.i.i.preheader.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.preheader.1:                     ; preds = %.critedge.us54.i.i
  %gep.i.i.15 = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.u = load i32, ptr %gep.i.i.15, align 4, !tbaa !318 ; 2 uses
  %i.v = add nsw i32 %i.s, -1
  %.not30.us53.i.i.16 = icmp eq i32 %i.u, %i.v
  br i1 %.not30.us53.i.i.16, label %.preheader64.i.i.1.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.1.1:                             ; preds = %.preheader64.i.i.preheader.1
  %gep.i.i.1.1 = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.w = load i32, ptr %gep.i.i.1.1, align 4, !tbaa !318 ; 2 uses
  %i.x = add i32 %i.u, -1
  %.not30.us53.i.i.1.1 = icmp eq i32 %i.w, %i.x
  br i1 %.not30.us53.i.i.1.1, label %.preheader64.i.i.2.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.2.1:                             ; preds = %.preheader64.i.i.1.1
  %gep.i.i.2.1 = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.y = load i32, ptr %gep.i.i.2.1, align 4, !tbaa !318 ; 2 uses
  %i.z = add i32 %i.w, -1
  %.not30.us53.i.i.2.1 = icmp eq i32 %i.y, %i.z
  br i1 %.not30.us53.i.i.2.1, label %.preheader64.i.i.3.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.3.1:                             ; preds = %.preheader64.i.i.2.1
  %gep.i.i.3.1 = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aa = load i32, ptr %gep.i.i.3.1, align 4, !tbaa !318 ; 2 uses
  %i.ab = add i32 %i.y, -1
  %.not30.us53.i.i.3.1 = icmp eq i32 %i.aa, %i.ab
  br i1 %.not30.us53.i.i.3.1, label %.preheader64.i.i.4.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.4.1:                             ; preds = %.preheader64.i.i.3.1
  %gep.i.i.4.1 = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.ac = load i32, ptr %gep.i.i.4.1, align 4, !tbaa !318 ; 2 uses
  %i.ad = add i32 %i.aa, -1
  %.not30.us53.i.i.4.1 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not30.us53.i.i.4.1, label %.preheader64.i.i.5.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.5.1:                             ; preds = %.preheader64.i.i.4.1
  %gep.i.i.5.1 = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ae = load i32, ptr %gep.i.i.5.1, align 4, !tbaa !318 ; 2 uses
  %i.af = add i32 %i.ac, -1
  %.not30.us53.i.i.5.1 = icmp eq i32 %i.ae, %i.af
  br i1 %.not30.us53.i.i.5.1, label %.preheader64.i.i.6.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.6.1:                             ; preds = %.preheader64.i.i.5.1
  %gep.i.i.6.1 = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.ag = load i32, ptr %gep.i.i.6.1, align 4, !tbaa !318
  %i.ah = add i32 %i.ae, -1
  %.not30.us53.i.i.6.1 = icmp eq i32 %i.ag, %i.ah
  %.not.i = icmp eq i32 %i.b, 7
  %or.cond = and i1 %.not30.us53.i.i.6.1, %.not.i
  %.not.i.1 = icmp eq i32 %i.s, 15
  %or.cond19 = and i1 %or.cond, %.not.i.1
  br label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit: ; preds = %.preheader64.i.i.6.1, %.lr.ph.split.us48.i.i, %.critedge.us54.i.i, %.preheader64.i.i.preheader, %.preheader64.i.i.1, %.preheader64.i.i.2, %.preheader64.i.i.3, %.preheader64.i.i.4, %.preheader64.i.i.5, %.preheader64.i.i.6, %.preheader64.i.i.preheader.1, %.preheader64.i.i.1.1, %.preheader64.i.i.2.1, %.preheader64.i.i.3.1, %.preheader64.i.i.4.1, %.preheader64.i.i.5.1
  %.1.i = phi i1 [ false, %.preheader64.i.i.preheader ], [ false, %.preheader64.i.i.1 ], [ false, %.lr.ph.split.us48.i.i ], [ false, %.critedge.us54.i.i ], [ %or.cond19, %.preheader64.i.i.6.1 ], [ false, %.preheader64.i.i.5.1 ], [ false, %.preheader64.i.i.4.1 ], [ false, %.preheader64.i.i.3.1 ], [ false, %.preheader64.i.i.2.1 ], [ false, %.preheader64.i.i.1.1 ], [ false, %.preheader64.i.i.preheader.1 ], [ false, %.preheader64.i.i.6 ], [ false, %.preheader64.i.i.5 ], [ false, %.preheader64.i.i.4 ], [ false, %.preheader64.i.i.3 ], [ false, %.preheader64.i.i.2 ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3PPC18isXXBRQShuffleMaskEPNS_19ShuffleVectorSDNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
.lr.ph.split.us48.i.i:
  %i.a = getelementptr i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.a, align 8, !tbaa !484 ; 16 uses
  %i.b = load i32, ptr %.val, align 4, !tbaa !318 ; 3 uses
  %i.c = and i32 %i.b, 15
  %.not29.us.i.i = icmp eq i32 %i.c, 15
  br i1 %.not29.us.i.i, label %.preheader64.i.i.preheader, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.preheader:                       ; preds = %.lr.ph.split.us48.i.i
  %gep.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.d = load i32, ptr %gep.i.i, align 4, !tbaa !318 ; 2 uses
  %i.e = add nsw i32 %i.b, -1
  %.not30.us53.i.i = icmp eq i32 %i.d, %i.e
  br i1 %.not30.us53.i.i, label %.preheader64.i.i.1, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.1:                               ; preds = %.preheader64.i.i.preheader
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load i32, ptr %gep.i.i.1, align 4, !tbaa !318 ; 2 uses
  %i.g = add i32 %i.d, -1
  %.not30.us53.i.i.1 = icmp eq i32 %i.f, %i.g
  br i1 %.not30.us53.i.i.1, label %.preheader64.i.i.2, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.2:                               ; preds = %.preheader64.i.i.1
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.h = load i32, ptr %gep.i.i.2, align 4, !tbaa !318 ; 2 uses
  %i.i = add i32 %i.f, -1
  %.not30.us53.i.i.2 = icmp eq i32 %i.h, %i.i
  br i1 %.not30.us53.i.i.2, label %.preheader64.i.i.3, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.3:                               ; preds = %.preheader64.i.i.2
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load i32, ptr %gep.i.i.3, align 4, !tbaa !318 ; 2 uses
  %i.k = add i32 %i.h, -1
  %.not30.us53.i.i.3 = icmp eq i32 %i.j, %i.k
  br i1 %.not30.us53.i.i.3, label %.preheader64.i.i.4, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.4:                               ; preds = %.preheader64.i.i.3
  %gep.i.i.4 = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.l = load i32, ptr %gep.i.i.4, align 4, !tbaa !318 ; 2 uses
  %i.m = add i32 %i.j, -1
  %.not30.us53.i.i.4 = icmp eq i32 %i.l, %i.m
  br i1 %.not30.us53.i.i.4, label %.preheader64.i.i.5, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.5:                               ; preds = %.preheader64.i.i.4
  %gep.i.i.5 = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load i32, ptr %gep.i.i.5, align 4, !tbaa !318 ; 2 uses
  %i.o = add i32 %i.l, -1
  %.not30.us53.i.i.5 = icmp eq i32 %i.n, %i.o
  br i1 %.not30.us53.i.i.5, label %.preheader64.i.i.6, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.6:                               ; preds = %.preheader64.i.i.5
  %gep.i.i.6 = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.p = load i32, ptr %gep.i.i.6, align 4, !tbaa !318 ; 2 uses
  %i.q = add i32 %i.n, -1
  %.not30.us53.i.i.6 = icmp eq i32 %i.p, %i.q
  br i1 %.not30.us53.i.i.6, label %.preheader64.i.i.7, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.7:                               ; preds = %.preheader64.i.i.6
  %gep.i.i.7 = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = load i32, ptr %gep.i.i.7, align 4, !tbaa !318 ; 2 uses
  %i.s = add i32 %i.p, -1
  %.not30.us53.i.i.7 = icmp eq i32 %i.r, %i.s
  br i1 %.not30.us53.i.i.7, label %.preheader64.i.i.8, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.8:                               ; preds = %.preheader64.i.i.7
  %gep.i.i.8 = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.t = load i32, ptr %gep.i.i.8, align 4, !tbaa !318 ; 2 uses
  %i.u = add i32 %i.r, -1
  %.not30.us53.i.i.8 = icmp eq i32 %i.t, %i.u
  br i1 %.not30.us53.i.i.8, label %.preheader64.i.i.9, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.9:                               ; preds = %.preheader64.i.i.8
  %gep.i.i.9 = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.v = load i32, ptr %gep.i.i.9, align 4, !tbaa !318 ; 2 uses
  %i.w = add i32 %i.t, -1
  %.not30.us53.i.i.9 = icmp eq i32 %i.v, %i.w
  br i1 %.not30.us53.i.i.9, label %.preheader64.i.i.10, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.10:                              ; preds = %.preheader64.i.i.9
  %gep.i.i.10 = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.x = load i32, ptr %gep.i.i.10, align 4, !tbaa !318 ; 2 uses
  %i.y = add i32 %i.v, -1
  %.not30.us53.i.i.10 = icmp eq i32 %i.x, %i.y
  br i1 %.not30.us53.i.i.10, label %.preheader64.i.i.11, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.11:                              ; preds = %.preheader64.i.i.10
  %gep.i.i.11 = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.z = load i32, ptr %gep.i.i.11, align 4, !tbaa !318 ; 2 uses
  %i.aa = add i32 %i.x, -1
  %.not30.us53.i.i.11 = icmp eq i32 %i.z, %i.aa
  br i1 %.not30.us53.i.i.11, label %.preheader64.i.i.12, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.12:                              ; preds = %.preheader64.i.i.11
  %gep.i.i.12 = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.ab = load i32, ptr %gep.i.i.12, align 4, !tbaa !318 ; 2 uses
  %i.ac = add i32 %i.z, -1
  %.not30.us53.i.i.12 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not30.us53.i.i.12, label %.preheader64.i.i.13, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.13:                              ; preds = %.preheader64.i.i.12
  %gep.i.i.13 = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ad = load i32, ptr %gep.i.i.13, align 4, !tbaa !318 ; 2 uses
  %i.ae = add i32 %i.ab, -1
  %.not30.us53.i.i.13 = icmp eq i32 %i.ad, %i.ae
  br i1 %.not30.us53.i.i.13, label %.preheader64.i.i.14, label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

.preheader64.i.i.14:                              ; preds = %.preheader64.i.i.13
  %gep.i.i.14 = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.af = load i32, ptr %gep.i.i.14, align 4, !tbaa !318
  %i.ag = add i32 %i.ad, -1
  %.not30.us53.i.i.14 = icmp eq i32 %i.af, %i.ag
  %.not.i = icmp eq i32 %i.b, 15
  %spec.select = and i1 %.not30.us53.i.i.14, %.not.i
  br label %_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit

_ZL23isXXBRShuffleMaskHelperPN4llvm19ShuffleVectorSDNodeEi.exit: ; preds = %.preheader64.i.i.14, %.preheader64.i.i.preheader, %.preheader64.i.i.1, %.preheader64.i.i.2, %.preheader64.i.i.3, %.preheader64.i.i.4, %.preheader64.i.i.5, %.preheader64.i.i.6, %.preheader64.i.i.7, %.preheader64.i.i.8, %.preheader64.i.i.9, %.preheader64.i.i.10, %.preheader64.i.i.11, %.preheader64.i.i.12, %.preheader64.i.i.13, %.lr.ph.split.us48.i.i
  %.1.i = phi i1 [ false, %.preheader64.i.i.preheader ], [ false, %.lr.ph.split.us48.i.i ], [ false, %.preheader64.i.i.1 ], [ %spec.select, %.preheader64.i.i.14 ], [ false, %.preheader64.i.i.13 ], [ false, %.preheader64.i.i.12 ], [ false, %.preheader64.i.i.11 ], [ false, %.preheader64.i.i.10 ], [ false, %.preheader64.i.i.9 ], [ false, %.preheader64.i.i.8 ], [ false, %.preheader64.i.i.7 ], [ false, %.preheader64.i.i.6 ], [ false, %.preheader64.i.i.5 ], [ false, %.preheader64.i.i.4 ], [ false, %.preheader64.i.i.3 ], [ false, %.preheader64.i.i.2 ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3PPC21isXXPERMDIShuffleMaskEPNS_19ShuffleVectorSDNodeERjRbb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #8 {
.lr.ph.split.us.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !484  ; 16 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !318  ; 4 uses
  %i.d = and i32 %i.c, 7
  %.not.us.i = icmp eq i32 %i.d, 0
  br i1 %.not.us.i, label %.preheader.i.preheader, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.preheader:                           ; preds = %.lr.ph.split.us.i
  %gep103.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %gep103.i, align 4, !tbaa !318 ; 2 uses
  %i.f = or disjoint i32 %i.c, 1
  %.not30.us.i = icmp eq i32 %i.e, %i.f
  br i1 %.not30.us.i, label %.preheader.i.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %gep103.i.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %gep103.i.1, align 4, !tbaa !318 ; 2 uses
  %i.h = add nuw i32 %i.e, 1
  %.not30.us.i.1 = icmp eq i32 %i.g, %i.h
  br i1 %.not30.us.i.1, label %.preheader.i.2, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %gep103.i.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %gep103.i.2, align 4, !tbaa !318 ; 2 uses
  %i.j = add nuw i32 %i.g, 1
  %.not30.us.i.2 = icmp eq i32 %i.i, %i.j
  br i1 %.not30.us.i.2, label %.preheader.i.3, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %gep103.i.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i32, ptr %gep103.i.3, align 4, !tbaa !318 ; 2 uses
  %i.l = add nuw i32 %i.i, 1
  %.not30.us.i.3 = icmp eq i32 %i.k, %i.l
  br i1 %.not30.us.i.3, label %.preheader.i.4, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %gep103.i.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.m = load i32, ptr %gep103.i.4, align 4, !tbaa !318 ; 2 uses
  %i.n = add nuw i32 %i.k, 1
  %.not30.us.i.4 = icmp eq i32 %i.m, %i.n
  br i1 %.not30.us.i.4, label %.preheader.i.5, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %gep103.i.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load i32, ptr %gep103.i.5, align 4, !tbaa !318 ; 2 uses
  %i.p = add nuw i32 %i.m, 1
  %.not30.us.i.5 = icmp eq i32 %i.o, %i.p
  br i1 %.not30.us.i.5, label %.preheader.i.6, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %gep103.i.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.q = load i32, ptr %gep103.i.6, align 4, !tbaa !318
  %i.r = add nuw i32 %i.o, 1
  %.not30.us.i.6 = icmp eq i32 %i.q, %i.r
  br i1 %.not30.us.i.6, label %.critedge.us.i, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.critedge.us.i:                                   ; preds = %.preheader.i.6
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !318  ; 4 uses
  %i.u = and i32 %i.t, 7
  %.not.us.i.1 = icmp eq i32 %i.u, 0
  br i1 %.not.us.i.1, label %.preheader.i.preheader.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.preheader.1:                         ; preds = %.critedge.us.i
  %gep103.i.157 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.v = load i32, ptr %gep103.i.157, align 4, !tbaa !318 ; 2 uses
  %i.w = or disjoint i32 %i.t, 1
  %.not30.us.i.158 = icmp eq i32 %i.v, %i.w
  br i1 %.not30.us.i.158, label %.preheader.i.1.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.1.1:                                 ; preds = %.preheader.i.preheader.1
  %gep103.i.1.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = load i32, ptr %gep103.i.1.1, align 4, !tbaa !318 ; 2 uses
  %i.y = add nuw i32 %i.v, 1
  %.not30.us.i.1.1 = icmp eq i32 %i.x, %i.y
  br i1 %.not30.us.i.1.1, label %.preheader.i.2.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.2.1:                                 ; preds = %.preheader.i.1.1
  %gep103.i.2.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.z = load i32, ptr %gep103.i.2.1, align 4, !tbaa !318 ; 2 uses
  %i.aa = add nuw i32 %i.x, 1
  %.not30.us.i.2.1 = icmp eq i32 %i.z, %i.aa
  br i1 %.not30.us.i.2.1, label %.preheader.i.3.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.3.1:                                 ; preds = %.preheader.i.2.1
  %gep103.i.3.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ab = load i32, ptr %gep103.i.3.1, align 4, !tbaa !318 ; 2 uses
  %i.ac = add nuw i32 %i.z, 1
  %.not30.us.i.3.1 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not30.us.i.3.1, label %.preheader.i.4.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.4.1:                                 ; preds = %.preheader.i.3.1
  %gep103.i.4.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ad = load i32, ptr %gep103.i.4.1, align 4, !tbaa !318 ; 2 uses
  %i.ae = add nuw i32 %i.ab, 1
  %.not30.us.i.4.1 = icmp eq i32 %i.ad, %i.ae
  br i1 %.not30.us.i.4.1, label %.preheader.i.5.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.5.1:                                 ; preds = %.preheader.i.4.1
  %gep103.i.5.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.af = load i32, ptr %gep103.i.5.1, align 4, !tbaa !318 ; 2 uses
  %i.ag = add nuw i32 %i.ad, 1
  %.not30.us.i.5.1 = icmp eq i32 %i.af, %i.ag
  br i1 %.not30.us.i.5.1, label %.preheader.i.6.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.preheader.i.6.1:                                 ; preds = %.preheader.i.5.1
  %gep103.i.6.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ah = load i32, ptr %gep103.i.6.1, align 4, !tbaa !318
  %i.ai = add nuw i32 %i.af, 1
  %.not30.us.i.6.1 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not30.us.i.6.1, label %.critedge.us.i.1, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

.critedge.us.i.1:                                 ; preds = %.preheader.i.6.1
  %i.aj = ashr exact i32 %i.c, 3                  ; 9 uses
  %i.ak = ashr exact i32 %i.t, 3                  ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !592
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !593
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !594
  %i.ar = add i32 %i.aq, -53
  %spec.select.i.i = icmp ult i32 %i.ar, 2
  br i1 %spec.select.i.i, label %bb.a, label %bb.f

bb.a:                                             ; preds = %.critedge.us.i.1
  %i.as = or i32 %i.ak, %i.aj
  %i.at = icmp ult i32 %i.as, 2
  br i1 %i.at, label %bb.b, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = ashr exact i32 %i.t, 2
  %i.av = or disjoint i32 %i.au, %i.aj
  %i.aw = xor i32 %i.av, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = ashr exact i32 %i.c, 2
  %i.ay = or disjoint i32 %i.ax, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = phi i32 [ %i.aw, %bb.c ], [ %i.ay, %bb.d ]
  store i32 %i.az, ptr %1, align 4, !tbaa !318
  store i8 0, ptr %2, align 1, !tbaa !356
  br label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

bb.f:                                             ; preds = %.critedge.us.i.1
  br i1 %3, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp ugt i32 %i.aj, 1
  %i.bb = icmp ult i32 %i.ak, 2
  %or.cond = and i1 %i.ba, %i.bb
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = icmp ult i32 %i.aj, 2
  %i.bd = icmp ugt i32 %i.ak, 1
  %or.cond3 = and i1 %i.bc, %i.bd
  br i1 %or.cond3, label %bb.i, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.be = and i32 %i.ak, 3
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %storemerge53 = phi i8 [ 1, %bb.i ], [ 0, %bb.g ]
  %.0 = phi i32 [ %i.be, %bb.i ], [ %i.ak, %bb.g ]
  store i8 %storemerge53, ptr %2, align 1, !tbaa !356
  %i.bf = shl nuw nsw i32 %.0, 1
  %i.bg = and i32 %i.bf, 2
  %i.bh = and i32 %i.aj, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = xor i32 %i.bi, 3
  store i32 %i.bj, ptr %1, align 4, !tbaa !318
  br label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

bb.k:                                             ; preds = %bb.f
  %i.bk = icmp ult i32 %i.aj, 2
  %i.bl = icmp ugt i32 %i.ak, 1
  %or.cond5 = and i1 %i.bk, %i.bl
  br i1 %or.cond5, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp ugt i32 %i.aj, 1
  %i.bn = icmp ult i32 %i.ak, 2
  %or.cond7 = and i1 %i.bm, %i.bn
  br i1 %or.cond7, label %bb.m, label %_ZL22isNByteElemShuffleMaskPN4llvm19ShuffleVectorSDNodeEji.exit.thread

end_hunk_0
