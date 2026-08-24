Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/rstparser?download=true
inline.NumInlined: 84
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"basic_string::compare\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN3gmx20RstParagraphIteratorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx20RstParagraphIteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx20RstParagraphIteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  store i32 -1, ptr %i.b, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gmx20RstParagraphIterator13nextParagraphEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((8, 16), (24, 32)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !16
  %.pre187 = load i32, ptr %i.d, align 8, !tbaa !17
  %.pre188 = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre188, i64 8
  %.pre189 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.j = phi i64 [ %.pre189, %bb.a ], [ %i.cs, %tailrecurse.backedge ] ; 5 uses
  %i.k = phi ptr [ %.pre188, %bb.a ], [ %i.y, %tailrecurse.backedge ] ; 2 uses
  %i.l = phi i32 [ %.pre187, %bb.a ], [ %.be, %tailrecurse.backedge ]
  %i.m = phi i64 [ %.pre, %bb.a ], [ %i.cr, %tailrecurse.backedge ] ; 4 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !23
  store i32 0, ptr %i.c, align 8, !tbaa !24
  store i32 %i.l, ptr %i.e, align 4, !tbaa !25
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %tailrecurse
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.p = phi i64 [ %i.m, %.lr.ph ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !23
  %exitcond.not = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not, label %.critedge.thread, label %bb.b, !llvm.loop !28

.critedge:                                        ; preds = %bb.b, %tailrecurse
  %.lcssa92 = phi i64 [ %i.m, %tailrecurse ], [ %i.p, %bb.b ] ; 2 uses
  %.not213.not = icmp eq i64 %.lcssa92, %i.j
  br i1 %.not213.not, label %.critedge.thread, label %bb.d

.critedge.thread:                                 ; preds = %.critedge, %bb.c
  store i64 %i.j, ptr %i.g, align 8, !tbaa !30
  store i32 0, ptr %i.e, align 4, !tbaa !25
  store i64 %i.j, ptr %i.a, align 8, !tbaa !16
  br label %_ZN3gmx12_GLOBAL__N_111startsTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.d:                                             ; preds = %.critedge
  %i.u = load i32, ptr %i.f, align 4, !tbaa !12
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %.preheader314

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 8, !tbaa !24
  br label %.preheader314

.preheader314:                                    ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader314, %bb.x
  %i.w = phi ptr [ %i.y, %bb.x ], [ %i.k, %.preheader314 ]
  %.038 = phi i64 [ %i.cl, %bb.x ], [ %.lcssa92, %.preheader314 ] ; 8 uses
  %.036 = phi i32 [ %i.ck, %bb.x ], [ 0, %.preheader314 ] ; 2 uses
  %.not89 = icmp eq i32 %.036, 0                  ; 2 uses
  %i.x = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 noundef signext 10, i64 noundef %.038) #10
  %i.y = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !31, !align !32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19  ; 18 uses
  %.sroa.speculated69 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.x) ; 9 uses
  %.val = load ptr, ptr %i.y, align 8             ; 15 uses
  %i.ab = icmp ult i64 %.038, %.sroa.speculated69
  br i1 %i.ab, label %.lr.ph.i, label %_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.0113.i = phi i64 [ %i.ag, %bb.g ], [ %.038, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %.0113.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = sext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #11
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = add i64 %.0113.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %.sroa.speculated69
  br i1 %exitcond.not.i, label %_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, label %.lr.ph.i, !llvm.loop !33

_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.pn.i = phi i64 [ %.sroa.speculated69, %bb.f ], [ %.0113.i, %.lr.ph.i ], [ %.sroa.speculated69, %bb.g ] ; 2 uses
  %.in.i = sub i64 %.pn.i, %.038                  ; 2 uses
  %i.ah = trunc i64 %.in.i to i32                 ; 6 uses
  %sext = shl i64 %.in.i, 32
  %i.ai = ashr exact i64 %sext, 32
  %i.aj = add i64 %i.ai, %.038                    ; 8 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %.not.i51 = icmp ugt i64 %i.aa, %i.ak
  br i1 %.not.i51, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  %i.al = getelementptr i8, ptr %.val, i64 %i.aj  ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !27  ; 2 uses
  %i.an = icmp eq i8 %i.am, 42
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #11
  %.not22.i = icmp eq i32 %i.ar, 0
  br i1 %.not22.i, label %.thread, label %_ZN3gmx12_GLOBAL__N_114startsListItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.j:                                             ; preds = %bb.h
  %i.as = sext i8 %i.am to i32
  %isdigittmp.i = add nsw i32 %i.as, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.j
  %i.at = icmp ult i64 %i.aj, %i.aa
  br i1 %i.at, label %.lr.ph.i52, label %.critedge.i

.lr.ph.i52:                                       ; preds = %.preheader.i, %bb.k
  %.03.i = phi i64 [ %i.ax, %bb.k ], [ %i.aj, %.preheader.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %.03.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = sext i8 %i.av to i32
  %isdigittmp23.i = add nsw i32 %i.aw, -48
  %isdigit24.i = icmp ult i32 %isdigittmp23.i, 10
  br i1 %isdigit24.i, label %bb.k, label %.critedge.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i52
  %i.ax = add i64 %.03.i, 1                       ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.ax, %i.aa
  br i1 %exitcond.not.i53, label %.critedge.loopexit.i, label %.lr.ph.i52, !llvm.loop !34

.critedge.loopexit.i:                             ; preds = %bb.k, %.lr.ph.i52
  %.0.lcssa.ph.i = phi i64 [ %.03.i, %.lr.ph.i52 ], [ %i.aa, %bb.k ] ; 2 uses
  %.pre.i = add i64 %.0.lcssa.ph.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %i.ak, %.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %.0.lcssa.ph.i, %.critedge.loopexit.i ], [ %i.aj, %.preheader.i ]
  %i.ay = icmp ugt i64 %i.aa, %.pre-phi.i
  br i1 %i.ay, label %bb.l, label %.thread

bb.l:                                             ; preds = %.critedge.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %.0.lcssa.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %i.bb = icmp eq i8 %i.ba, 46
  br i1 %i.bb, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27
  %i.be = sext i8 %i.bd to i32
  %i.bf = tail call i32 @isspace(i32 noundef %i.be) #11
  %.not25.i = icmp eq i32 %i.bf, 0
  br i1 %.not25.i, label %.thread, label %_ZN3gmx12_GLOBAL__N_114startsListItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

_ZN3gmx12_GLOBAL__N_114startsListItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %bb.i, %bb.m
  br i1 %.not89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN3gmx12_GLOBAL__N_114startsListItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  store i32 1, ptr %i.d, align 8, !tbaa !17
  %.pre190 = load i64, ptr %i.g, align 8, !tbaa !30
  br label %bb.z

bb.o:                                             ; preds = %_ZN3gmx12_GLOBAL__N_114startsListItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  store i64 %.sroa.speculated69, ptr %i.g, align 8, !tbaa !30
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !35
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !36
  br label %bb.p

.thread:                                          ; preds = %bb.i, %bb.j, %.critedge.i, %bb.l, %bb.m, %_ZN3gmx12_GLOBAL__N_117countLeadingSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  store i64 %.sroa.speculated69, ptr %i.g, align 8, !tbaa !30
  br i1 %.not89, label %.thread81, label %bb.r

.thread81:                                        ; preds = %.thread
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !35
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !36
  br label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %bb.o ] ; 5 uses
  %i.bg = getelementptr i8, ptr %i.al, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = sext i8 %i.bh to i32
  %i.bj = tail call i32 @isspace(i32 noundef %i.bi) #11
  %.not = icmp eq i32 %i.bj, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.p, label %.preheader, !llvm.loop !37

