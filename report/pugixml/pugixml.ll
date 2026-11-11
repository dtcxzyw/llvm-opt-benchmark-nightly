Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_:bb.a
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ugt i64 %i.f, 3
  %or.cond7 = and i1 %i.j, %i.i
  br i1 %or.cond7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %.164 = phi ptr [ %i.ab, %bb.c ], [ %i.e, %bb.b ] ; 6 uses
  %.161 = phi i64 [ %i.ac, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.aa, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.k = load i32, ptr %.164, align 4             ; 2 uses
  %i.l = and i32 %i.k, -2139062144
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.n = and i32 %i.k, 127
  store i32 %i.n, ptr %.1, align 4, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.164, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !86
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.o, align 4, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.164, i64 2
  %i.u = load i8, ptr %i.t, align 2, !tbaa !86
  %i.v = zext i8 %i.u to i32
  store i32 %i.v, ptr %i.s, align 4, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.164, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !86
  %i.z = zext i8 %i.y to i32
  store i32 %i.z, ptr %i.w, align 4, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 2 uses
  %i.ac = add i64 %.161, -4                       ; 3 uses
  %.old6 = icmp ugt i64 %i.ac, 3
  br i1 %.old6, label %.preheader, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ad = and i32 %i.b, 224
  %i.ae = icmp eq i32 %i.ad, 192
  %i.af = icmp ne i64 %.06073, 1
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !86
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 192
  %i.ak = icmp eq i32 %i.aj, 128
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw nsw i32 %i.b, 6
  %i.am = and i32 %i.al, 1984
  %i.an = and i32 %i.ai, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  store i32 %i.ao, ptr %.074, align 4, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.ar = add i64 %.06073, -2
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = and i32 %i.b, 240
  %i.at = icmp eq i32 %i.as, 224
  %i.au = icmp ugt i64 %.06073, 2
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !86
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 192
  %i.az = icmp eq i32 %i.ay, 128
  br i1 %i.az, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !86
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = shl nuw nsw i32 %i.b, 12
  %i.bg = and i32 %i.bf, 61440
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = and i32 %i.bc, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %.074, align 4, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.06372, i64 3
  %i.bo = add i64 %.06073, -3
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bp = and i32 %i.b, 248
  %i.bq = icmp eq i32 %i.bp, 240
  %i.br = icmp ugt i64 %.06073, 3
  %or.cond5 = and i1 %i.br, %i.bq
  br i1 %or.cond5, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !86
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = and i32 %i.bu, 192
  %i.bw = icmp eq i32 %i.bv, 128
  br i1 %i.bw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !86
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = and i32 %i.bz, 192
  %i.cb = icmp eq i32 %i.ca, 128
  br i1 %i.cb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.06372, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !86
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = and i32 %i.ce, 192
  %i.cg = icmp eq i32 %i.cf, 128
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = shl nuw nsw i32 %i.b, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.bu, 12
  %i.ck = and i32 %i.cj, 258048
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = shl nuw nsw i32 %i.bz, 6
  %i.cn = and i32 %i.cm, 4032
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = and i32 %i.ce, 63
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.074, align 4, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.06372, i64 4
  %i.ct = add i64 %.06073, -4
  br label %.critedge

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.cv = add i64 %.06073, -1
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %bb.f, %bb.o, %bb.p, %bb.j, %bb.b
  %.265 = phi ptr [ %i.cs, %bb.o ], [ %i.cu, %bb.p ], [ %i.e, %bb.b ], [ %i.aq, %bb.f ], [ %i.bn, %bb.j ], [ %.164, %.preheader ], [ %i.ab, %bb.c ]
  %.262 = phi i64 [ %i.ct, %bb.o ], [ %i.cv, %bb.p ], [ %i.f, %bb.b ], [ %i.ar, %bb.f ], [ %i.bo, %bb.j ], [ %.161, %.preheader ], [ %i.ac, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.cr, %bb.o ], [ %.074, %bb.p ], [ %i.d, %bb.b ], [ %i.ap, %bb.f ], [ %i.bm, %bb.j ], [ %.1, %.preheader ], [ %i.aa, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.262, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.2, %.critedge ]
  ret ptr %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #33

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %3 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %4 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %5 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %6 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.ah, %bb.j ]
  %7 = phi i64 [ %i.b, %.lr.ph ], [ %.pre-phi8, %bb.j ]
  %8 = phi i64 [ %i.a, %.lr.ph ], [ %.pre-phi, %bb.j ]
  %.05 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.j ]  ; 12 uses
  %.0224 = phi ptr [ %1, %.lr.ph ], [ %.123, %bb.j ] ; 8 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.05, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.0224, i64 -16 ; 2 uses
  %i.k = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.05) ; 2 uses
  %spec.select.i = select i1 %i.k, ptr %i.i, ptr %.05 ; 2 uses
  %spec.select12.i = select i1 %i.k, ptr %.05, ptr %i.i ; 2 uses
  %i.l = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %spec.select12.i)
  %.1.i = select i1 %i.l, ptr %i.j, ptr %spec.select12.i ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i)
  %.2.i = select i1 %i.m, ptr %spec.select.i, ptr %.1.i ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.2.i, align 8, !tbaa !115 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload, ptr %6, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.f, align 8
  %i.n = icmp ult ptr %.05, %.0224
  br i1 %i.n, label %.lr.ph.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit

.preheader.i:                                     ; preds = %bb.g
  %.not5.i = icmp eq ptr %.05, %.129.i
  br i1 %.not5.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.g
  %.0253.i = phi ptr [ %.1.i25, %bb.g ], [ %.0224, %bb.b ] ; 3 uses
  %.0262.i = phi ptr [ %.127.i, %bb.g ], [ %.05, %bb.b ] ; 10 uses
  %.0281.i = phi ptr [ %.129.i, %bb.g ], [ %.05, %bb.b ] ; 5 uses
  %i.o = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.0262.i, align 8, !tbaa !111
  %i.r = icmp eq ptr %i.q, %.sroa.0.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %.0262.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %.sroa.2.0.copyload
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.0281.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.0281.i, i64 16, i1 false), !tbaa.struct !193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0281.i, ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %.0253.i, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, i64 16, i1 false), !tbaa.struct !193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.129.i = phi ptr [ %.0281.i, %bb.c ], [ %i.w, %bb.e ], [ %.0281.i, %bb.f ] ; 3 uses
  %.127.i = phi ptr [ %i.p, %bb.c ], [ %i.x, %bb.e ], [ %.0262.i, %bb.f ] ; 2 uses
  %.1.i25 = phi ptr [ %.0253.i, %bb.c ], [ %.0253.i, %bb.e ], [ %i.y, %bb.f ] ; 6 uses
  %i.z = icmp ult ptr %.127.i, %.1.i25
  br i1 %i.z, label %.lr.ph.i, label %.preheader.i, !llvm.loop !637

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.07.i = phi ptr [ %i.ab, %.lr.ph8.i ], [ %.05, %.preheader.i ] ; 3 uses
  %.0246.i = phi ptr [ %i.aa, %.lr.ph8.i ], [ %.1.i25, %.preheader.i ]
  %i.aa = getelementptr inbounds i8, ptr %.0246.i, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.07.i, i64 16, i1 false), !tbaa.struct !193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.07.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.129.i
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i, !llvm.loop !638

