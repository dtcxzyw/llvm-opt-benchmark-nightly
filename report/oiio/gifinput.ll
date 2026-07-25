inline.NumInlined: 3034
inline.NumDeleted: 916
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_:bb.a
; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #1

declare i32 @DGifGetRecordType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !94
  %i.f = tail call ptr @GifErrorString(i32 noundef %i.e)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !68
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i32 @DGifGetImageDesc(ptr noundef) local_unnamed_addr #1

declare i32 @DGifGetExtension(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @DGifGetExtensionNext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18GIFInput18read_subimage_dataEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %.not44 = icmp eq ptr %i.j, null
  br i1 %.not44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.9)
  br label %bb.ab

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge.in = phi ptr [ %i.h, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.031.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.031 = load ptr, ptr %.031.in, align 8, !tbaa !107 ; 3 uses
  %storemerge = load i32, ptr %storemerge.in, align 8, !tbaa !110 ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.w, i1 false), !tbaa !16
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.8, ptr %1, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.y, align 8, !tbaa !60
  %i.z = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull dead_on_return %1, i32 noundef 0)
  %.not45 = icmp eq i32 %i.z, 0                   ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !111
  %.fr118 = freeze i32 %i.ad                      ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !112
  %.fr117 = freeze i32 %i.af                      ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !113
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !114
  %i.aj = sext i32 %.fr117 to i64
  %i.ak = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #30 ; 7 uses
  %.not5176 = icmp slt i32 %.fr118, 1
  br i1 %.not5176, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60, label %.lr.ph79

.lr.ph79:                                         ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit
  %.not119 = icmp eq i32 %.fr118, 1               ; 2 uses
  %i.al = add nuw nsw i32 %.fr118, 1
  %i.am = lshr i32 %i.al, 1                       ; 3 uses
  %.not27.i = icmp eq i32 %.fr118, 2              ; 2 uses
  %i.an = add nuw nsw i32 %.fr118, 3
  %i.ao = lshr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp samesign ult i32 %.fr118, 5
  %i.aq = add nuw nsw i32 %.fr118, 7
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not4974 = icmp sgt i32 %.fr117, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  br i1 %.not4974, label %.lr.ph79.split.us, label %.lr.ph79.split

.lr.ph79.split.us:                                ; preds = %.lr.ph79, %.critedge53.us
  %.03477.us = phi i32 [ %2, %.critedge53.us ], [ 0, %.lr.ph79 ] ; 9 uses
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ay = invoke i32 @DGifGetLine(ptr noundef %i.ax, ptr noundef nonnull %i.ak, i32 noundef %.fr117)
          to label %bb.g unwind label %.loopexit.split.us

bb.g:                                             ; preds = %.lr.ph79.split.us
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  br i1 %.not45, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not119, label %.thread26.i.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.us = icmp samesign ugt i32 %i.am, %.03477.us
  br i1 %.not.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = sub nuw nsw i32 %.03477.us, %i.am
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = or disjoint i32 %i.bb, 1
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

bb.l:                                             ; preds = %bb.j
  br i1 %.not27.i, label %.thread26.i.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not24.i.us = icmp samesign ugt i32 %i.ao, %.03477.us
  br i1 %.not24.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = sub nuw nsw i32 %.03477.us, %i.ao
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = or disjoint i32 %i.be, 2
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

bb.o:                                             ; preds = %bb.m
  %.not25.i.us = icmp samesign ugt i32 %i.ar, %.03477.us
  %or.cond = select i1 %i.ap, i1 true, i1 %.not25.i.us
  br i1 %or.cond, label %.thread26.i.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = sub nuw nsw i32 %.03477.us, %i.ar
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %i.bi = or disjoint i32 %i.bh, 4
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

.thread26.i.us:                                   ; preds = %bb.o, %bb.l, %bb.i
  %i.bj = shl nsw i32 %.03477.us, 3
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us: ; preds = %.thread26.i.us, %bb.p, %bb.n, %bb.k, %bb.h
  %i.bk = phi i32 [ %.03477.us, %bb.h ], [ %i.bc, %bb.k ], [ %i.bf, %bb.n ], [ %i.bi, %bb.p ], [ %i.bj, %.thread26.i.us ]
  %i.bl = add nsw i32 %i.bk, %i.ah                ; 4 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !3
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %.critedge53.us

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !72
  %i.bo = icmp slt i32 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.us, label %.critedge53.us