.preheader:                                       ; preds = %bb.p
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %i.bl = add i64 %i.aj, %indvars.iv              ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.aa
  br i1 %i.bm, label %.lr.ph145.preheader, label %.thread218

.lr.ph145.preheader:                              ; preds = %.preheader
  %i.bn = trunc i64 %i.aa to i32
  %i.bo = trunc i64 %.pn.i to i32
  %i.bp = sub i32 %i.bn, %i.bo
  %1 = sub i64 %i.aa, %i.aj
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.q
  %indvars.iv184 = phi i64 [ %indvars.iv, %.lr.ph145.preheader ], [ %indvars.iv.next185, %bb.q ] ; 2 uses
  %i.bq = phi i64 [ %i.bl, %.lr.ph145.preheader ], [ %i.bv, %bb.q ]
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = sext i8 %i.bs to i32
  %i.bu = tail call i32 @isspace(i32 noundef %i.bt) #11
  %.not43 = icmp eq i32 %i.bu, 0
  br i1 %.not43, label %.thread218.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph145
  %indvars.iv.next185 = add nuw i64 %indvars.iv184, 1 ; 3 uses
  %i.bv = add i64 %i.aj, %indvars.iv.next185
  %exitcond187.not = icmp eq i64 %indvars.iv.next185, %1
  br i1 %exitcond187.not, label %.thread218, label %.lr.ph145, !llvm.loop !38