_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit: ; preds = %.lr.ph8.i, %bb.b, %.preheader.i
  %.025.lcssa16.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %.1.i25, %.lr.ph8.i ] ; 3 uses
  %.024.lcssa.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %i.aa, %.lr.ph8.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ac = ptrtoint ptr %.024.lcssa.i to i64       ; 2 uses
  %i.ad = sub i64 %i.ac, %7
  %i.ae = ptrtoint ptr %.025.lcssa16.i to i64     ; 2 uses
  %i.af = sub i64 %8, %i.ae
  %i.ag = icmp sgt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %.025.lcssa16.i, ptr noundef %.0224)
  %.pre7 = ptrtoint ptr %.05 to i64
  br label %bb.j

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef nonnull %.05, ptr noundef %.024.lcssa.i)
  %.pre = ptrtoint ptr %.0224 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8 = phi i64 [ %i.ae, %bb.i ], [ %.pre7, %bb.h ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.123 = phi ptr [ %.0224, %bb.i ], [ %.024.lcssa.i, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %.025.lcssa16.i, %bb.i ], [ %.05, %bb.h ] ; 2 uses
  %9 = sub i64 %.pre-phi, %.pre-phi8
  %i.ah = ashr exact i64 %9, 4                    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 16
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !639

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.022.lcssa = phi ptr [ %1, %bb.a ], [ %.123, %bb.j ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.j ] ; 3 uses
  %i.aj = icmp eq ptr %.0.lcssa, %.022.lcssa
  %.0164.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %.not5.i26 = icmp eq ptr %.0164.i, %.022.lcssa
  %or.cond.i = select i1 %i.aj, i1 true, i1 %.not5.i26
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge, %.critedge.i.loopexit
  %.0166.i = phi ptr [ %.016.i, %.critedge.i.loopexit ], [ %.0164.i, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0166.i, i64 16, i1 false), !tbaa.struct !193
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph7.i, %bb.k
  %.01.i = phi ptr [ %i.ak, %bb.k ], [ %.0166.i, %.lr.ph7.i ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.01.i, i64 -16 ; 5 uses
  %i.al = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
  br i1 %i.al, label %bb.k, label %.critedge.i.loopexit

bb.k:                                             ; preds = %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !193
  %i.am = icmp ugt ptr %i.ak, %.0.lcssa
  br i1 %i.am, label %.lr.ph.i28, label %.critedge.i.loopexit, !llvm.loop !640

.critedge.i.loopexit:                             ; preds = %.lr.ph.i28, %bb.k
  %.0.lcssa.i.ph = phi ptr [ %.01.i, %.lr.ph.i28 ], [ %i.ak, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i.ph, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %.016.i = getelementptr inbounds nuw i8, ptr %.0166.i, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %.016.i, %.022.lcssa
  br i1 %.not.i27, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i, !llvm.loop !641

_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit: ; preds = %.critedge.i.loopexit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !115
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

_ZNK4pugi10xpath_node4nodeEv.exit.i:              ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre.i.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117  ; 3 uses
  %i.g = lshr i64 %i.f, 8
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !117
  %i.m = and i64 %i.l, 64
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
  %.not22.i = icmp ne ptr %i.p, null
  %i.q = and i64 %i.f, 96
  %i.r = icmp eq i64 %i.q, 0
  %or.cond.i = and i1 %i.r, %.not22.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %.not23.i = icmp ne ptr %i.t, null
  %i.u = and i64 %i.f, 80
  %i.v = icmp eq i64 %i.u, 0
  %or.cond27.i = and i1 %i.v, %.not23.i
  br i1 %or.cond27.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.h:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !119 ; 5 uses
  %.not21.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not21.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !124 ; 3 uses
  %i.x = lshr i64 %i.w, 8
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !117
  %i.ad = and i64 %i.ac, 64
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.w, 96
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = and i64 %i.w, 80
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !85
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ null, %bb.g ], [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  %.not.i.i.i36 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i37 = load ptr, ptr %5, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  %i.ap = load i64, ptr %1, align 8, !tbaa !115
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

_ZNK4pugi10xpath_node4nodeEv.exit.i38:            ; preds = %bb.o, %bb.n
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ %.pre.i.i37, %bb.n ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i39 = icmp eq ptr %i.ar, null
  br i1 %.not.i39, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !117 ; 3 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !117
  %i.az = and i64 %i.ay, 64
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !116 ; 2 uses
  %.not22.i41 = icmp ne ptr %i.bc, null
  %i.bd = and i64 %i.as, 96
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond.i42 = and i1 %i.be, %.not22.i41
  br i1 %or.cond.i42, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118 ; 2 uses
  %.not23.i43 = icmp ne ptr %i.bg, null
  %i.bh = and i64 %i.as, 80
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond27.i44 = and i1 %i.bi, %.not23.i43
  br i1 %or.cond27.i44, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.s:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.an, align 8, !tbaa !119 ; 4 uses
  %.not21.i46 = icmp eq ptr %.sroa.0.0.copyload.i.i45, null
  br i1 %.not21.i46, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread, label %bb.t

end_hunk_0
begin_hunk_1_@_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_:bb.a
bb.d:                                             ; preds = %.lr.ph.i8.i
  %i.bv = add nuw i64 %.01013.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bv, %.fr13
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i8.i, !llvm.loop !20

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.preheader, %bb.d
  %.01013.i.i = phi i64 [ %i.bv, %bb.d ], [ 0, %.lr.ph.i8.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.01013.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %.fr, i64 %.01013.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !86
  %.not.i9.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not.i9.i, label %bb.d, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

._crit_edge.i.i.loopexit:                         ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.fr13
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !86
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

_ZNK4pugi13xml_attribute14next_attributeEv.exit:  ; preds = %.lr.ph.i8.i, %.lr.ph.i.1.i, %.lr.ph.i.2.i, %.lr.ph.i.3.i, %.lr.ph.i.4.i, %bb.c, %_ZNK4pugi13xml_attribute4nameEv.exit.i, %._crit_edge.i.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge3, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %2, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.cf, ptr %4, align 8
  %.not.i4 = icmp eq ptr %i.cf, null
  br i1 %.not.i4, label %.loopexit.sink.split, label %_ZNK4pugi13xml_attribute4nameEv.exit.i, !llvm.loop !736

.loopexit.sink.split:                             ; preds = %_ZNK4pugi13xml_attribute14next_attributeEv.exit, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us, %_ZNK4pugi8xml_node15first_attributeEv.exit, %bb.a
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.loopexit, %._crit_edge.i.i.us, %_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us, %.loopexit.sink.split
  %i.cg = load ptr, ptr %4, align 8
  ret ptr %i.cg
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270  ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !277
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 4
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 4
  %i.s = add nsw i64 %i.i, %i.r                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.n
  br i1 %i.t, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.u = shl i64 %i.s, 4                          ; 4 uses
  %i.v = add i64 %i.m, 7
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !224 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre30.i = load ptr, ptr %3, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !250
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = sub i64 %.pre.i, %i.w
  %i.y = add i64 %i.x, %i.u                       ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !223    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !250 ; 2 uses
  %.not24.i = icmp ugt i64 %i.y, %i.ab
  br i1 %.not24.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.y, ptr %.phi.trans.insert.i, align 8, !tbaa !224
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ac = phi i64 [ %.pre32.i, %._crit_edge.i ], [ %i.ab, %bb.d ]
  %i.ad = phi ptr [ %.pre30.i, %._crit_edge.i ], [ %i.z, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = add i64 %.pre.i, %i.u                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre.i
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add i64 %i.u, 1024
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 4096) ; 2 uses
  %i.ak = add i64 %i.aj, 16
  %i.al = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.am = tail call noundef ptr %i.al(i64 noundef %i.ak), !inline_history !51 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.am, null
  br i1 %.not23.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ao, null
  br i1 %.not24.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 1, !tbaa !251
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !250
  store ptr %i.am, ptr %3, align 8, !tbaa !223
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i: ; preds = %bb.k, %bb.g
  %.1.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ar, %bb.k ] ; 5 uses
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr nonnull readonly align 1 %i.e, i64 %i.w, i1 false)
  %i.as = load ptr, ptr %3, align 8, !tbaa !223
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !240 ; 2 uses
  %.not26.i = icmp eq ptr %i.aw, null
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.ax(ptr noundef nonnull %i.at), !inline_history !52
  %i.ay = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !240
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i, %bb.m, %bb.n, %bb.l
  %.1.i.ph = phi ptr [ %.1.i.i, %bb.l ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %.1.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i ], [ %i.e, %bb.e ] ; 2 uses
  store ptr %.1.i.ph, ptr %i.d, align 8, !tbaa !270
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.h ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !271
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.q
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !277
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %i.bb = phi ptr [ %i.az, %bb.o ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bb, ptr align 8 %1, i64 %i.q, i1 false)
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.q
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !271
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.p, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !275
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !270
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !271 ; 2 uses
  %.pre54 = ptrtoint ptr %.pre53 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 32
  br i1 %i.j, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr %1, ptr %3, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !266
  %i.l = lshr exact i64 %i.i, 4
  %i.m = lshr i64 %i.i, 5
  %i.n = add nuw nsw i64 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i64 [ 1, %bb.c ], [ %i.p, %bb.d ]   ; 4 uses
  %i.o = icmp ult i64 %.029, %i.n
  %i.p = shl i64 %.029, 1
  br i1 %i.o, label %bb.d, label %bb.e, !llvm.loop !737

bb.e:                                             ; preds = %bb.d
  %i.q = shl i64 %.029, 3                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !224  ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250
  %.not.i = icmp ugt i64 %i.t, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.q, 1024
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 4096) ; 2 uses
  %i.ab = add i64 %i.aa, 16
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ad = invoke noundef ptr %i.ac(i64 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 5 uses

.noexc:                                           ; preds = %bb.g
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225 ; 2 uses
  %.not24.i = icmp eq ptr %i.af, null
  br i1 %.not24.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.af, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.j:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !240
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ah, align 8, !tbaa !250
  store ptr %i.ad, ptr %1, align 8, !tbaa !223
  store i64 %i.q, ptr %i.r, align 8, !tbaa !224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.f, %bb.j
  %.1.i = phi ptr [ %i.y, %bb.f ], [ %i.ai, %bb.j ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1.i, i8 0, i64 %i.q, i1 false)
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !270 ; 4 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not3246 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not3246, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.al = add i64 %.029, -1                       ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.026.lcssa = phi ptr [ %i.aj, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ]
  store ptr %.026.lcssa, ptr %i.c, align 8, !tbaa !271
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread
  %.048 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bl, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 4 uses
  %.02647 = phi ptr [ %i.aj, %.lr.ph ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %.noexc36, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc36.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.thread:                                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.m

.noexc36:                                         ; preds = %bb.k
  %i.an = load i64, ptr %.048, align 8, !tbaa !115 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not35 = icmp eq i64 %i.an, 0
  br i1 %.not35, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc36.thread, %.noexc36
  %i.ap = phi ptr [ %.sroa.0.0.copyload.i, %.noexc36.thread ], [ %i.ao, %.noexc36 ] ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = lshr i32 %i.ar, 16
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, -2048144789              ; 2 uses
  %i.av = lshr i32 %i.au, 13
  %i.aw = xor i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, -1028477387              ; 2 uses
  %i.ay = lshr i32 %i.ax, 16
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = and i64 %i.al, %i.ba
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.02733.i = phi i64 [ 0, %bb.m ], [ %i.bg, %bb.p ]
  %.02832.i = phi i64 [ %i.bb, %bb.m ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq ptr %i.bd, %i.ap
  br i1 %i.bf, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = add i64 %.02733.i, 1                    ; 3 uses
  %i.bh = add i64 %i.bg, %.02832.i
  %i.bi = and i64 %i.bh, %i.al
  %.not.not.i = icmp ugt i64 %i.bg, %i.al
  br i1 %.not.not.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.n, !llvm.loop !738

bb.q:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  store ptr %i.ap, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.02647, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02647, ptr noundef nonnull align 8 dereferenceable(16) %.048, i64 16, i1 false), !tbaa.struct !193
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.g
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %lpad.loopexit.split-lp76

_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread: ; preds = %bb.p, %bb.o, %bb.q, %.noexc36
  %.1 = phi ptr [ %i.bk, %bb.q ], [ %.02647, %.noexc36 ], [ %.02647, %bb.o ], [ %.02647, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.048, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not32 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not32, label %._crit_edge, label %bb.k, !llvm.loop !739

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread: ; preds = %bb.h, %bb.i, %._crit_edge
  %i.bn = load ptr, ptr %1, align 8, !tbaa !223   ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, %.noexc.i
  %.010.i.i = phi ptr [ %i.bp, %.noexc.i ], [ %i.bn, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread ] ; 2 uses
  %i.bp = load ptr, ptr %.010.i.i, align 8, !tbaa !240 ; 2 uses
  %i.bq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.bq(ptr noundef nonnull %.010.i.i)
          to label %.noexc.i unwind label %bb.r, !inline_history !39

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i37 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i37, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !40

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread
  store ptr %i.bo, ptr %1, align 8, !tbaa !223
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !224
  store i64 %i.bu, ptr %i.r, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge51, %bb.b
  %.pre-phi = phi i64 [ %.pre54, %._crit_edge51 ], [ %i.g, %bb.b ] ; 2 uses
  %i.bv = phi ptr [ %.pre53, %._crit_edge51 ], [ %i.d, %bb.b ] ; 3 uses
  %i.bw = phi ptr [ %.pre, %._crit_edge51 ], [ %i.f, %bb.b ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %.pre-phi, %i.by
  %i.ca = icmp sgt i64 %i.bz, 16
  br i1 %i.ca, label %.lr.ph73, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph73
  %i.cb = ptrtoint ptr %i.ce to i64
  %i.cc = sub i64 %.pre-phi, %i.cb
  %i.cd = icmp sgt i64 %i.cc, 16
  br i1 %i.cd, label %.lr.ph73, label %.critedge.i, !llvm.loop !740

.lr.ph73:                                         ; preds = %bb.s, %bb.t
  %.019.i71 = phi ptr [ %i.ce, %bb.t ], [ %i.bw, %bb.s ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.019.i71, i64 16 ; 4 uses
  %i.cf = load <2 x ptr>, ptr %.019.i71, align 8
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8
  %i.ch = icmp ne <2 x ptr> %i.cf, %i.cg          ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %i.ck = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %i.ck, label %bb.t, label %..critedge.i_crit_edge, !llvm.loop !740

..critedge.i_crit_edge:                           ; preds = %.lr.ph73
  br label %.critedge.i, !llvm.loop !740

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %bb.s
  %.019.i.lcssa = phi ptr [ %.019.i71, %..critedge.i_crit_edge ], [ %i.bw, %bb.s ], [ %i.ce, %bb.t ] ; 5 uses
  %i.cl = icmp eq ptr %.019.i.lcssa, %i.bv
  br i1 %i.cl, label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %.12022.i = getelementptr inbounds nuw i8, ptr %.019.i.lcssa, i64 16 ; 2 uses
  %.not23.i38 = icmp eq ptr %.12022.i, %i.bv
  br i1 %.not23.i38, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %.12026.i = phi ptr [ %.120.i, %bb.v ], [ %.12022.i, %.preheader.i ] ; 3 uses
  %.025.i = phi ptr [ %.1.i39, %bb.v ], [ %.019.i.lcssa, %.preheader.i ] ; 3 uses
  %i.cm = load <2 x ptr>, ptr %.12026.i, align 8
  %i.cn = load <2 x ptr>, ptr %.025.i, align 8
  %i.co = icmp ne <2 x ptr> %i.cm, %i.cn          ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = extractelement <2 x i1> %i.co, i64 1
  %i.cr = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.12026.i, i64 16, i1 false), !tbaa.struct !193
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %.1.i39 = phi ptr [ %i.cs, %bb.u ], [ %.025.i, %.lr.ph.i ] ; 2 uses
  %.120.i = getelementptr inbounds nuw i8, ptr %.12026.i, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %.120.i, %i.bv
  br i1 %.not.i40, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !741

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.019.i.lcssa, %.preheader.i ], [ %.1.i39, %bb.v ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit

_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit: ; preds = %.critedge.i, %._crit_edge.i
  %.018.i = phi ptr [ %i.ct, %._crit_edge.i ], [ %.019.i.lcssa, %.critedge.i ]
  store ptr %.018.i, ptr %i.bx, align 8, !tbaa !271
  br label %bb.w

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node15apply_predicateERNS1_18xpath_node_set_rawEmRKNS1_11xpath_stackEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef range(i64 -576460752303423488, 576460752303423488) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %7 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %8 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !270 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.c = ptrtoint ptr %.val15 to i64
  %i.d = ptrtoint ptr %.val14 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 3 uses
  %i.g = icmp eq i64 %i.f, %2
  br i1 %i.g, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !247
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 6 uses
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i64 %i.f, %2                     ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !742
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !193
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.o, align 8, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.m, ptr %i.p, align 8, !tbaa !255
  %i.q = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !742 ; 4 uses
  %i.r = fcmp ult double %i.q, 1.000000e+00
  %i.s = uitofp i64 %i.m to double
  %i.t = fcmp ugt double %i.q, %i.s
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = fptoui double %i.q to i64                ; 2 uses
  %i.v = uitofp i64 %i.u to double
  %i.w = fcmp oeq double %i.q, %i.v
  br i1 %i.w, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr [16 x i8], ptr %i.n, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %i.z, %bb.e ], [ %i.n, %bb.d ]
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.l, i64 1
  %.val = load i8, ptr %i.aa, align 1, !tbaa !246
  %i.ab = icmp eq i8 %.val, 2
  %i.ac = sub nsw i64 %i.f, %2                    ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %2 ; 15 uses
  %.not.i45 = icmp eq ptr %i.ad, %.val15          ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i45, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %4, label %.lr.ph49.split.us, label %.lr.ph49.split

.lr.ph49.split.us:                                ; preds = %.lr.ph49, %.thread.us
  %.020.i48.us = phi ptr [ %i.aj, %.thread.us ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.022.i46.us = phi i64 [ %i.ak, %.thread.us ], [ 1, %.lr.ph49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %.020.i48.us, i64 16, i1 false), !tbaa.struct !193
  store i64 %.022.i46.us, ptr %i.ae, align 8, !tbaa !254
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !255
  %i.ag = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !743
  %i.ah = uitofp i64 %.022.i46.us to double
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph49.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.i48.us, i64 16 ; 2 uses
  %i.ak = add i64 %.022.i46.us, 1
  %.val23.i.us = load ptr, ptr %i.b, align 8, !tbaa !271
  %.not.i.us = icmp eq ptr %i.aj, %.val23.i.us
  br i1 %.not.i.us, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph49.split.us, !llvm.loop !744

._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us: ; preds = %.lr.ph49.split.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.020.i48.us, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit

.lr.ph49.split:                                   ; preds = %.lr.ph49, %.thread
  %.020.i48 = phi ptr [ %i.aq, %.thread ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.021.i47 = phi ptr [ %.2.i29, %.thread ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.022.i46 = phi i64 [ %i.ar, %.thread ], [ 1, %.lr.ph49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %.020.i48, i64 16, i1 false), !tbaa.struct !193
  store i64 %.022.i46, ptr %i.ae, align 8, !tbaa !254
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !255
  %i.am = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !743
  %i.an = uitofp i64 %.022.i46 to double
  %i.ao = fcmp oeq double %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph49.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.021.i47, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.021.i47, ptr noundef nonnull align 8 dereferenceable(16) %.020.i48, i64 16, i1 false), !tbaa.struct !193
  br label %.thread

.thread:                                          ; preds = %.lr.ph49.split, %bb.h
  %.2.i29 = phi ptr [ %i.ap, %bb.h ], [ %.021.i47, %.lr.ph49.split ] ; 2 uses
end_hunk_1