.lr.ph.us:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 0, ptr %i.d, align 4, !tbaa !3
  br label %bb.r

.critedge53.us:                                   ; preds = %..critedge_crit_edge.us, %bb.q, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %2 = add nuw nsw i32 %.03477.us, 1              ; 2 uses
  %exitcond129.not = icmp eq i32 %2, %.fr118
  br i1 %exitcond129.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60, label %.lr.ph79.split.us, !llvm.loop !115

bb.r:                                             ; preds = %.lr.ph.us, %bb.v
  %i.bp = phi i32 [ 0, %.lr.ph.us ], [ %i.dc, %bb.v ] ; 3 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq ; 4 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16  ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %.not47.us = icmp sgt i32 %storemerge, %i.bt
  br i1 %.not47.us, label %bb.s, label %.split83.us

bb.s:                                             ; preds = %bb.r
  %i.bu = add nsw i32 %i.bp, %i.ai                ; 3 uses
  %i.bv = load i32, ptr %i.at, align 4, !tbaa !77
  %i.bw = load i32, ptr %i.au, align 4, !tbaa !71 ; 2 uses
  %i.bx = mul nsw i32 %i.bw, %i.bl
  %i.by = add nsw i32 %i.bx, %i.bu
  %i.bz = mul nsw i32 %i.by, %i.bv
  %i.ca = icmp sgt i32 %i.bu, -1
  %i.cb = icmp slt i32 %i.bu, %i.bw
  %or.cond.us = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.us, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cc = load i32, ptr %i.av, align 8, !tbaa !78
  %.not48.us = icmp eq i32 %i.cc, %i.bt
  br i1 %.not48.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = zext i8 %i.bs to i64
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %.031, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !116
  %i.cg = sext i32 %i.bz to i64                   ; 4 uses
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !16
  %i.cj = load i8, ptr %i.br, align 1, !tbaa !16
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [3 x i8], ptr %.031, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !118
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cg
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !16
  %i.cr = load i8, ptr %i.br, align 1, !tbaa !16
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [3 x i8], ptr %.031, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !119
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cg
  %i.cy = getelementptr i8, ptr %i.cx, i64 2
  store i8 %i.cv, ptr %i.cy, align 1, !tbaa !16
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cg
  %i.db = getelementptr i8, ptr %i.da, i64 3
  store i8 -1, ptr %i.db, align 1, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.dc = add nuw nsw i32 %i.bp, 1                ; 3 uses
  store i32 %i.dc, ptr %i.d, align 4, !tbaa !3
  %.not49.us = icmp slt i32 %i.dc, %.fr117
  br i1 %.not49.us, label %bb.r, label %..critedge_crit_edge.us, !llvm.loop !120

..critedge_crit_edge.us:                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.critedge53.us

.loopexit.split.us:                               ; preds = %.lr.ph79.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.lr.ph79.split:                                   ; preds = %.lr.ph79
  br i1 %.not45, label %.lr.ph79.split.split.us, label %.lr.ph79.split.split

.lr.ph79.split.split.us:                          ; preds = %.lr.ph79.split, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88
  %.03477.us87 = phi i32 [ %i.dg, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88 ], [ 0, %.lr.ph79.split ]
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.de = invoke i32 @DGifGetLine(ptr noundef %i.dd, ptr noundef nonnull %i.ak, i32 noundef %.fr117)
          to label %bb.w unwind label %.loopexit.split.split.us

bb.w:                                             ; preds = %.lr.ph79.split.split.us
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.split.us, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88: ; preds = %bb.w
  %i.dg = add nuw nsw i32 %.03477.us87, 1         ; 2 uses
  %exitcond128.not = icmp eq i32 %i.dg, %.fr118
  br i1 %exitcond128.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60, label %.lr.ph79.split.split.us, !llvm.loop !115

.loopexit.split.split.us:                         ; preds = %.lr.ph79.split.split.us
  %lpad.loopexit.us92 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.lr.ph79.split.split:                             ; preds = %.lr.ph79.split
  br i1 %.not119, label %.lr.ph79.split.split.split, label %.lr.ph79.split.split.split.us

