Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/aspack?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@build_decrypt_dictionaries:bb.a

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %indvars.iv.next144.1 = add nuw nsw i64 %i.dv, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.1
  store i8 %.pre158, ptr %i.dy, align 1, !tbaa !19
  %i.dz = icmp eq i32 %.155132, 755
  br i1 %i.dz, label %.loopexit110.loopexit134, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %indvars.iv.next144.2 = add nuw nsw i64 %i.dv, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.2
  store i8 %.pre158, ptr %i.ea, align 1, !tbaa !19
  %i.eb = icmp eq i32 %i.du, 0
  %i.ec = icmp samesign ugt i32 %.155132, 753
  %or.cond3.2 = or i1 %i.ec, %i.eb
  br i1 %or.cond3.2, label %.loopexit110.loopexit134, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %indvars.iv.next144.3 = add nuw nsw i64 %i.dv, 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.3
  store i8 %.pre158, ptr %i.ed, align 1, !tbaa !19
  %i.ee = icmp eq i32 %i.du, 1
  %i.ef = icmp samesign ugt i32 %.155132, 752
  %or.cond3.3 = or i1 %i.ef, %i.ee
  br i1 %or.cond3.3, label %.loopexit110.loopexit134, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %indvars.iv.next144.4 = add nuw nsw i64 %i.dv, 5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.4
  store i8 %.pre158, ptr %i.eg, align 1, !tbaa !19
  %i.eh = icmp eq i32 %i.du, 2
  %i.ei = icmp samesign ugt i32 %.155132, 751
  %or.cond3.4 = or i1 %i.ei, %i.eh
  br i1 %or.cond3.4, label %.loopexit110.loopexit134, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %indvars.iv.next144.5 = add nuw nsw i64 %i.dv, 6 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.5
  store i8 %.pre158, ptr %i.ej, align 1, !tbaa !19
  br label %.loopexit110.loopexit134

bb.s:                                             ; preds = %bb.h
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !16
  %i.el = zext nneg i32 %.155132 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !19
  %i.eo = trunc nuw nsw i32 %i.bc to i8
  %i.ep = add i8 %i.en, %i.eo
  %i.eq = and i8 %i.ep, 15
  %i.er = add nuw nsw i32 %.155132, 1             ; 2 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.es
  store i8 %i.eq, ptr %i.et, align 1, !tbaa !19
  br label %.loopexit110

.loopexit110.loopexit:                            ; preds = %.lr.ph130
  %i.eu = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %.loopexit110

.loopexit110.loopexit134:                         ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.next144.lcssa = phi i64 [ %indvars.iv.next144, %.lr.ph.preheader ], [ %indvars.iv.next144.1, %.lr.ph.1 ], [ %indvars.iv.next144.2, %.lr.ph.2 ], [ %indvars.iv.next144.3, %.lr.ph.3 ], [ %indvars.iv.next144.4, %.lr.ph.4 ], [ %indvars.iv.next144.5, %.lr.ph.5 ]
  %i.ev = trunc nuw nsw i64 %indvars.iv.next144.lcssa to i32
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
  %.4 = phi i32 [ %i.er, %bb.s ], [ %i.eu, %.loopexit110.loopexit ], [ %i.ev, %.loopexit110.loopexit134 ] ; 2 uses
  %i.ew = icmp ult i32 %.4, 757
  br i1 %i.ew, label %bb.g, label %.loopexit110.thread

.loopexit110.thread:                              ; preds = %.preheader111, %.preheader, %.loopexit110
  %i.ex = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %scevgep, i8 noundef zeroext 0)
  %.not62 = icmp eq i8 %i.ex, 0
  br i1 %.not62, label %.loopexit114, label %bb.t

