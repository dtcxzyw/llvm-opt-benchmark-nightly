Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi:bb.a

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i, %bb.c
  br label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i, %bb.d, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i
  %.pre-phi32.i = phi i64 [ %.pre31.i, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i ], [ %i.u, %bb.d ], [ %i.r, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i ], [ %i.u, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i ]
  %.1.i = phi i32 [ %.028.i, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i ], [ %.028.i, %bb.d ], [ %i.q, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i ], [ %.028.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i ] ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre-phi32.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !290 ; 2 uses
  %i.ap = icmp ult i16 %i.n, %i.ao
  br i1 %i.ap, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i
  %i.aq = icmp eq i16 %i.n, %i.ao
  br i1 %i.aq, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i: ; preds = %bb.e
  %i.ar = load i8, ptr %i.l, align 1, !tbaa !58
  %i.as = getelementptr inbounds i8, ptr %i.j, i64 %i.am
  %i.at = load i8, ptr %i.as, align 1, !tbaa !58
  %.not24.i = icmp ugt i8 %i.ar, %i.at
  br i1 %.not24.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i, %bb.e
  %i.au = sext i32 %.01727.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.au
  store i32 %i.al, ptr %i.av, align 4, !tbaa !159
  %.0.i = shl i32 %.1.i, 1                        ; 2 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !371 ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.aw
  br i1 %.not.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i, label %bb.b, !llvm.loop !37

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i
  %.017.lcssa.ph.i = phi i32 [ %.1.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i ], [ %.01727.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i ], [ %.01727.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i ]
  %.pre.i = sext i32 %.017.lcssa.ph.i to i64
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit

_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit: ; preds = %bb.a, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i ], [ 1, %bb.a ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre-phi.i
  store i32 %i.i, ptr %i.ax, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream10gen_bitlenEPNS3_9tree_descE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) initializes((2968, 3000)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #31 align 2 {
_ZSt4fillIPttEvT_S1_RKT0_.exit:
  %i.a = load ptr, ptr %1, align 8, !tbaa !372    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !373  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !374  ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !294
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i16, ptr %i.i, align 8, !tbaa !295
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.l = load i8, ptr %i.k, align 4, !tbaa !297   ; 3 uses
  %.ptr88 = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.ptr88, i8 0, i64 32, i1 false), !tbaa !197
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = zext i8 %i.l to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3000 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5296
  %i.q = load i32, ptr %i.p, align 8, !tbaa !375  ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !159
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 0, ptr %i.w, align 2, !tbaa !289
  %i.x = icmp slt i32 %i.q, 572
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4fillIPttEvT_S1_RKT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %.not86 = icmp eq ptr %i.f, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  %i.aa = add nsw i64 %i.r, 1
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.095 = phi i32 [ 0, %.lr.ph ], [ %spec.select87, %bb.f ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !159 ; 4 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !289
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !289
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = add nuw nsw i32 %i.al, 1
  %.not84 = icmp samesign uge i32 %i.al, %i.n     ; 2 uses
  %spec.select = select i1 %.not84, i32 %i.n, i32 %i.am ; 3 uses
  %i.an = zext i1 %.not84 to i32
  %spec.select87 = add nuw nsw i32 %.095, %i.an   ; 3 uses
  %i.ao = trunc nuw nsw i32 %spec.select to i16
  store i16 %i.ao, ptr %i.af, align 2, !tbaa !289
  %i.ap = icmp sgt i32 %i.ac, %i.c
  br i1 %i.ap, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = zext nneg i32 %spec.select to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.ptr88, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !197
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !197
  %.not85 = icmp slt i32 %i.ac, %i.m
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = sub nuw nsw i32 %i.ac, %i.m
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !58
  %i.ay = zext i8 %i.ax to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi i32 [ %i.ay, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.az = load i16, ptr %i.ae, align 2, !tbaa !290
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = add nuw nsw i32 %.067, %spec.select
  %i.bc = mul nuw nsw i32 %i.bb, %i.ba
  %i.bd = load i32, ptr %i.y, align 4, !tbaa !368
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !368
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !289
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nuw nsw i32 %.067, %i.bi
  %i.bk = mul i32 %i.bj, %i.ba
  %i.bl = load i32, ptr %i.z, align 8, !tbaa !369
  %i.bm = add i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.z, align 8, !tbaa !369
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.bn, 573
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !1132

._crit_edge:                                      ; preds = %bb.f
  %i.bo = icmp eq i32 %spec.select87, 0
  br i1 %i.bo, label %.loopexit, label %.preheader89

.preheader89:                                     ; preds = %._crit_edge
  %i.bp = zext i8 %i.l to i64                     ; 3 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.ptr88, i64 %i.bp ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader89, %bb.i
  %.2 = phi i32 [ %i.cb, %bb.i ], [ %spec.select87, %.preheader89 ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %bb.h ], [ %i.bp, %bb.g ] ; 2 uses
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1 ; 3 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %.ptr88, i64 %indvars.iv.next113
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !197 ; 2 uses
  %i.bt = icmp eq i16 %i.bs, 0
  br i1 %i.bt, label %bb.h, label %bb.i, !llvm.loop !1133

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds [2 x i8], ptr %.ptr88, i64 %indvars.iv.next113
  %i.bv = add i16 %i.bs, -1
  store i16 %i.bv, ptr %i.bu, align 2, !tbaa !197
  %i.bw = getelementptr inbounds [2 x i8], ptr %.ptr88, i64 %indvars.iv112 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !197
  %i.by = add i16 %i.bx, 2
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !197
  %i.bz = load i16, ptr %i.bq, align 2, !tbaa !197
  %i.ca = add i16 %i.bz, -1
  store i16 %i.ca, ptr %i.bq, align 2, !tbaa !197
  %i.cb = add nsw i32 %.2, -2
  %i.cc = icmp sgt i32 %.2, 2
  br i1 %i.cc, label %bb.g, label %.preheader, !llvm.loop !1134

.preheader:                                       ; preds = %bb.i
  %.not103 = icmp eq i8 %i.l, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph106, %.outer.split.us
  %indvars.iv118 = phi i64 [ %i.bp, %.lr.ph106 ], [ %indvars.iv.next119, %.outer.split.us ] ; 5 uses
  %.173104 = phi i32 [ 573, %.lr.ph106 ], [ %.274.ph.lcssa, %.outer.split.us ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.ptr88, i64 %indvars.iv118
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !197 ; 2 uses
  %.not8299 = icmp eq i16 %i.cf, 0
  br i1 %.not8299, label %.outer.split.us, label %.outer.split.lr.ph

.outer.split.lr.ph:                               ; preds = %bb.j
  %i.cg = zext i16 %i.cf to i32
  %i.ch = trunc nuw i64 %indvars.iv118 to i32
  %i.ci = trunc i64 %indvars.iv118 to i16
  %i.cj = sext i32 %.173104 to i64
  br label %.outer.split

.outer.split.us.loopexit:                         ; preds = %.outer
  %2 = trunc nsw i64 %indvars.iv.next116 to i32
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.split.us.loopexit, %bb.j
  %.274.ph.lcssa = phi i32 [ %.173104, %bb.j ], [ %2, %.outer.split.us.loopexit ]
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next119, 4294967295
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !1135

.outer.split:                                     ; preds = %.outer.split.lr.ph, %.outer
  %.071.ph101 = phi i32 [ %i.cg, %.outer.split.lr.ph ], [ %i.cz, %.outer ]
  %.274.ph100 = phi i64 [ %i.cj, %.outer.split.lr.ph ], [ %indvars.iv.next116, %.outer ]
  br label %bb.k

bb.k:                                             ; preds = %.outer.split, %bb.k
  %indvars.iv115 = phi i64 [ %.274.ph100, %.outer.split ], [ %indvars.iv.next116, %bb.k ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next116
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !159 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, %i.c
  br i1 %i.cm, label %bb.k, label %bb.l, !llvm.loop !1136

bb.l:                                             ; preds = %bb.k
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !289 ; 2 uses
  %i.cr = zext i16 %i.cq to i64
  %.not83 = icmp eq i64 %indvars.iv118, %i.cr
  br i1 %.not83, label %.outer, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = zext i16 %i.cq to i32
  %i.ct = sub i32 %i.ch, %i.cs
  %i.cu = load i16, ptr %i.co, align 2, !tbaa !290
  %i.cv = zext i16 %i.cu to i32
  %i.cw = mul i32 %i.ct, %i.cv
  %i.cx = load i32, ptr %i.cd, align 4, !tbaa !368
  %i.cy = add i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.cd, align 4, !tbaa !368
  store i16 %i.ci, ptr %i.cp, align 2, !tbaa !289
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.l
  %i.cz = add nsw i32 %.071.ph101, -1             ; 2 uses
  %.not82 = icmp eq i32 %i.cz, 0
  br i1 %.not82, label %.outer.split.us.loopexit, label %.outer.split, !llvm.loop !1136

.loopexit:                                        ; preds = %.outer.split.us, %_ZSt4fillIPttEvT_S1_RKT0_.exit, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream10build_treeEPNS3_9tree_descE(ptr nofree noundef nonnull align 8 dereferenceable(5928) initializes((5292, 5300)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !372    ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !374  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !296  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5292 ; 16 uses
  store i32 0, ptr %i.g, align 4, !tbaa !371
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 7 uses
  store i32 573, ptr %i.h, align 8, !tbaa !375
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %.lr.ph78, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5300
  %wide.trip.count = zext i16 %i.f to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.e
  %.pre = load i32, ptr %i.g, align 4, !tbaa !371 ; 3 uses
  %i.k = icmp slt i32 %.pre, 2
  br i1 %i.k, label %.lr.ph78, label %.lr.ph84

.lr.ph78:                                         ; preds = %bb.a, %.preheader
  %.037.lcssa120 = phi i32 [ %.1, %.preheader ], [ -1, %bb.a ] ; 2 uses
  %i.l = phi i32 [ %.pre, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3000 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 4 uses
  %.not42 = icmp eq ptr %i.d, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  br i1 %.not42, label %.lr.ph78.split.us, label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78, %.lr.ph78.split.us
  %i.q = phi i32 [ %i.ab, %.lr.ph78.split.us ], [ %i.l, %.lr.ph78 ]
  %.277.us = phi i32 [ %spec.select.us, %.lr.ph78.split.us ], [ %.037.lcssa120, %.lr.ph78 ] ; 3 uses
  %i.r = icmp slt i32 %.277.us, 2                 ; 2 uses
  %i.s = add nsw i32 %.277.us, 1                  ; 2 uses
  %spec.select.us = select i1 %i.r, i32 %i.s, i32 %.277.us ; 2 uses
  %spec.select44.us = select i1 %i.r, i32 %i.s, i32 0 ; 2 uses
  %i.t = add nsw i32 %i.q, 1                      ; 2 uses
  store i32 %i.t, ptr %i.g, align 4, !tbaa !371
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.u
  store i32 %spec.select44.us, ptr %i.v, align 4, !tbaa !159
  %i.w = sext i32 %spec.select44.us to i64        ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.w
  store i16 1, ptr %i.x, align 2, !tbaa !290
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !58
  %i.z = load i32, ptr %i.o, align 4, !tbaa !368
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !368
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !371 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 2
  br i1 %i.ac, label %.lr.ph78.split.us, label %.lr.ph84, !llvm.loop !1137

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.03776 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !290
  %.not43 = icmp eq i16 %i.ae, 0
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.g, align 4, !tbaa !371
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !371
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ah
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 0, ptr %i.ak, align 1, !tbaa !58
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 0, ptr %i.al, align 2, !tbaa !289
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aj, %bb.c ], [ %.03776, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !1138

.lr.ph78.split:                                   ; preds = %.lr.ph78, %.lr.ph78.split
  %i.am = phi i32 [ %i.bd, %.lr.ph78.split ], [ %i.l, %.lr.ph78 ]
  %.277 = phi i32 [ %spec.select, %.lr.ph78.split ], [ %.037.lcssa120, %.lr.ph78 ] ; 3 uses
  %i.an = icmp slt i32 %.277, 2                   ; 2 uses
  %i.ao = add nsw i32 %.277, 1                    ; 2 uses
  %spec.select = select i1 %i.an, i32 %i.ao, i32 %.277 ; 2 uses
  %spec.select44 = select i1 %i.an, i32 %i.ao, i32 0 ; 2 uses
  %i.ap = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.ap, ptr %i.g, align 4, !tbaa !371
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aq
  store i32 %spec.select44, ptr %i.ar, align 4, !tbaa !159
  %i.as = sext i32 %spec.select44 to i64          ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  store i16 1, ptr %i.at, align 2, !tbaa !290
  %i.au = getelementptr inbounds i8, ptr %i.n, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !58
  %i.av = load i32, ptr %i.o, align 4, !tbaa !368
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !368
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !289
  %i.ba = zext i16 %i.az to i32
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !369
  %i.bc = sub i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.p, align 8, !tbaa !369
  %i.bd = load i32, ptr %i.g, align 4, !tbaa !371 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 2
  br i1 %i.be, label %.lr.ph78.split, label %.lr.ph84, !llvm.loop !1137

.lr.ph84:                                         ; preds = %.lr.ph78.split, %.lr.ph78.split.us, %.preheader
  %.2.lcssa = phi i32 [ %.1, %.preheader ], [ %spec.select.us, %.lr.ph78.split.us ], [ %spec.select, %.lr.ph78.split ] ; 2 uses
  %.lcssa74 = phi i32 [ %.pre, %.preheader ], [ %i.ab, %.lr.ph78.split.us ], [ %i.bd, %.lr.ph78.split ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.2.lcssa, ptr %i.bf, align 8, !tbaa !373
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3000 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 4 uses
  %i.bi = lshr i32 %.lcssa74, 1
  %i.bj = zext nneg i32 %i.bi to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph84, %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit
  %indvars.iv89 = phi i64 [ %i.bj, %.lr.ph84 ], [ %indvars.iv.next90, %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv89
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !159 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %i.g, align 4, !tbaa !371 ; 2 uses
  %indvars.iv89.tr = trunc nuw i64 %indvars.iv89 to i32
  %i.bp = shl nuw i32 %indvars.iv89.tr, 1         ; 2 uses
  %.not26.i = icmp sgt i32 %i.bp, %i.bo
  br i1 %.not26.i, label %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bm
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !290 ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv89 to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i, %.lr.ph.i
  %i.bt = phi i32 [ %i.bo, %.lr.ph.i ], [ %i.db, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i ]
  %.028.i = phi i32 [ %i.bp, %.lr.ph.i ], [ %.0.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i ] ; 7 uses
  %.01727.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %.1.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i ] ; 3 uses
  %i.bu = icmp slt i32 %.028.i, %i.bt
  br i1 %i.bu, label %bb.h, label %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i

._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i: ; preds = %bb.g
  %.pre31.i = sext i32 %.028.i to i64
  br label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i

bb.h:                                             ; preds = %bb.g
  %i.bv = or disjoint i32 %.028.i, 1              ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !159
  %i.bz = sext i32 %.028.i to i64                 ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !159
  %i.cc = sext i32 %i.by to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !290 ; 2 uses
  %i.cf = sext i32 %i.cb to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !290 ; 2 uses
  %i.ci = icmp ult i16 %i.ce, %i.ch
  br i1 %i.ci, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp eq i16 %i.ce, %i.ch
  br i1 %i.cj, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i: ; preds = %bb.i
  %i.ck = getelementptr inbounds i8, ptr %i.bh, i64 %i.cc
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !58
  %i.cm = getelementptr inbounds i8, ptr %i.bh, i64 %i.cf
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !58
  %i.co = icmp ule i8 %i.cl, %i.cn
  %cond.fr.i = freeze i1 %i.co
  br i1 %cond.fr.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i, %bb.h
  br label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i, %bb.i, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i
end_hunk_0