.lr.ph79.split.split.split.us:                    ; preds = %.lr.ph79.split.split, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104
  %.03477.us99 = phi i32 [ %i.dk, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104 ], [ 0, %.lr.ph79.split.split ] ; 3 uses
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.di = invoke i32 @DGifGetLine(ptr noundef %i.dh, ptr noundef nonnull %i.ak, i32 noundef %.fr117)
          to label %bb.x unwind label %.loopexit.split.split.split.us

bb.x:                                             ; preds = %.lr.ph79.split.split.split.us
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.split.us, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.not.i.us100 = icmp samesign ugt i32 %i.am, %.03477.us99
  %.not.i.us100.not = xor i1 %.not.i.us100, true
  %brmerge = or i1 %.not.i.us100.not, %.not27.i
  %brmerge.not = xor i1 %brmerge, true
  %.not24.i.us101 = icmp samesign ugt i32 %i.ao, %.03477.us99
  %or.cond164 = select i1 %brmerge.not, i1 %.not24.i.us101, i1 false ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.dk = add nuw nsw i32 %.03477.us99, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, %.fr118
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60, label %.lr.ph79.split.split.split.us, !llvm.loop !115

.loopexit.split.split.split.us:                   ; preds = %.lr.ph79.split.split.split.us
  %lpad.loopexit.us108 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.lr.ph79.split.split.split:                       ; preds = %.lr.ph79.split.split
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.dm = invoke i32 @DGifGetLine(ptr noundef %i.dl, ptr noundef nonnull %i.ak, i32 noundef %.fr117)
          to label %bb.y unwind label %.loopexit.split.split.split

bb.y:                                             ; preds = %.lr.ph79.split.split.split
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.split.us, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60

.split.us:                                        ; preds = %bb.x, %bb.w, %bb.g, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 96
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !94
  %i.dr = invoke ptr @GifErrorString(i32 noundef %i.dq)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit unwind label %.loopexit.split-lp

_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60