bb.t:                                             ; preds = %.loopexit110.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1854
  %i.ez = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %i.ey, i8 noundef zeroext 1)
  %.not63 = icmp eq i8 %i.ez, 0
  br i1 %.not63, label %.loopexit114, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1882 ; 2 uses
  %i.fb = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %i.fa, i8 noundef zeroext 2)
  %.not64 = icmp eq i8 %i.fb, 0
  br i1 %.not64, label %.loopexit114, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  store i32 0, ptr %i.fc, align 8, !tbaa !23
  %i.fd = load i8, ptr %i.fa, align 2, !tbaa !19
  %.not65 = icmp eq i8 %i.fd, 3
  br i1 %.not65, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1883
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !19
  %.not65.1 = icmp eq i8 %i.ff, 3
  br i1 %.not65.1, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1884
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !19
  %.not65.2 = icmp eq i8 %i.fh, 3
  br i1 %.not65.2, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1885
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !19
  %.not65.3 = icmp eq i8 %i.fj, 3
  br i1 %.not65.3, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1886
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !19
  %.not65.4 = icmp eq i8 %i.fl, 3
  br i1 %.not65.4, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1887
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !19
  %.not65.5 = icmp eq i8 %i.fn, 3
  br i1 %.not65.5, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !19
  %.not65.6 = icmp eq i8 %i.fp, 3
  br i1 %.not65.6, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1889
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !19
  %.not65.7 = icmp eq i8 %i.fr, 3
  br i1 %.not65.7, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  store i32 1, ptr %i.fc, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ad
  %i.fs = load ptr, ptr %i.ba, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.fs, ptr noundef nonnull align 1 dereferenceable(757) %scevgep, i64 757, i1 false)
  br label %.loopexit114