.thread218.loopexit.split.loop.exit:              ; preds = %.lr.ph145
  %i.bw = trunc nuw nsw i64 %indvars.iv184 to i32
  br label %.thread218

.thread218:                                       ; preds = %bb.q, %.thread218.loopexit.split.loop.exit, %.preheader
  %.134.lcssa = phi i32 [ %i.bk, %.preheader ], [ %i.bw, %.thread218.loopexit.split.loop.exit ], [ %i.bp, %bb.q ]
  %i.bx = add nsw i32 %.134.lcssa, %i.ah
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !35
  br label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.r:                                             ; preds = %.thread
  %i.by = add nsw i32 %.036, 1                    ; 2 uses
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !39
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.ah)
  store i32 %.sroa.speculated, ptr %i.h, align 4, !tbaa !35
  %i.ca = icmp eq i32 %i.by, 2
  br i1 %i.ca, label %bb.s, label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.s:                                             ; preds = %bb.r
  %.val48 = load i64, ptr %i.z, align 8           ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 %.038
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.cd = sext i8 %i.cc to i32
  %i.ce = tail call i32 @ispunct(i32 noundef %i.cd) #11
  %.not.i55 = icmp eq i32 %i.ce, 0
  br i1 %.not.i55, label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.s
  %i.cf = icmp ult i64 %.038, %.val48
  br i1 %i.cf, label %.lr.ph.i58, label %.loopexit

bb.t:                                             ; preds = %bb.u
  %i.cg = add i64 %.01.i, 1                       ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %i.cg, %.val48
  br i1 %exitcond.not.i59, label %.loopexit, label %.lr.ph.i58, !llvm.loop !40

.lr.ph.i58:                                       ; preds = %.preheader.i56, %bb.t
  %.01.i = phi i64 [ %i.cg, %bb.t ], [ %.038, %.preheader.i56 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !27  ; 2 uses
  %.not12.i = icmp eq i8 %i.ci, 10
  br i1 %.not12.i, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i58
  %.not13.i = icmp eq i8 %i.ci, %i.cc
  br i1 %.not13.i, label %bb.t, label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

.loopexit:                                        ; preds = %bb.t, %.lr.ph.i58, %.preheader.i56
  store i32 2, ptr %i.c, align 8, !tbaa !24
  br label %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %bb.u, %.thread218, %bb.s, %.thread81, %.loopexit, %bb.r
  %i.cj = phi i64 [ %i.aa, %.thread81 ], [ %.val48, %.loopexit ], [ %i.aa, %bb.r ], [ %.val48, %bb.s ], [ %i.aa, %.thread218 ], [ %.val48, %bb.u ] ; 2 uses
  %i.ck = phi i32 [ 1, %.thread81 ], [ 2, %.loopexit ], [ %i.by, %bb.r ], [ 2, %bb.s ], [ 1, %.thread218 ], [ 2, %bb.u ]
  %i.cl = add i64 %.sroa.speculated69, 1          ; 3 uses
  %.not44 = icmp ult i64 %i.cl, %i.aa
  br i1 %.not44, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = icmp eq i8 %i.cn, 10
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_ZN3gmx12_GLOBAL__N_116isTitleUnderlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  store i32 2, ptr %i.d, align 8, !tbaa !17
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !24
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.y, label %bb.f

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.d, align 8, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.n
  %i.cr = phi i64 [ %.sroa.speculated69, %bb.w ], [ %.sroa.speculated69, %bb.y ], [ %.pre190, %bb.n ] ; 6 uses
  %i.cs = phi i64 [ %i.cj, %bb.w ], [ %i.cj, %bb.y ], [ %i.aa, %bb.n ]
  %i.ct = phi i32 [ 2, %bb.w ], [ 1, %bb.y ], [ 1, %bb.n ]
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !16
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.cv = sub i64 %i.cr, %i.cu                    ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, 1
  br i1 %i.cw, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cx = add i64 %i.cr, -2                       ; 5 uses
  %i.cy = icmp ugt i64 %i.cx, %i.aa
  br i1 %i.cy, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %i.cx, i64 noundef %i.aa) #12
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.aa
  %i.cz = icmp eq i64 %i.aa, %i.cx
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.da = sub nuw i64 %i.aa, %i.cx                ; 2 uses
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.da, i64 2)
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cx
  %bcmp = tail call i32 @bcmp(ptr %i.db, ptr nonnull @.str, i64 %spec.select.i.i)
  %.not.i60 = icmp eq i32 %bcmp, 0
  %i.dc = icmp ugt i64 %i.da, 1
  %or.cond = select i1 %.not.i60, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