.loopexit.split.split.split:                      ; preds = %.lr.ph79.split.split.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %.split.us, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.split83.us:                                      ; preds = %bb.r
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJhiiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.split83.us
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.aa:                                            ; preds = %.split83.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %.loopexit.split-lp, %.loopexit.split.split.us, %.loopexit.split.split.split.us, %.loopexit.split.split.split, %.loopexit.split.us, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.us92, %.loopexit.split.split.us ], [ %lpad.loopexit, %.loopexit.split.split.split ], [ %lpad.loopexit.us108, %.loopexit.split.split.split.us ]
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  resume { ptr, i32 } %.pn

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60: ; preds = %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88, %.critedge53.us, %bb.y, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit, %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit, %bb.aa
  %.not5172 = phi i1 [ false, %bb.aa ], [ false, %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit ], [ true, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit ], [ true, %.critedge53.us ], [ true, %bb.y ], [ true, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us88 ], [ true, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us104 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #27
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60, %bb.c
  %.6 = phi i1 [ %.not5172, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit60 ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.106", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !121
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !121
  %i.b = load ptr, ptr %4, align 8, !tbaa !55
  store ptr %i.b, ptr %3, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !60
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare i32 @DGifGetLine(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJhiiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.107", align 16 ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.b = load i8, ptr %2, align 1, !tbaa !16, !noalias !130
  %i.c = zext i8 %i.b to i32
  store i32 %i.c, ptr %6, align 16, !tbaa !16, !alias.scope !127, !noalias !124
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load i32, ptr %3, align 4, !tbaa !3, !noalias !130
  store i32 %i.e, ptr %i.d, align 16, !tbaa !16, !alias.scope !127, !noalias !124
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.g = load i32, ptr %4, align 4, !tbaa !3, !noalias !130
  store i32 %i.g, ptr %i.f, align 16, !tbaa !16, !alias.scope !127, !noalias !124
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.i = load i32, ptr %5, align 4, !tbaa !3, !noalias !130
  store i32 %i.i, ptr %i.h, align 16, !tbaa !16, !alias.scope !127, !noalias !124
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %1, i64 %i.a, i64 4370, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !124
  %i.j = load ptr, ptr %8, align 8, !tbaa !55
  store ptr %i.j, ptr %7, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  store i64 %i.m, ptr %i.k, align 8, !tbaa !60
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !55     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %8, align 8, !tbaa !55     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

end_hunk_0
begin_hunk_1_@llvm.smax.i32
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !48, i64 216}
!18 = !{!"_ZTSN11OpenImageIO4v3_18GIFInputE", !19, i64 0, !14, i64 184, !48, i64 216, !4, i64 224, !4, i64 228, !4, i64 232, !4, i64 236, !49, i64 240}
!19 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !20, i64 8, !39, i64 168}
!20 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !21, i64 64, !22, i64 72, !27, i64 96, !4, i64 120, !4, i64 124, !32, i64 128, !33, i64 136}
!21 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!22 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!27 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !34, i64 0}
!34 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !44, i64 0, !46, i64 8}
!44 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !45, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !47, i64 0}
!47 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!48 = !{!"p1 _ZTS11GifFileType", !12, i64 0}
!49 = !{!"_ZTSSt6vectorIhSaIhEE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!53 = !{!52, !11, i64 0}
!54 = !{!52, !11, i64 16}
!55 = !{!14, !11, i64 0}
!56 = !{!18, !4, i64 228}
!57 = !{!52, !11, i64 8}
!58 = !{!59, !11, i64 0}
!59 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !15, i64 8}
!60 = !{!59, !15, i64 8}
!61 = !{!62, !4, i64 0}
!62 = !{!"_ZTS11GifFileType", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16, !63, i64 24, !4, i64 32, !64, i64 40, !65, i64 72, !4, i64 80, !66, i64 88, !4, i64 96, !12, i64 104, !12, i64 112}
!63 = !{!"p1 _ZTS14ColorMapObject", !12, i64 0}
!64 = !{!"_ZTS12GifImageDesc", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !32, i64 16, !63, i64 24}
!65 = !{!"p1 _ZTS10SavedImage", !12, i64 0}
!66 = !{!"p1 _ZTS14ExtensionBlock", !12, i64 0}
!67 = !{!62, !4, i64 4}
!68 = !{!11, !11, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!19, !4, i64 20}
!72 = !{!19, !4, i64 24}
!73 = !{!19, !4, i64 28}
!74 = !{!19, !4, i64 48}
!75 = !{!19, !4, i64 44}
!76 = !{!19, !4, i64 52}
!77 = !{!19, !4, i64 68}
!78 = !{!18, !4, i64 224}
!79 = !{!18, !4, i64 232}
!80 = !{!15, !15, i64 0}
!81 = !{!37, !38, i64 0}
!82 = !{!37, !38, i64 8}
!83 = distinct !{!83, !70}
!84 = !{!37, !38, i64 16}
!85 = !{!30, !31, i64 0}
!86 = !{!30, !31, i64 8}
!87 = distinct !{!87, !70}
!88 = !{!30, !31, i64 16}
!89 = !{!25, !26, i64 0}
!90 = !{!25, !26, i64 16}
!91 = !{!20, !4, i64 60}
!92 = !{!20, !4, i64 120}
!93 = !{!18, !4, i64 236}
!94 = !{!62, !4, i64 96}
!95 = !{!96, !96, i64 0}
!96 = !{!"_ZTS13GifRecordType", !5, i64 0}
!97 = distinct !{!97, !70}
!98 = distinct !{!98, !70}
!99 = !{!62, !32, i64 56}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!26, !26, i64 0}
!103 = !{!31, !31, i64 0}
!104 = !{!38, !38, i64 0}
!105 = !{!62, !63, i64 64}
!106 = !{!62, !63, i64 24}
!107 = !{!108, !109, i64 16}
!108 = !{!"_ZTS14ColorMapObject", !4, i64 0, !4, i64 4, !32, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTS12GifColorType", !12, i64 0}
!110 = !{!108, !4, i64 0}
!111 = !{!62, !4, i64 52}
!112 = !{!62, !4, i64 48}
!113 = !{!62, !4, i64 44}
!114 = !{!62, !4, i64 40}
!115 = distinct !{!115, !70}
!116 = !{!117, !5, i64 0}
!117 = !{!"_ZTS12GifColorType", !5, i64 0, !5, i64 1, !5, i64 2}
!118 = !{!117, !5, i64 1}
!119 = !{!117, !5, i64 2}
!120 = distinct !{!120, !70}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!123 = distinct !{!123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKhRKiS9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!126 = distinct !{!126, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKhRKiS9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKhKiS4_S4_ELi4ELi0ELy4370EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!129 = distinct !{!129, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKhKiS4_S4_ELi4ELi0ELy4370EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!130 = !{!128, !125}
!131 = !{!62, !12, i64 104}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!134 = distinct !{!134, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!135 = !{!25, !26, i64 8}
!136 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!137 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!138 = distinct !{!138, !70, !139, !140}
!139 = !{!"llvm.loop.isvectorized", i32 1}
!140 = !{!"llvm.loop.unroll.runtime.disable"}
!141 = distinct !{!141, !70, !139}
!142 = distinct !{!142, !70}
!143 = distinct !{!143, !70}
!144 = distinct !{!144, !70}
!145 = distinct !{!145, !70}
!146 = distinct !{!146, !70}
!147 = distinct !{!147, !70}
!148 = distinct !{!148, !70}
!149 = distinct !{!149, !70}
!150 = !{!151, !11, i64 0}
!151 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !11, i64 0}
!152 = !{!21, !4, i64 4}
!153 = !{!154, !4, i64 32}
!154 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !151, i64 0, !21, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !32, i64 37, !32, i64 38}
!155 = !{!154, !5, i64 36}
!156 = !{!154, !32, i64 38}
!157 = distinct !{!157, !70}
!158 = distinct !{!158, !70}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKmS7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKmS7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_S3_S3_ELi4ELi0ELy17476EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!164 = distinct !{!164, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_S3_S3_ELi4ELi0ELy17476EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!165 = !{!166, !12, i64 24}
!166 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !11, i64 0, !15, i64 8, !15, i64 16, !12, i64 24}
!167 = !{!166, !11, i64 0}
!168 = !{!166, !15, i64 16}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!171 = distinct !{!171, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!172 = !{!166, !15, i64 8}
!173 = !{!174, !174, i64 0}
!174 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !12, i64 0}
!177 = distinct !{null, null}
!178 = !{!179, !4, i64 16}
!179 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !180, i64 0, !4, i64 16}
!180 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !11, i64 0, !15, i64 8}
!181 = !{!182, !182, i64 0}
!182 = !{!"long long", !5, i64 0}
!183 = !{!12, !12, i64 0}
!184 = !{!185, !182, i64 0}
!185 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !182, i64 0, !5, i64 8}
!186 = !{!187, !189}
!187 = distinct !{!187, !188, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!188 = distinct !{!188, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!189 = distinct !{!189, !190, !"_ZNK3fmt3v127context3argEi: argument 0"}
!190 = distinct !{!190, !"_ZNK3fmt3v127context3argEi"}
!191 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!192 = distinct !{!192, !70}
!193 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!194 = distinct !{!194, !70}
!195 = !{!196, !4, i64 0}
!196 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!197 = !{!198, !4, i64 12}
!198 = !{!"_ZTSN3fmt3v1212format_specsE", !196, i64 0, !4, i64 8, !4, i64 12}
!199 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!200 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!201 = distinct !{!201, !70}
!202 = !{!203, !15, i64 0}
!203 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !15, i64 0, !4, i64 8}
!204 = !{!203, !4, i64 8}
!205 = !{!206, !206, i64 0}
!206 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !12, i64 0}
!207 = !{!208, !4, i64 8}
!208 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !206, i64 0, !4, i64 8}
!209 = !{!210, !212}
!210 = distinct !{!210, !211, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!211 = distinct !{!211, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!212 = distinct !{!212, !213, !"_ZNK3fmt3v127context3argEi: argument 0"}
!213 = distinct !{!213, !"_ZNK3fmt3v127context3argEi"}
!214 = distinct !{null, null, null}
!215 = distinct !{null, null, null}
!216 = distinct !{null, null, null}
!217 = distinct !{null, null, null, null}
!218 = distinct !{null, null}
!219 = distinct !{null, null, null}
!220 = distinct !{null, null}
!221 = distinct !{!221, !70, !139, !140}
!222 = !{!"branch_weights", i32 4, i32 28}
!223 = distinct !{!223, !70, !139, !140}
!224 = distinct !{!224, !225}
!225 = !{!"llvm.loop.unroll.disable"}
!226 = distinct !{!226, !70}
!227 = distinct !{!227, !70, !139}
!228 = distinct !{!228, !70}
!229 = distinct !{!229, !70}
!230 = !{!231, !232, i64 0}
!231 = !{!"_ZTSSt6locale", !232, i64 0}
!232 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!233 = !{!234, !15, i64 16}
!234 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !235, i64 8, !15, i64 16, !235, i64 24, !237, i64 32}
!235 = !{!"p2 _ZTSNSt6locale5facetE", !236, i64 0}
!236 = !{!"any p2 pointer", !12, i64 0}
!237 = !{!"p2 omnipotent char", !236, i64 0}
!238 = !{!234, !235, i64 8}
!239 = !{!240, !240, i64 0}
!240 = !{!"p1 _ZTSNSt6locale5facetE", !12, i64 0}
!241 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!242 = distinct !{!242, !70}
!243 = !{!244, !32, i64 0}
!244 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !32, i64 0, !5, i64 1}
!245 = !{!244, !5, i64 1}
!246 = !{!198, !4, i64 8}
!247 = distinct !{null, null}
!248 = distinct !{null, null}
!249 = distinct !{!249, !70}
!250 = distinct !{null, null, null, null}
!251 = distinct !{null, null, null, null, null}
!252 = distinct !{!252, !70}
!253 = distinct !{null, null, null}
!254 = distinct !{null, null, null, null}
!255 = distinct !{!255, !70}
!256 = !{!257, !4, i64 8}
!257 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!260 = distinct !{!260, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!261 = distinct !{null}
!262 = distinct !{null}
!263 = !{!264, !264, i64 0}
!264 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !12, i64 0}
!265 = !{!266, !174, i64 16}
!266 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !267, i64 0, !174, i64 16}
!267 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !5, i64 0}
!268 = !{!269, !264, i64 8}
!269 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !270, i64 0, !264, i64 8, !14, i64 16, !14, i64 48, !14, i64 80}
!270 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !176, i64 0}
!271 = !{i64 4}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!274 = distinct !{!274, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!277 = distinct !{!277, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!278 = distinct !{!278, !70}
!279 = distinct !{!279, !70}
!280 = distinct !{!280, !70}
!281 = !{!282, !282, i64 0}
!282 = !{!"p1 int", !12, i64 0}
!283 = !{!284, !284, i64 0}
!284 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !12, i64 0}
!285 = !{!286, !286, i64 0}
!286 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !12, i64 0}
!287 = !{!288, !282, i64 0}
!288 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !282, i64 0, !284, i64 8, !286, i64 16}
!289 = distinct !{null, null, null, null}
!290 = distinct !{!290, !70}
!291 = !{!288, !284, i64 8}
!292 = !{i64 8}
!293 = !{!288, !286, i64 16}
!294 = distinct !{null, null, null, null}
!295 = distinct !{null, null, null, null}
!296 = distinct !{!296, !70}
!297 = distinct !{!297, !70, !139, !140}
!298 = distinct !{!298, !70, !139, !140}
!299 = distinct !{!299, !225}
!300 = distinct !{!300, !70, !139}
!301 = distinct !{!301, !70}
!302 = !{!303, !11, i64 0}
!303 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !11, i64 0, !11, i64 8, !4, i64 16}
!304 = !{!303, !11, i64 8}
!305 = !{!303, !4, i64 16}
!306 = distinct !{!306, !70}
!307 = distinct !{!307, !70}
!308 = distinct !{!308, !70}
!309 = !{!310, !12, i64 24}
!310 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !282, i64 0, !15, i64 8, !15, i64 16, !12, i64 24}
!311 = !{!310, !282, i64 0}
!312 = !{!310, !15, i64 16}
!313 = !{!310, !15, i64 8}
!314 = distinct !{null}
!315 = distinct !{null}
!316 = distinct !{!316, !70, !139, !140}
!317 = distinct !{!317, !70, !139, !140}
!318 = distinct !{!318, !225}
!319 = distinct !{!319, !70, !139}
end_hunk_1