.loopexit114:                                     ; preds = %bb.g, %bb.k, %bb.q, %bb.n, %bb.d, %getbits.exit78.thread, %.loopexit110.thread, %bb.t, %bb.u, %.split.us, %.loopexit
  %.057 = phi i32 [ 0, %bb.t ], [ 0, %bb.d ], [ 0, %.split.us ], [ 0, %.loopexit110.thread ], [ 0, %getbits.exit78.thread ], [ 1, %.loopexit ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.057
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @build_decrypt_array(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef zeroext range(i8 0, 4) %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [18 x i32], align 16              ; 6 uses
  %i.b = alloca [18 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = zext nneg i8 %2 to i64                   ; 3 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.d ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.d ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %.not137 = icmp eq i32 %i.k, 0
  br i1 %.not137, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %i.n = icmp ugt i8 %i.m, 17
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext nneg i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !18
  store i32 0, ptr %i.g, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.h
  %indvars.iv143 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next144, %bb.h ] ; 3 uses
  %.091129 = phi i32 [ 0, %._crit_edge ], [ %.192, %bb.h ] ; 6 uses
  %.095127 = phi i32 [ 23, %._crit_edge ], [ %i.av, %bb.h ] ; 3 uses
  %.096126 = phi i32 [ 0, %._crit_edge ], [ %i.w, %bb.h ]
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next144
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = shl i32 %i.u, %.095127
  %i.w = add i32 %i.v, %.096126                   ; 5 uses
  %i.x = icmp ugt i32 %i.w, 16777216
  br i1 %i.x, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next144
  store i32 %i.w, ptr %i.y, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv143
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv143
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next144
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next144
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !18
  %i.ag = icmp samesign ugt i32 %.095127, 15
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i32 %i.w, 16                       ; 4 uses
  %i.ai = icmp samesign ult i32 %i.ah, %.091129
  br i1 %i.ai, label %.critedge, label %3

3:                                                ; preds = %bb.e
  %.not113 = icmp eq i32 %i.ah, %.091129
  br i1 %.not113, label %bb.h, label %bb.f

bb.f:                                             ; preds = %3
  %i.aj = sub nuw nsw i32 %i.ah, %.091129
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  %i.am = zext nneg i32 %.091129 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.aq = add i64 %i.ao, %i.ak                    ; 2 uses
  %i.ar = add i64 %i.ap, 256                      ; 2 uses
  %.not115 = icmp ule i64 %i.aq, %i.ar
  %i.as = icmp ugt i64 %i.aq, %i.ap
  %or.cond = and i1 %.not115, %i.as
  %i.at = icmp ugt i64 %i.ar, %i.ao
  %or.cond116 = and i1 %i.at, %or.cond
  br i1 %or.cond116, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.au = trunc nuw nsw i64 %indvars.iv.next144 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.au, i64 %i.ak, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %3, %bb.g, %bb.d
  %.192 = phi i32 [ %.091129, %bb.d ], [ %i.ah, %bb.g ], [ %.091129, %3 ]
  %i.av = add nsw i32 %.095127, -1
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 15
  br i1 %exitcond146.not, label %bb.i, label %bb.c

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.w, 16777216
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.i
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %.not138 = icmp eq i32 %i.aw, 0
  br i1 %.not138, label %.critedge, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader, %bb.m
  %i.ax = phi i32 [ %i.bn, %bb.m ], [ %i.aw, %.preheader ] ; 2 uses
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %bb.m ], [ 0, %.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv147 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19  ; 3 uses
  %.not111 = icmp eq i8 %i.az, 0
  br i1 %.not111, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph131
  %i.ba = icmp ugt i8 %i.az, 17
  br i1 %i.ba, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18 ; 2 uses
  %.not112 = icmp ult i32 %i.bd, %i.ax
  br i1 %.not112, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = trunc nuw i64 %indvars.iv147 to i32
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !18
  %i.bi = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !18
  %.pre = load i32, ptr %i.j, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph131, %bb.l
  %i.bn = phi i32 [ %i.ax, %.lr.ph131 ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next148, %i.bo
  br i1 %i.bp, label %.lr.ph131, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.f, %bb.c, %bb.j, %bb.k, %bb.m, %.preheader, %bb.i
  %.4 = phi i8 [ 0, %bb.e ], [ 1, %bb.m ], [ 0, %bb.i ], [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i8 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @getdec(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext range(i8 0, 4) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = zext nneg i8 %1 to i64                   ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.b
  store i32 1, ptr %2, align 4, !tbaa !18
  %.pr.i = load i32, ptr %0, align 8, !tbaa !22   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = icmp ugt i32 %.pr.i, 7
  br i1 %i.g, label %.lr.ph.i, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.l = phi i32 [ %.pr.i, %.lr.ph.i ], [ %i.s, %bb.c ]
  %.not.i = icmp ult ptr %i.k, %i.i
  br i1 %.not.i, label %bb.c, label %readstream.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 4, !tbaa !17
  %i.n = shl i32 %i.m, 8
  %i.o = load i8, ptr %i.k, align 1, !tbaa !19
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.j, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !20
  %i.s = add i32 %i.l, -8                         ; 4 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !22
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.u = phi i32 [ %.pr.i, %..loopexit_crit_edge ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.q, %bb.c ]
  %i.w = sub nuw nsw i32 8, %i.u
  %i.x = lshr i32 %i.v, %i.w
  %i.y = and i32 %i.x, 16776704                   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ac = lshr i32 %i.y, 16
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19  ; 2 uses
  %i.aj = add i8 %i.ai, -24
  %or.cond = icmp ult i8 %i.aj, -23
  br i1 %or.cond, label %readstream.exit, label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = icmp ult i32 %i.y, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = icmp ult i32 %i.y, %i.ao
  %. = select i1 %i.ap, i8 9, i8 10
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %i.as = icmp ult i32 %i.y, %i.ar
  br i1 %i.as, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = icmp ult i32 %i.y, %i.au
  br i1 %i.av, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = icmp ult i32 %i.y, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !18
  %i.bb = icmp ult i32 %i.y, %i.ba
  %.51 = select i1 %i.bb, i8 14, i8 15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.0 = phi i8 [ %i.ai, %bb.d ], [ %., %bb.f ], [ 13, %bb.i ], [ %.51, %bb.j ], [ 11, %bb.g ], [ 12, %bb.h ] ; 2 uses
  %i.bc = zext nneg i8 %.0 to i32                 ; 2 uses
  %i.bd = add nuw nsw i32 %i.u, %i.bc
  store i32 %i.bd, ptr %0, align 8, !tbaa !22
  %i.be = zext nneg i8 %.0 to i64                 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.c, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = sub i32 %i.y, %i.bh
  %i.bj = sub nuw nsw i32 24, %i.bc
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.be
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = add i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.b ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %.not50 = icmp ult i32 %i.bn, %i.br
  br i1 %.not50, label %bb.l, label %readstream.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !12
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  store i32 0, ptr %2, align 4, !tbaa !18
  br label %readstream.exit

readstream.exit:                                  ; preds = %bb.b, %bb.k, %bb.d, %bb.l
  %.045 = phi i32 [ %i.bv, %bb.l ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.b ]
end_hunk_0
