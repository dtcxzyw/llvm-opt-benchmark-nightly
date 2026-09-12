Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdlossls-16?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@jpeg_undifference3:bb.a
  %i.z = add nsw <4 x i32> %wide.load27, %i.w
  %i.aa = add nsw <4 x i32> %wide.load28, %i.x
  %i.ab = and <4 x i32> %i.z, splat (i32 65535)
  %i.ac = and <4 x i32> %i.aa, splat (i32 65535)
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ab, ptr %i.s, align 4, !tbaa !50
  store <4 x i32> %i.ac, ptr %i.ad, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load26, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %.022.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.pn1721.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.pn20.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %.pn1619.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %i.af = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader32, %.lr.ph.prol
  %i.ag = phi i32 [ %i.al, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader32 ]
  %.022.prol = phi i32 [ %i.ah, %.lr.ph.prol ], [ %.022.ph, %.lr.ph.preheader32 ]
  %.pn1721.prol = phi ptr [ %.012.prol, %.lr.ph.prol ], [ %.pn1721.ph, %.lr.ph.preheader32 ]
  %.pn20.prol = phi ptr [ %.013.prol, %.lr.ph.prol ], [ %.pn20.ph, %.lr.ph.preheader32 ]
  %.pn1619.prol = phi ptr [ %.014.prol, %.lr.ph.prol ], [ %.pn1619.ph, %.lr.ph.preheader32 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader32 ]
  %.012.prol = getelementptr inbounds nuw i8, ptr %.pn1721.prol, i64 4 ; 3 uses
  %.014.prol = getelementptr inbounds nuw i8, ptr %.pn1619.prol, i64 4 ; 3 uses
  %.013.prol = getelementptr inbounds nuw i8, ptr %.pn20.prol, i64 4 ; 3 uses
  %i.ah = load i32, ptr %.013.prol, align 4, !tbaa !50 ; 2 uses
  %i.ai = load i32, ptr %.014.prol, align 4, !tbaa !50
  %i.aj = add nsw i32 %i.ai, %.022.prol
  %i.ak = and i32 %i.aj, 65535
  store i32 %i.ak, ptr %.012.prol, align 4, !tbaa !50
  %i.al = add i32 %i.ag, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !73

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader32
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader32 ], [ %i.al, %.lr.ph.prol ]
  %.022.unr = phi i32 [ %.022.ph, %.lr.ph.preheader32 ], [ %i.ah, %.lr.ph.prol ]
  %.pn1721.unr = phi ptr [ %.pn1721.ph, %.lr.ph.preheader32 ], [ %.012.prol, %.lr.ph.prol ]
  %.pn20.unr = phi ptr [ %.pn20.ph, %.lr.ph.preheader32 ], [ %.013.prol, %.lr.ph.prol ]
  %.pn1619.unr = phi ptr [ %.pn1619.ph, %.lr.ph.preheader32 ], [ %.014.prol, %.lr.ph.prol ]
  %i.am = icmp ult i32 %i.af, 3
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.an = phi i32 [ %i.be, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.022 = phi i32 [ %i.ba, %.lr.ph ], [ %.022.unr, %.lr.ph.prol.loopexit ]
  %.pn1721 = phi ptr [ %.012.3, %.lr.ph ], [ %.pn1721.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn20 = phi ptr [ %.013.3, %.lr.ph ], [ %.pn20.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn1619 = phi ptr [ %.014.3, %.lr.ph ], [ %.pn1619.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.012 = getelementptr inbounds nuw i8, ptr %.pn1721, i64 4
  %.014 = getelementptr inbounds nuw i8, ptr %.pn1619, i64 4
  %.013 = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.ao = load i32, ptr %.013, align 4, !tbaa !50
  %i.ap = load i32, ptr %.014, align 4, !tbaa !50
  %i.aq = add nsw i32 %i.ap, %.022
  %i.ar = and i32 %i.aq, 65535
  store i32 %i.ar, ptr %.012, align 4, !tbaa !50
  %.012.1 = getelementptr inbounds nuw i8, ptr %.pn1721, i64 8
  %.014.1 = getelementptr inbounds nuw i8, ptr %.pn1619, i64 8
  %.013.1 = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = load i32, ptr %.013.1, align 4, !tbaa !50
  %i.at = load i32, ptr %.014.1, align 4, !tbaa !50
  %i.au = add nsw i32 %i.at, %i.ao
  %i.av = and i32 %i.au, 65535
  store i32 %i.av, ptr %.012.1, align 4, !tbaa !50
  %.012.2 = getelementptr inbounds nuw i8, ptr %.pn1721, i64 12
  %.014.2 = getelementptr inbounds nuw i8, ptr %.pn1619, i64 12
  %.013.2 = getelementptr inbounds nuw i8, ptr %.pn20, i64 12
  %i.aw = load i32, ptr %.013.2, align 4, !tbaa !50
  %i.ax = load i32, ptr %.014.2, align 4, !tbaa !50
  %i.ay = add nsw i32 %i.ax, %i.as
  %i.az = and i32 %i.ay, 65535
  store i32 %i.az, ptr %.012.2, align 4, !tbaa !50
  %.012.3 = getelementptr inbounds nuw i8, ptr %.pn1721, i64 16 ; 2 uses
  %.014.3 = getelementptr inbounds nuw i8, ptr %.pn1619, i64 16 ; 2 uses
  %.013.3 = getelementptr inbounds nuw i8, ptr %.pn20, i64 16 ; 2 uses
  %i.ba = load i32, ptr %.013.3, align 4, !tbaa !50
  %i.bb = load i32, ptr %.014.3, align 4, !tbaa !50
  %i.bc = add nsw i32 %i.bb, %i.aw
  %i.bd = and i32 %i.bc, 65535
  store i32 %i.bd, ptr %.012.3, align 4, !tbaa !50
  %i.be = add i32 %i.an, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.be, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @jpeg_undifference4(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  %i.e = add i32 %5, -1                           ; 3 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.015.prol = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.017.prol = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.016.prol = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %.016.prol, align 4, !tbaa !50 ; 2 uses
  %i.g = load i32, ptr %.017.prol, align 4, !tbaa !50
  %i.h = add i32 %i.b, %i.f
  %i.i = add i32 %i.h, %i.g
  %i.j = and i32 %i.i, 65535                      ; 2 uses
  store i32 %i.j, ptr %.015.prol, align 4, !tbaa !50
  %i.k = add i32 %5, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.026.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01325.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.pn2024.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.015.prol, %.lr.ph.prol ]
  %.pn23.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %.016.prol, %.lr.ph.prol ]
  %.pn1922.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.017.prol, %.lr.ph.prol ]
  %i.l = icmp eq i32 %5, 2
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.m = phi i32 [ %i.z, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi i32 [ %i.t, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ]
  %.01325 = phi i32 [ %i.y, %.lr.ph ], [ %.01325.unr, %.lr.ph.prol.loopexit ]
  %.pn2024 = phi ptr [ %.015.1, %.lr.ph ], [ %.pn2024.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn23 = phi ptr [ %.016.1, %.lr.ph ], [ %.pn23.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn1922 = phi ptr [ %.017.1, %.lr.ph ], [ %.pn1922.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.015 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 4
  %.017 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 4
  %.016 = getelementptr inbounds nuw i8, ptr %.pn23, i64 4
  %i.n = load i32, ptr %.016, align 4, !tbaa !50  ; 2 uses
  %i.o = load i32, ptr %.017, align 4, !tbaa !50
  %i.p = sub i32 %.01325, %.026
  %i.q = add i32 %i.p, %i.n
  %i.r = add nsw i32 %i.q, %i.o                   ; 2 uses
  %i.s = and i32 %i.r, 65535
  store i32 %i.s, ptr %.015, align 4, !tbaa !50
  %.015.1 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 8 ; 2 uses
  %.017.1 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 8 ; 2 uses
  %.016.1 = getelementptr inbounds nuw i8, ptr %.pn23, i64 8 ; 2 uses
  %i.t = load i32, ptr %.016.1, align 4, !tbaa !50 ; 2 uses
  %i.u = load i32, ptr %.017.1, align 4, !tbaa !50
  %i.v = sub i32 %i.r, %i.n
  %i.w = add i32 %i.v, %i.t
  %i.x = add i32 %i.w, %i.u
  %i.y = and i32 %i.x, 65535                      ; 2 uses
  store i32 %i.y, ptr %.015.1, align 4, !tbaa !50
  %i.z = add i32 %i.m, -2                         ; 2 uses
  %.not.1 = icmp eq i32 %i.z, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @jpeg_undifference5(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !50     ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !50
  %i.c = add nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  %i.e = add i32 %5, -1                           ; 3 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.015.prol = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.017.prol = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.016.prol = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %.016.prol, align 4, !tbaa !50 ; 2 uses
  %i.g = load i32, ptr %.017.prol, align 4, !tbaa !50
  %6 = sub i32 %i.f, %i.a
  %7 = lshr i32 %6, 1
  %i.h = add i32 %i.g, %i.c
  %i.i = add i32 %i.h, %7
  %i.j = and i32 %i.i, 65535                      ; 2 uses
  store i32 %i.j, ptr %.015.prol, align 4, !tbaa !50
  %i.k = add i32 %5, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.026.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01325.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.pn2024.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.015.prol, %.lr.ph.prol ]
  %.pn23.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %.016.prol, %.lr.ph.prol ]
  %.pn1922.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.017.prol, %.lr.ph.prol ]
  %i.l = icmp eq i32 %5, 2
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.m = phi i32 [ %i.x, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi i32 [ %i.s, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ]
  %.01325 = phi i32 [ %i.w, %.lr.ph ], [ %.01325.unr, %.lr.ph.prol.loopexit ]
  %.pn2024 = phi ptr [ %.015.1, %.lr.ph ], [ %.pn2024.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn23 = phi ptr [ %.016.1, %.lr.ph ], [ %.pn23.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn1922 = phi ptr [ %.017.1, %.lr.ph ], [ %.pn1922.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.015 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 4
  %.017 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 4
  %.016 = getelementptr inbounds nuw i8, ptr %.pn23, i64 4
  %i.n = load i32, ptr %.016, align 4, !tbaa !50  ; 2 uses
  %i.o = load i32, ptr %.017, align 4, !tbaa !50
  %8 = sub i32 %i.n, %.026
  %9 = lshr i32 %8, 1
  %i.p = add i32 %i.o, %.01325
  %i.q = add i32 %i.p, %9                         ; 2 uses
  %i.r = and i32 %i.q, 65535
  store i32 %i.r, ptr %.015, align 4, !tbaa !50
  %.015.1 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 8 ; 2 uses
  %.017.1 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 8 ; 2 uses
  %.016.1 = getelementptr inbounds nuw i8, ptr %.pn23, i64 8 ; 2 uses
  %i.s = load i32, ptr %.016.1, align 4, !tbaa !50 ; 2 uses
  %i.t = load i32, ptr %.017.1, align 4, !tbaa !50
  %10 = sub i32 %i.s, %i.n
  %11 = lshr i32 %10, 1
  %i.u = add i32 %i.t, %i.q
  %i.v = add i32 %i.u, %11
  %i.w = and i32 %i.v, 65535                      ; 2 uses
  store i32 %i.w, ptr %.015.1, align 4, !tbaa !50
  %i.x = add i32 %i.m, -2                         ; 2 uses
  %.not.1 = icmp eq i32 %i.x, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @jpeg_undifference6(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !50     ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !50
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = and i32 %i.c, 65535                      ; 3 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  %i.e = add i32 %5, -1                           ; 3 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.015.prol = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.017.prol = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.016.prol = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %.016.prol, align 4, !tbaa !50 ; 2 uses
  %i.g = load i32, ptr %.017.prol, align 4, !tbaa !50
  %6 = sub i32 %i.d, %i.a
  %7 = lshr i32 %6, 1
  %i.h = add i32 %i.f, %7
  %i.i = add i32 %i.h, %i.g
  %i.j = and i32 %i.i, 65535                      ; 2 uses
  store i32 %i.j, ptr %.015.prol, align 4, !tbaa !50
  %i.k = add i32 %5, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.026.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01325.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.pn2024.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.015.prol, %.lr.ph.prol ]
  %.pn23.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %.016.prol, %.lr.ph.prol ]
  %.pn1922.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.017.prol, %.lr.ph.prol ]
  %i.l = icmp eq i32 %5, 2
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.m = phi i32 [ %i.x, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi i32 [ %i.s, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ]
  %.01325 = phi i32 [ %i.w, %.lr.ph ], [ %.01325.unr, %.lr.ph.prol.loopexit ]
  %.pn2024 = phi ptr [ %.015.1, %.lr.ph ], [ %.pn2024.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn23 = phi ptr [ %.016.1, %.lr.ph ], [ %.pn23.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn1922 = phi ptr [ %.017.1, %.lr.ph ], [ %.pn1922.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.015 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 4
  %.017 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 4
  %.016 = getelementptr inbounds nuw i8, ptr %.pn23, i64 4
  %i.n = load i32, ptr %.016, align 4, !tbaa !50  ; 2 uses
  %i.o = load i32, ptr %.017, align 4, !tbaa !50
  %8 = sub i32 %.01325, %.026
  %9 = lshr i32 %8, 1
  %i.p = add i32 %i.n, %9
  %i.q = add i32 %i.p, %i.o
  %i.r = and i32 %i.q, 65535                      ; 2 uses
  store i32 %i.r, ptr %.015, align 4, !tbaa !50
  %.015.1 = getelementptr inbounds nuw i8, ptr %.pn2024, i64 8 ; 2 uses
  %.017.1 = getelementptr inbounds nuw i8, ptr %.pn1922, i64 8 ; 2 uses
  %.016.1 = getelementptr inbounds nuw i8, ptr %.pn23, i64 8 ; 2 uses
  %i.s = load i32, ptr %.016.1, align 4, !tbaa !50 ; 2 uses
  %i.t = load i32, ptr %.017.1, align 4, !tbaa !50
  %10 = sub i32 %i.r, %i.n
  %11 = lshr i32 %10, 1
  %i.u = add i32 %i.s, %11
  %i.v = add i32 %i.u, %i.t
  %i.w = and i32 %i.v, 65535                      ; 2 uses
  store i32 %i.w, ptr %.015.1, align 4, !tbaa !50
  %i.x = add i32 %i.m, -2                         ; 2 uses
  %.not.1 = icmp eq i32 %i.x, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @jpeg_undifference7(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !50
  %i.b = load i32, ptr %2, align 4, !tbaa !50
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = and i32 %i.c, 65535                      ; 3 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  %i.e = add i32 %5, -1                           ; 3 uses
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.014.prol = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.016.prol = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.015.prol = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %.015.prol, align 4, !tbaa !50
  %i.g = load i32, ptr %.016.prol, align 4, !tbaa !50
  %6 = add i32 %i.f, %i.d
  %7 = lshr i32 %6, 1
  %i.h = add i32 %7, %i.g
  %i.i = and i32 %i.h, 65535                      ; 2 uses
  store i32 %i.i, ptr %.014.prol, align 4, !tbaa !50
  %i.j = add i32 %5, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.01223.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %.pn1822.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.014.prol, %.lr.ph.prol ]
  %.pn21.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %.015.prol, %.lr.ph.prol ]
  %.pn1720.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.016.prol, %.lr.ph.prol ]
  %i.k = icmp eq i32 %5, 2
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.l = phi i32 [ %i.u, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.01223 = phi i32 [ %i.t, %.lr.ph ], [ %.01223.unr, %.lr.ph.prol.loopexit ]
  %.pn1822 = phi ptr [ %.014.1, %.lr.ph ], [ %.pn1822.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn21 = phi ptr [ %.015.1, %.lr.ph ], [ %.pn21.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn1720 = phi ptr [ %.016.1, %.lr.ph ], [ %.pn1720.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.014 = getelementptr inbounds nuw i8, ptr %.pn1822, i64 4
  %.016 = getelementptr inbounds nuw i8, ptr %.pn1720, i64 4
  %.015 = getelementptr inbounds nuw i8, ptr %.pn21, i64 4
  %i.m = load i32, ptr %.015, align 4, !tbaa !50
  %i.n = load i32, ptr %.016, align 4, !tbaa !50
  %8 = add i32 %i.m, %.01223
  %9 = lshr i32 %8, 1
  %i.o = add i32 %9, %i.n
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  store i32 %i.p, ptr %.014, align 4, !tbaa !50
  %.014.1 = getelementptr inbounds nuw i8, ptr %.pn1822, i64 8 ; 2 uses
  %.016.1 = getelementptr inbounds nuw i8, ptr %.pn1720, i64 8 ; 2 uses
  %.015.1 = getelementptr inbounds nuw i8, ptr %.pn21, i64 8 ; 2 uses
  %i.q = load i32, ptr %.015.1, align 4, !tbaa !50
  %i.r = load i32, ptr %.016.1, align 4, !tbaa !50
  %10 = add i32 %i.q, %i.p
  %11 = lshr i32 %10, 1
  %i.s = add i32 %11, %i.r
  %i.t = and i32 %i.s, 65535                      ; 2 uses
  store i32 %i.t, ptr %.014.1, align 4, !tbaa !50
  %i.u = add i32 %i.l, -2                         ; 2 uses
  %.not.1 = icmp eq i32 %i.u, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!24 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!25 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!27 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!28 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!29 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!30 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!31 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !15, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !16, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !17, i64 380, !17, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !18, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !19, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !20, i64 544, !21, i64 552, !22, i64 560, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624}
!32 = !{!31, !5, i64 296}
!33 = !{!31, !9, i64 0}
!34 = !{!"long", !4, i64 0}
!35 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !34, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164}
!36 = !{!35, !5, i64 40}
!37 = !{!4, !4, i64 0}
!38 = !{!35, !8, i64 0}
!39 = !{!31, !27, i64 600}
!40 = !{!"jpeg_inverse_dct", !8, i64 0, !4, i64 8, !4, i64 88, !8, i64 168, !8, i64 176, !8, i64 184}
!41 = !{!"", !40, i64 0, !4, i64 192, !8, i64 272}
!42 = !{!31, !5, i64 524}
!43 = !{!31, !5, i64 528}
!44 = !{!31, !5, i64 532}
!45 = !{!31, !5, i64 536}
!46 = !{!8, !8, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!5, !5, i64 0}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!17, !17, i64 0}
!53 = !{!31, !10, i64 8}
!54 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !34, i64 88, !34, i64 96}
!55 = !{!54, !8, i64 0}
!56 = !{!41, !8, i64 0}
!57 = distinct !{!57, !47, !48, !49}
!58 = distinct !{!58, !47, !49, !48}
!59 = !{!31, !5, i64 56}
!60 = !{!41, !8, i64 272}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !47}
!63 = distinct !{!63, !47, !48, !49}
!64 = distinct !{!64, !47, !49, !48}
!65 = distinct !{!65, !47, !48, !49}
!66 = distinct !{!66, !47, !49, !48}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47, !48, !49}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !47, !48}
!72 = distinct !{!72, !47, !48, !49}
!73 = distinct !{!73, !51}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
end_hunk_0