bb.ac:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !35
  store i32 %i.dd, ptr %i.f, align 4, !tbaa !12
  %i.de = icmp eq i64 %i.cv, 2
  br i1 %i.de, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i32, ptr %i.e, align 4, !tbaa !25
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %tailrecurse.backedge

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.d, align 8, !tbaa !17
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.ae, %bb.ad
  %.be = phi i32 [ 0, %bb.ae ], [ %i.ct, %bb.ad ]
  br label %tailrecurse

bb.af:                                            ; preds = %bb.ac
  %i.dh = getelementptr i8, ptr %.val, i64 %i.cr
  %i.di = getelementptr i8, ptr %i.dh, i64 -3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !27
  %i.dk = icmp eq i8 %i.dj, 32
  %.neg = select i1 %i.dk, i64 -3, i64 -1
  %i.dl = add i64 %.neg, %i.cr
  store i64 %i.dl, ptr %i.g, align 8, !tbaa !30
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.z
  store i32 -1, ptr %i.f, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, %bb.af
  %i.dm = load i32, ptr %i.i, align 8, !tbaa !36
  %i.dn = sext i32 %i.dm to i64
  %i.do = add i64 %i.cu, %i.dn                    ; 5 uses
  %.val50 = load i64, ptr %i.z, align 8           ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !27
  switch i8 %i.dq, label %_ZN3gmx12_GLOBAL__N_111startsTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit [
    i8 61, label %.preheader.i64
    i8 43, label %.preheader1.i
  ]

.preheader1.i:                                    ; preds = %bb.ag
  %i.dr = icmp ult i64 %i.do, %.val50
  br i1 %i.dr, label %.lr.ph.i62, label %.critedge.loopexit15.i

.preheader.i64:                                   ; preds = %bb.ag
  %i.ds = icmp ult i64 %i.do, %.val50
  br i1 %i.ds, label %.lr.ph6.i, label %.critedge.loopexit15.i

.lr.ph6.i:                                        ; preds = %.preheader.i64, %bb.ai
  %.05.i = phi i64 [ %i.dx, %bb.ai ], [ %i.do, %.preheader.i64 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val, i64 %.05.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !27  ; 2 uses
  switch i8 %i.du, label %bb.ah [
    i8 10, label %.critedge.loopexit15.i
    i8 61, label %bb.ai
  ]

bb.ah:                                            ; preds = %.lr.ph6.i
  %i.dv = sext i8 %i.du to i32
  %i.dw = tail call i32 @isspace(i32 noundef %i.dv) #11
  %.not29.i = icmp eq i32 %i.dw, 0
  br i1 %.not29.i, label %_ZN3gmx12_GLOBAL__N_111startsTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph6.i
  %i.dx = add i64 %.05.i, 1                       ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.dx, %.val50
  br i1 %exitcond12.not.i, label %.critedge.loopexit15.i, label %.lr.ph6.i, !llvm.loop !41

.lr.ph.i62:                                       ; preds = %.preheader1.i, %bb.aj
  %.13.i = phi i64 [ %i.ea, %bb.aj ], [ %i.do, %.preheader1.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 %.13.i
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27
  switch i8 %i.dz, label %_ZN3gmx12_GLOBAL__N_111startsTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit [
    i8 10, label %.critedge.loopexit15.i
    i8 45, label %bb.aj
    i8 43, label %bb.aj
  ]

bb.aj:                                            ; preds = %.lr.ph.i62, %.lr.ph.i62
  %i.ea = add i64 %.13.i, 1                       ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.ea, %.val50
  br i1 %exitcond.not.i63, label %.critedge.loopexit15.i, label %.lr.ph.i62, !llvm.loop !42

.critedge.loopexit15.i:                           ; preds = %.lr.ph.i62, %bb.aj, %bb.ai, %.lr.ph6.i, %.preheader1.i, %.preheader.i64
end_hunk_0
