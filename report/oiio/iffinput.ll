Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffinput?download=true
inline.NumInlined: 3636
inline.NumDeleted: 1091
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput16read_native_tileEiiiiiPv:bb.a
bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34: ; preds = %bb.h
  br i1 %i.t, label %bb.j, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.j:                                             ; preds = %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !337
  %i.y = sub nsw i32 %3, %i.x                     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !338
  %i.ab = sub i32 %4, %i.aa                       ; 5 uses
  %i.ac = icmp slt i32 %i.y, 0
  br i1 %i.ac, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134
  %i.af = icmp sge i32 %i.y, %i.ae
  %i.ag = icmp slt i32 %i.ab, 0
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !135
  %.not = icmp slt i32 %i.ab, %i.ai
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38)
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !122 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.am = load i16, ptr %i.al, align 2, !tbaa !123 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.ab, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !111
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ao)
  %i.ar = sub nsw i32 %.sroa.speculated, %i.ab    ; 2 uses
  %i.as = zext i16 %i.ak to i64
  %i.at = zext i16 %i.am to i64
  %i.au = mul nuw nsw i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !65
  %i.ax = lshr i8 %i.aw, 3
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !67
  %i.bb = zext i8 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !66
  %.not.i.i = icmp eq i8 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = lshr i8 %i.bg, 3
  %narrow.i.i = select i1 %.not.i.i, i8 0, i8 %i.bh
  %i.bi = zext nneg i8 %narrow.i.i to i64
  %i.bj = add nuw nsw i64 %i.bc, %i.bi
  %i.bk = mul nuw nsw i64 %i.au, %i.bj
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.bm = icmp sgt i32 %i.ar, 0
  br i1 %i.bm, label %.lr.ph, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

.lr.ph:                                           ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !110 ; 2 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = zext i16 %i.ak to i32
  %i.bt = add nuw nsw i32 %i.y, %i.bs
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bt)
  %i.bu = sub nsw i32 %.sroa.speculated47, %i.y
  %i.bv = sext i32 %i.bu to i64
  %i.bw = zext nneg i32 %i.ab to i64
  %i.bx = sext i32 %i.bo to i64
  %i.by = zext nneg i32 %i.y to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.03256 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.o ] ; 2 uses
  %i.bz = load i16, ptr %i.aj, align 4, !tbaa !122
  %i.ca = zext i16 %i.bz to i32
  %i.cb = mul nuw nsw i32 %.03256, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = load i8, ptr %i.av, align 8, !tbaa !65
  %i.ce = lshr i8 %i.cd, 3
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = load i8, ptr %i.az, align 1, !tbaa !67
  %i.ch = zext i8 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.cf, %i.ch
  %i.cj = load i8, ptr %i.bd, align 8, !tbaa !66
  %.not.i.i36 = icmp eq i8 %i.cj, 0
  %i.ck = load i8, ptr %i.bf, align 1
  %i.cl = lshr i8 %i.ck, 3
  %narrow.i.i37 = select i1 %.not.i.i36, i8 0, i8 %i.cl
  %i.cm = zext nneg i8 %narrow.i.i37 to i64
  %i.cn = add nuw nsw i64 %i.ci, %i.cm            ; 3 uses
  %i.co = mul nuw nsw i64 %i.cn, %i.cc            ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv, %i.bx
  %i.cq = add nsw i64 %i.cp, %i.by
  %i.cr = mul nsw i64 %i.cn, %i.cq                ; 2 uses
  %i.cs = mul nsw i64 %i.cn, %i.bv
  %i.ct = add i64 %i.cr, %i.bp
  %i.cu = sub i64 %i.br, %i.ct
  %.sroa.speculated7.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cs)
  %i.cv = sub nsw i64 %i.bk, %i.co
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %.sroa.speculated7.i)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cx, i64 %.sroa.speculated.i, i1 false)
  %i.cy = add nuw nsw i32 %.03256, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.cy, %i.ar
  br i1 %exitcond.not, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.o, !llvm.loop !335

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %bb.o, %bb.n, %bb.a, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit, %bb.m
  %.1 = phi i1 [ false, %bb.m ], [ false, %bb.a ], [ false, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34 ], [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ true, %bb.n ], [ true, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i16, align 2                      ; 13 uses
  %i.d = alloca i16, align 2                      ; 16 uses
  %i.e = alloca i16, align 2                      ; 12 uses
  %i.f = alloca i16, align 2                      ; 15 uses
  %1 = alloca %"class.std::vector.15", align 8    ; 16 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i16, align 2                      ; 7 uses
  %i.i = alloca i16, align 2                      ; 8 uses
  %i.j = alloca i16, align 2                      ; 7 uses
  %i.k = alloca i16, align 2                      ; 8 uses
  %2 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %i.l = alloca [6 x i8], align 1                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 8 uses
  %4 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %i.n = alloca i32, align 4                      ; 9 uses
  %i.o = alloca i16, align 2                      ; 7 uses
  %i.p = alloca i16, align 2                      ; 8 uses
  %i.q = alloca i16, align 2                      ; 8 uses
  %i.r = alloca i16, align 2                      ; 8 uses
  %i.s = alloca i16, align 2                      ; 10 uses
  %i.t = alloca i16, align 2                      ; 12 uses
  %i.u = alloca i16, align 2                      ; 10 uses
  %i.v = alloca i16, align 2                      ; 11 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %i.w = alloca i16, align 2                      ; 8 uses
  %i.x = alloca i16, align 2                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load i32, ptr %i.y, align 8, !tbaa !126
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aa, i32 noundef 0) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 18 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.af = lshr i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 22 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 16 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 16 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.ap
  %i.aq = zext nneg i8 %narrow.i.i.i to i64
  %i.ar = add nuw nsw i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 7 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !69
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.au
  %i.az = mul i64 %i.ay, %i.ar                    ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp ugt i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = sub nuw i64 %i.az, %i.bf
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bh)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.bi = icmp ult i64 %i.az, %i.bf
  br i1 %i.bi, label %bb.d, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.bj
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.bj, ptr %i.ba, align 8, !tbaa !59
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  br label %.outer

.outer:                                           ; preds = %bb.eo, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.0264.ph = phi i16 [ %.1265, %bb.eo ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 8 uses
  %.0259.ph = phi i16 [ %.0259.ph1482, %bb.eo ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ]
  br label %.outer1481

.outer1481:                                       ; preds = %.outer, %bb.dd
  %.0259.ph1482 = phi i16 [ %.0259.ph, %.outer ], [ %i.ze, %bb.dd ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer1481, %bb.eq
  %i.bw = load i16, ptr %i.bk, align 2, !tbaa !127 ; 2 uses
  %i.bx = icmp ult i16 %.0259.ph1482, %i.bw
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.by = load i8, ptr %i.ah, align 1, !tbaa !108
  %.not = icmp eq i8 %i.by, 0
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bz = icmp uge i16 %.0264.ph, %i.bw
  %.pre1152.a = load i8, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %.not406 = icmp eq i8 %.pre1152.a, 0
  %or.cond1311 = select i1 %i.bz, i1 true, i1 %.not406
  br i1 %or.cond1311, label %.critedge40, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f
  %i.ca = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.cb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit731

bb.j:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !45
  %i.cd = call noundef i32 @llvm.bswap.i32(i32 %i.cc) ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !45
  %i.ce = and i32 %i.cd, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.ce, 0
  %i.cf = sub nuw nsw i32 4, %i.ce
  %i.cg = select i1 %.not.i, i32 0, i32 %i.cf
  %.0.i = add i32 %i.cg, %i.cd                    ; 3 uses
  %i.ch = load i32, ptr %i.a, align 1
  %i.ci = icmp ne i32 %i.ch, 1094862674
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.k, label %bb.df

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1)
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %.promoted968 = load i16, ptr %i.c, align 2, !tbaa !63
  %i.cm = call noundef i16 @llvm.bswap.i16(i16 %.promoted968)
  store i16 %i.cm, ptr %i.c, align 2, !tbaa !63
  %i.cn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.cn, label %.lr.ph.i.i525.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i525.preheader:                          ; preds = %.lr.ph.i.i.preheader
  %.promoted970 = load i16, ptr %i.e, align 2, !tbaa !63
  %i.co = call noundef i16 @llvm.bswap.i16(i16 %.promoted970)
  store i16 %i.co, ptr %i.e, align 2, !tbaa !63
  %i.cp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.cp, label %.lr.ph.i.i531.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i531.preheader:                          ; preds = %.lr.ph.i.i525.preheader
  %.promoted972 = load i16, ptr %i.d, align 2, !tbaa !63
  %i.cq = call noundef i16 @llvm.bswap.i16(i16 %.promoted972)
  store i16 %i.cq, ptr %i.d, align 2, !tbaa !63
  %i.cr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.cr, label %.lr.ph.i.i537.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i537.preheader:                          ; preds = %.lr.ph.i.i531.preheader
  %.promoted974 = load i16, ptr %i.f, align 2, !tbaa !63
  %i.cs = call noundef i16 @llvm.bswap.i16(i16 %.promoted974) ; 3 uses
  store i16 %i.cs, ptr %i.f, align 2, !tbaa !63
  %i.ct = load i16, ptr %i.d, align 2, !tbaa !63  ; 2 uses
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = load i16, ptr %i.c, align 2, !tbaa !63  ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = add nsw i32 %i.cx, 1                    ; 8 uses
  %i.cz = zext i16 %i.cs to i32                   ; 2 uses
  %i.da = load i16, ptr %i.e, align 2, !tbaa !63  ; 2 uses
  %i.db = zext i16 %i.da to i32
  %i.dc = sub nsw i32 %i.cz, %i.db
  %i.dd = add nsw i32 %i.dc, 1                    ; 2 uses
  %i.de = add i32 %.0.i, -8                       ; 2 uses
  %i.df = icmp ugt i16 %i.cv, %i.ct
  %i.dg = icmp ugt i16 %i.da, %i.cs
  %or.cond481 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond481, label %bb.n, label %bb.l

_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit: ; preds = %.lr.ph.i.i531.preheader, %.lr.ph.i.i525.preheader, %.lr.ph.i.i.preheader, %bb.k
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.40)
  br label %.thread844

bb.l:                                             ; preds = %.lr.ph.i.i537.preheader
  %i.dh = load i32, ptr %i.bl, align 4, !tbaa !134
  %.not427 = icmp sgt i32 %i.dh, %i.cu
  br i1 %.not427, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.di = load i32, ptr %i.bm, align 8, !tbaa !135
  %i.dj = icmp sgt i32 %i.di, %i.cz
  %i.dk = icmp ne i32 %i.cy, 0
  %or.cond = select i1 %i.dj, i1 %i.dk, i1 false
  %i.dl = icmp ne i32 %i.dd, 0
  %or.cond43 = select i1 %or.cond, i1 %i.dl, i1 false
  br i1 %or.cond43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.i537.preheader
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41)
  br label %.thread844

bb.o:                                             ; preds = %bb.m
  %i.dm = mul i32 %i.dd, %i.cy                    ; 4 uses
  %i.dn = zext i32 %i.dm to i64                   ; 8 uses
  %i.do = load i8, ptr %i.ad, align 8, !tbaa !65  ; 2 uses
  %i.dp = lshr i8 %i.do, 3
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul i32 %i.dm, %i.ds
  %i.du = mul i32 %i.dt, %i.dq
  %i.dv = add i32 %i.du, 8
  %i.dw = load i32, ptr %i.b, align 4, !tbaa !45
  %i.dx = icmp ugt i32 %i.dv, %i.dw               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
.loopexit868:                                     ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i, %bb.ae, %bb.ad, %bb.z, %bb.y, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.3.i = phi ptr [ %.sroa.0813.01043, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %i.fb, %bb.y ], [ %i.fb, %bb.ae ], [ %i.fb, %bb.ad ], [ %i.fb, %bb.z ]
  %i.ft = ptrtoint ptr %.3.i to i64
  %i.fu = ptrtoint ptr %.sroa.0813.01043 to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, %.sroa.9814.01044
  br i1 %i.fw, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.loopexit868
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.42, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %.critedge483 unwind label %bb.aj

bb.ah:                                            ; preds = %bb.w
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit549

bb.ai:                                            ; preds = %.loopexit868
  %i.fy = sub nuw i64 %.sroa.9814.01044, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0813.01043, i64 %i.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.ga = load i16, ptr %i.e, align 2, !tbaa !63  ; 3 uses
  store i16 %i.ga, ptr %i.h, align 2, !tbaa !63
  %i.gb = load i16, ptr %i.f, align 2, !tbaa !63  ; 2 uses
  %.not4661035 = icmp ugt i16 %i.ga, %i.gb
  br i1 %.not4661035, label %.loopexit, label %.lr.ph1040.preheader

.lr.ph1040.preheader:                             ; preds = %bb.ai
  %.pre1148.a = load i16, ptr %i.d, align 2, !tbaa !63
  br label %.lr.ph1040

bb.aj:                                            ; preds = %bb.ag
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.lr.ph1040:                                       ; preds = %.lr.ph1040.preheader, %._crit_edge1033
  %i.gd = phi i16 [ %i.hw, %._crit_edge1033 ], [ %i.gb, %.lr.ph1040.preheader ]
  %i.ge = phi i16 [ %i.hy, %._crit_edge1033 ], [ %.pre1148.a, %.lr.ph1040.preheader ] ; 2 uses
  %.03221037 = phi i64 [ %.1323.lcssa, %._crit_edge1033 ], [ 0, %.lr.ph1040.preheader ] ; 4 uses
  %storemerge4651036 = phi i16 [ %i.hz, %._crit_edge1033 ], [ %i.ga, %.lr.ph1040.preheader ] ; 2 uses
  %i.gf = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.gg = load i32, ptr %i.as, align 4, !tbaa !110
  %i.gh = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.gi = lshr i8 %i.gh, 3
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.gl = zext i8 %i.gk to i64
  %i.gm = mul nuw nsw i64 %i.gj, %i.gl
  %i.gn = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i544 = icmp eq i8 %i.gn, 0
  %i.go = load i8, ptr %i.an, align 1
  %i.gp = lshr i8 %i.go, 3
  %narrow.i.i = select i1 %.not.i.i544, i8 0, i8 %i.gp
  %i.gq = zext nneg i8 %narrow.i.i to i64
  %i.gr = add nuw nsw i64 %i.gm, %i.gq
  %i.gs = zext i16 %storemerge4651036 to i32
  %i.gt = mul i32 %i.gg, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = mul nuw nsw i64 %i.gr, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.gx = load i16, ptr %i.c, align 2, !tbaa !63  ; 3 uses
  store i16 %i.gx, ptr %i.i, align 2, !tbaa !63
  %.not4681028 = icmp ugt i16 %i.gx, %i.ge
  br i1 %.not4681028, label %._crit_edge1033, label %.lr.ph1032.preheader

.lr.ph1032.preheader:                             ; preds = %.lr.ph1040
  %umax1127 = call i64 @llvm.umax.i64(i64 %.03221037, i64 %i.ev)
  %exitcond1128.not1407.not = icmp ult i64 %.03221037, %i.ev
  br i1 %exitcond1128.not1407.not, label %.lr.ph1410, label %.lr.ph1032.preheader._crit_edge

.lr.ph1032:                                       ; preds = %.lr.ph1410
  %exitcond1128.not = icmp eq i64 %i.hp, %umax1127
  br i1 %exitcond1128.not, label %.lr.ph1032.preheader._crit_edge, label %.lr.ph1410, !llvm.loop !339

.lr.ph1032.preheader._crit_edge:                  ; preds = %.lr.ph1032.preheader, %.lr.ph1032
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 2 dereferenceable(2) %i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.h)
          to label %bb.al unwind label %bb.ak

.lr.ph1410:                                       ; preds = %.lr.ph1032.preheader, %.lr.ph1032
  %storemerge46710291409 = phi i16 [ %i.ht, %.lr.ph1032 ], [ %i.gx, %.lr.ph1032.preheader ]
  %.132310301408 = phi i64 [ %i.hp, %.lr.ph1032 ], [ %.03221037, %.lr.ph1032.preheader ] ; 2 uses
  %i.gy = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.gz = lshr i8 %i.gy, 3
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.hc = zext i8 %i.hb to i64
  %i.hd = mul nuw nsw i64 %i.ha, %i.hc
  %i.he = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i545 = icmp eq i8 %i.he, 0
  %i.hf = load i8, ptr %i.an, align 1
  %i.hg = lshr i8 %i.hf, 3
  %narrow.i.i546 = select i1 %.not.i.i545, i8 0, i8 %i.hg
  %i.hh = zext nneg i8 %narrow.i.i546 to i64
  %i.hi = add nuw nsw i64 %i.hd, %i.hh
  %i.hj = zext i16 %storemerge46710291409 to i64
  %i.hk = mul nuw nsw i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hk
  %i.hm = load i32, ptr %i.g, align 4, !tbaa !45
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.hl, i64 %i.hn
  %i.hp = add i64 %.132310301408, 1               ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0805.0, i64 %.132310301408
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !55
  store i8 %i.hr, ptr %i.ho, align 1, !tbaa !55
  %i.hs = load i16, ptr %i.i, align 2, !tbaa !63
  %i.ht = add i16 %i.hs, 1                        ; 3 uses
  store i16 %i.ht, ptr %i.i, align 2, !tbaa !63
  %i.hu = load i16, ptr %i.d, align 2, !tbaa !63  ; 2 uses
  %.not468 = icmp ugt i16 %i.ht, %i.hu
  br i1 %.not468, label %._crit_edge1033.loopexit, label %.lr.ph1032, !llvm.loop !339

bb.ak:                                            ; preds = %.lr.ph1032.preheader._crit_edge
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.ao

bb.al:                                            ; preds = %.lr.ph1032.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.loopexit

._crit_edge1033.loopexit:                         ; preds = %.lr.ph1410
  %.pre1149.a = load i16, ptr %i.h, align 2, !tbaa !63
  %.pre1150 = load i16, ptr %i.f, align 2, !tbaa !63
  br label %._crit_edge1033

._crit_edge1033:                                  ; preds = %._crit_edge1033.loopexit, %.lr.ph1040
  %i.hw = phi i16 [ %i.gd, %.lr.ph1040 ], [ %.pre1150, %._crit_edge1033.loopexit ] ; 2 uses
  %i.hx = phi i16 [ %storemerge4651036, %.lr.ph1040 ], [ %.pre1149.a, %._crit_edge1033.loopexit ]
  %i.hy = phi i16 [ %i.ge, %.lr.ph1040 ], [ %i.hu, %._crit_edge1033.loopexit ]
  %.1323.lcssa = phi i64 [ %.03221037, %.lr.ph1040 ], [ %i.hp, %._crit_edge1033.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.hz = add i16 %i.hx, 1                        ; 3 uses
  store i16 %i.hz, ptr %i.h, align 2, !tbaa !63
  %.not466 = icmp ugt i16 %i.hz, %i.hw
  br i1 %.not466, label %.loopexit, label %.lr.ph1040, !llvm.loop !340

.loopexit:                                        ; preds = %._crit_edge1033, %bb.ai, %bb.al
  %.not466915 = phi i1 [ false, %bb.al ], [ true, %bb.ai ], [ true, %._crit_edge1033 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %.not.i.i.i547 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i547, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.ia = ptrtoint ptr %.sroa.13810.0 to i64
  %i.ib = sub i64 %i.ia, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.ib) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.am
  br i1 %.not466915, label %bb.an, label %.critedge518

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ic = load i32, ptr %i.g, align 4, !tbaa !45  ; 2 uses
  %storemerge464 = add nsw i32 %i.ic, -1
  store i32 %storemerge464, ptr %i.g, align 4, !tbaa !45
  %i.id = icmp slt i32 %i.ic, 1
  br i1 %i.id, label %.critedge516.loopexit, label %bb.v, !llvm.loop !341

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %.pn473 = phi { ptr, i32 } [ %i.gc, %bb.aj ], [ %i.hv, %bb.ak ] ; 2 uses
  %.not.i.i.i548 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i548, label %_ZNSt6vectorIhSaIhEED2Ev.exit549, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = ptrtoint ptr %.sroa.13810.0 to i64
  %i.if = sub i64 %i.ie, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.if) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit549

_ZNSt6vectorIhSaIhEED2Ev.exit549:                 ; preds = %bb.ap, %bb.ao, %bb.ah
  %.pn473.pn = phi { ptr, i32 } [ %i.fx, %bb.ah ], [ %.pn473, %bb.ao ], [ %.pn473, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.ay

.critedge483:                                     ; preds = %bb.ag
  %.not.i.i.i550 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i550, label %.critedge518, label %bb.aq

bb.aq:                                            ; preds = %.critedge483
  %i.ig = ptrtoint ptr %.sroa.13810.0 to i64
  %i.ih = sub i64 %i.ig, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.ih) #31
  br label %.critedge518

bb.ar:                                            ; preds = %bb.t
  %i.ii = load i16, ptr %i.f, align 2, !tbaa !63  ; 3 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i16, ptr %i.e, align 2, !tbaa !63  ; 4 uses
  %i.il = zext i16 %i.ik to i32
  %i.im = add nuw nsw i32 %i.ij, 1
  %i.in = sub nsw i32 %i.im, %i.il
  %i.io = mul i32 %i.in, %i.cy
  %i.ip = zext i32 %i.io to i64
  %i.iq = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ir = lshr i8 %i.iq, 3
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = load i8, ptr %i.ah, align 1, !tbaa !67  ; 3 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.is, %i.iu
  %i.iw = mul nuw nsw i64 %i.iv, %i.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i16 %i.ik, ptr %i.j, align 2, !tbaa !63
  %.not4561024 = icmp ugt i16 %i.ik, %i.ii
  br i1 %.not4561024, label %switch.early.test, label %.lr.ph1027.preheader

.lr.ph1027.preheader:                             ; preds = %bb.ar
  %.pre1143 = load i16, ptr %i.d, align 2, !tbaa !63 ; 2 uses
  br label %.lr.ph1027

.lr.ph1027:                                       ; preds = %.lr.ph1027.preheader, %.thread819
  %.pre1145 = phi i8 [ %.pre11451157, %.thread819 ], [ %i.it, %.lr.ph1027.preheader ] ; 4 uses
  %7 = phi i8 [ %8, %.thread819 ], [ %i.it, %.lr.ph1027.preheader ] ; 2 uses
  %i.ix = phi i16 [ %i.ju, %.thread819 ], [ %i.ii, %.lr.ph1027.preheader ]
  %i.iy = phi i16 [ %i.jw, %.thread819 ], [ %.pre1143, %.lr.ph1027.preheader ] ; 2 uses
  %i.iz = phi i16 [ %i.jx, %.thread819 ], [ %.pre1143, %.lr.ph1027.preheader ] ; 2 uses
  %i.ja = phi i16 [ %i.jy, %.thread819 ], [ %i.ik, %.lr.ph1027.preheader ] ; 2 uses
  %.03211025 = phi i32 [ %i.jz, %.thread819 ], [ 0, %.lr.ph1027.preheader ] ; 2 uses
  %i.jb = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.jc = load i32, ptr %i.as, align 4, !tbaa !110
  %i.jd = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.je = lshr i8 %i.jd, 3
  %i.jf = zext nneg i8 %i.je to i64
  %i.jg = zext i8 %7 to i64
  %i.jh = mul nuw nsw i64 %i.jf, %i.jg
  %i.ji = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i552 = icmp eq i8 %i.ji, 0
  %i.jj = load i8, ptr %i.an, align 1
  %i.jk = lshr i8 %i.jj, 3
  %narrow.i.i553 = select i1 %.not.i.i552, i8 0, i8 %i.jk
  %i.jl = zext nneg i8 %narrow.i.i553 to i64
  %i.jm = add nuw nsw i64 %i.jh, %i.jl
  %i.jn = zext i16 %i.ja to i32
  %i.jo = mul i32 %i.jc, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul nuw nsw i64 %i.jm, %i.jp            ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jb, i64 %i.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.js = load i16, ptr %i.c, align 2, !tbaa !63  ; 3 uses
  store i16 %i.js, ptr %i.k, align 2, !tbaa !63
  %.not4571020 = icmp ugt i16 %i.js, %i.iz
  br i1 %.not4571020, label %.thread819, label %.lr.ph1023

.lr.ph1023:                                       ; preds = %.lr.ph1027
  %i.jt = mul i32 %.03211025, %i.cy
  %scevgep = getelementptr i8, ptr %i.jb, i64 %i.jq
  br label %bb.as

.thread819.loopexit:                              ; preds = %._crit_edge1019
  %.pre1146.a = load i16, ptr %i.j, align 2, !tbaa !63
  %.pre1147.a = load i16, ptr %i.f, align 2, !tbaa !63
  br label %.thread819

.thread819:                                       ; preds = %.thread819.loopexit, %.lr.ph1027
  %.pre11451157 = phi i8 [ %.pre11451155, %.thread819.loopexit ], [ %.pre1145, %.lr.ph1027 ]
  %8 = phi i8 [ %11, %.thread819.loopexit ], [ %7, %.lr.ph1027 ]
  %i.ju = phi i16 [ %.pre1147.a, %.thread819.loopexit ], [ %i.ix, %.lr.ph1027 ] ; 2 uses
  %i.jv = phi i16 [ %.pre1146.a, %.thread819.loopexit ], [ %i.ja, %.lr.ph1027 ]
  %i.jw = phi i16 [ %i.nb, %.thread819.loopexit ], [ %i.iy, %.lr.ph1027 ]
  %i.jx = phi i16 [ %i.nb, %.thread819.loopexit ], [ %i.iz, %.lr.ph1027 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %i.jy = add i16 %i.jv, 1                        ; 3 uses
  store i16 %i.jy, ptr %i.j, align 2, !tbaa !63
  %i.jz = add nuw nsw i32 %.03211025, 1
  %.not456 = icmp ugt i16 %i.jy, %i.ju
  br i1 %.not456, label %switch.early.test, label %.lr.ph1027, !llvm.loop !342

bb.as:                                            ; preds = %.lr.ph1023, %._crit_edge1019
  %.pre11451156 = phi i8 [ %.pre1145, %.lr.ph1023 ], [ %.pre11451155, %._crit_edge1019 ]
  %9 = phi i8 [ %.pre1145, %.lr.ph1023 ], [ %11, %._crit_edge1019 ]
  %i.ka = phi i16 [ %i.iy, %.lr.ph1023 ], [ %i.nb, %._crit_edge1019 ]
  %10 = phi i8 [ %.pre1145, %.lr.ph1023 ], [ %12, %._crit_edge1019 ] ; 4 uses
  %indvars.iv1125 = phi i64 [ 0, %.lr.ph1023 ], [ %indvars.iv.next1126, %._crit_edge1019 ] ; 2 uses
  %i.kb = phi i16 [ %i.js, %.lr.ph1023 ], [ %i.nd, %._crit_edge1019 ] ; 2 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv1125 to i32
  %i.kd = add i32 %i.jt, %i.kc
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.kg = lshr i8 %i.kf, 3
  %i.kh = zext nneg i8 %i.kg to i64               ; 2 uses
  %i.ki = zext i8 %10 to i64                      ; 20 uses
  %i.kj = mul nuw nsw i64 %i.kh, %i.ki            ; 3 uses
  %i.kk = mul nuw nsw i64 %i.kj, %i.ke            ; 2 uses
  %i.kl = add nuw nsw i64 %i.kk, %i.kj
  %.not463 = icmp samesign ugt i64 %i.kl, %i.iw
  br i1 %.not463, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.44, ptr noundef nonnull align 2 dereferenceable(2) %i.k, ptr noundef nonnull align 2 dereferenceable(2) %i.j)
          to label %.thread821 unwind label %bb.au

.thread821:                                       ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br label %switch.early.test

bb.au:                                            ; preds = %bb.at
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  %i.kn = getelementptr i8, ptr %i.ef, i64 %i.kk  ; 10 uses
  %.not1051 = icmp eq i8 %10, 0
  br i1 %.not1051, label %._crit_edge1019, label %iter.check

iter.check:                                       ; preds = %bb.av
  %i.ko = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i558 = icmp eq i8 %i.ko, 0
  %i.kp = load i8, ptr %i.an, align 1
  %i.kq = lshr i8 %i.kp, 3
  %narrow.i.i559 = select i1 %.not.i.i558, i8 0, i8 %i.kq
  %i.kr = zext nneg i8 %narrow.i.i559 to i64
  %i.ks = add nuw nsw i64 %i.kj, %i.kr
  %i.kt = zext i16 %i.kb to i64
  %i.ku = mul nuw nsw i64 %i.ks, %i.kt            ; 2 uses
  %i.kv = getelementptr i8, ptr %i.jr, i64 %i.ku  ; 20 uses
  %min.iters.check = icmp ult i8 %10, 8
  br i1 %min.iters.check, label %.lr.ph1018.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kw = getelementptr i8, ptr %scevgep, i64 %i.ku
  %scevgep1411 = getelementptr i8, ptr %i.kw, i64 %i.ki
  %i.kx = mul nuw nsw i64 %i.kh, %i.ke
  %i.ky = add nuw nsw i64 %i.kx, 1
  %i.kz = mul nuw nsw i64 %i.ky, %i.ki
  %scevgep1412 = getelementptr i8, ptr %i.ef, i64 %i.kz
  %bound0 = icmp ult ptr %i.kv, %scevgep1412
  %bound1 = icmp ult ptr %i.kn, %scevgep1411
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1018.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1413 = icmp ult i8 %10, 32
  br i1 %min.iters.check1413, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.la = and i64 %i.ki, 24
  %n.vec = and i64 %i.ki, 224                     ; 9 uses
  %i.lb = and i64 %i.ki, 31
  %i.lc = getelementptr i8, ptr %i.kv, i64 %n.vec
  %i.ld = getelementptr i8, ptr %i.kn, i64 -1
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.ki  ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -15
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -31
  %wide.load = load <16 x i8>, ptr %i.lf, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !55, !alias.scope !370
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415 = shufflevector <16 x i8> %wide.load1414, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lh = getelementptr i8, ptr %i.kv, i64 16
  store <16 x i8> %reverse, ptr %i.kv, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415, ptr %i.lh, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.li = icmp eq i64 %n.vec, 32
  br i1 %i.li, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.kv, i64 32
  %i.lj = getelementptr i8, ptr %i.kn, i64 -33
  %i.lk = getelementptr i8, ptr %i.lj, i64 %i.ki  ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -15
  %i.lm = getelementptr inbounds i8, ptr %i.lk, i64 -31
  %wide.load.1 = load <16 x i8>, ptr %i.ll, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.1 = load <16 x i8>, ptr %i.lm, align 1, !tbaa !55, !alias.scope !370
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.1 = shufflevector <16 x i8> %wide.load1414.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ln = getelementptr i8, ptr %i.kv, i64 48
  store <16 x i8> %reverse.1, ptr %next.gep.1, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.1, ptr %i.ln, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.lo = icmp eq i64 %n.vec, 64
  br i1 %i.lo, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.kv, i64 64
  %i.lp = getelementptr i8, ptr %i.kn, i64 -65
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.ki  ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -15
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.2 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !55, !alias.scope !370
  %reverse.2 = shufflevector <16 x i8> %wide.load.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.2 = shufflevector <16 x i8> %wide.load1414.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lt = getelementptr i8, ptr %i.kv, i64 80
  store <16 x i8> %reverse.2, ptr %next.gep.2, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.2, ptr %i.lt, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.lu = icmp eq i64 %n.vec, 96
  br i1 %i.lu, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.kv, i64 96
  %i.lv = getelementptr i8, ptr %i.kn, i64 -97
  %i.lw = getelementptr i8, ptr %i.lv, i64 %i.ki  ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -15
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.3 = load <16 x i8>, ptr %i.ly, align 1, !tbaa !55, !alias.scope !370
  %reverse.3 = shufflevector <16 x i8> %wide.load.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.3 = shufflevector <16 x i8> %wide.load1414.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lz = getelementptr i8, ptr %i.kv, i64 112
  store <16 x i8> %reverse.3, ptr %next.gep.3, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.3, ptr %i.lz, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.ma = icmp eq i64 %n.vec, 128
  br i1 %i.ma, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.kv, i64 128
  %i.mb = getelementptr i8, ptr %i.kn, i64 -129
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.ki  ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -15
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.md, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.4 = load <16 x i8>, ptr %i.me, align 1, !tbaa !55, !alias.scope !370
  %reverse.4 = shufflevector <16 x i8> %wide.load.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.4 = shufflevector <16 x i8> %wide.load1414.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mf = getelementptr i8, ptr %i.kv, i64 144
  store <16 x i8> %reverse.4, ptr %next.gep.4, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.4, ptr %i.mf, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.mg = icmp eq i64 %n.vec, 160
  br i1 %i.mg, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.kv, i64 160
  %i.mh = getelementptr i8, ptr %i.kn, i64 -161
  %i.mi = getelementptr i8, ptr %i.mh, i64 %i.ki  ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -15
  %i.mk = getelementptr inbounds i8, ptr %i.mi, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.mj, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.5 = load <16 x i8>, ptr %i.mk, align 1, !tbaa !55, !alias.scope !370
  %reverse.5 = shufflevector <16 x i8> %wide.load.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.5 = shufflevector <16 x i8> %wide.load1414.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ml = getelementptr i8, ptr %i.kv, i64 176
  store <16 x i8> %reverse.5, ptr %next.gep.5, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.5, ptr %i.ml, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.mm = icmp eq i64 %n.vec, 192
  br i1 %i.mm, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %i.kv, i64 192
  %i.mn = getelementptr i8, ptr %i.kn, i64 -193
  %i.mo = getelementptr i8, ptr %i.mn, i64 %i.ki  ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -15
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.mp, align 1, !tbaa !55, !alias.scope !370
  %wide.load1414.6 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !55, !alias.scope !370
  %reverse.6 = shufflevector <16 x i8> %wide.load.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1415.6 = shufflevector <16 x i8> %wide.load1414.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mr = getelementptr i8, ptr %i.kv, i64 208
  store <16 x i8> %reverse.6, ptr %next.gep.6, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1415.6, ptr %i.mr, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ki
  br i1 %cmp.n, label %._crit_edge1019.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.la, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1018.preheader, label %vec.epilog.ph, !prof !137

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1417 = and i64 %i.ki, 248                 ; 3 uses
  %i.ms = and i64 %i.ki, 7
  %i.mt = getelementptr i8, ptr %i.kv, i64 %n.vec1417
  %invariant.gep1713 = getelementptr i8, ptr %i.kn, i64 %i.ki
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1418 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1422, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1419 = getelementptr i8, ptr %i.kv, i64 %index1418
  %i.mu = xor i64 %index1418, -1
  %gep1714 = getelementptr i8, ptr %invariant.gep1713, i64 %i.mu
  %i.mv = getelementptr inbounds i8, ptr %gep1714, i64 -7
  %wide.load1420 = load <8 x i8>, ptr %i.mv, align 1, !tbaa !55, !alias.scope !370
  %reverse1421 = shufflevector <8 x i8> %wide.load1420, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1421, ptr %next.gep1419, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %index.next1422 = add nuw i64 %index1418, 8     ; 2 uses
  %i.mw = icmp eq i64 %index.next1422, %n.vec1417
  br i1 %i.mw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1423 = icmp eq i64 %n.vec1417, %i.ki
  br i1 %cmp.n1423, label %._crit_edge1019.loopexit, label %.lr.ph1018.preheader

.lr.ph1018.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1122.ph = phi i64 [ %i.ki, %iter.check ], [ %i.ki, %vector.memcheck ], [ %i.lb, %vec.epilog.iter.check ], [ %i.ms, %vec.epilog.middle.block ]
  %.03191015.ph = phi ptr [ %i.kv, %iter.check ], [ %i.kv, %vector.memcheck ], [ %i.lc, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ]
  br label %.lr.ph1018

.lr.ph1018:                                       ; preds = %.lr.ph1018.preheader, %.lr.ph1018
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %.lr.ph1018 ], [ %indvars.iv1122.ph, %.lr.ph1018.preheader ] ; 2 uses
  %.03191015 = phi ptr [ %i.mz, %.lr.ph1018 ], [ %.03191015.ph, %.lr.ph1018.preheader ] ; 2 uses
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -1 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kn, i64 %indvars.iv.next1123
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !55
  %i.mz = getelementptr inbounds nuw i8, ptr %.03191015, i64 1
  store i8 %i.my, ptr %.03191015, align 1, !tbaa !55
  %i.na = icmp samesign ugt i64 %indvars.iv1122, 1
  br i1 %i.na, label %.lr.ph1018, label %._crit_edge1019.loopexit, !llvm.loop !347

._crit_edge1019.loopexit:                         ; preds = %.lr.ph1018, %vec.epilog.middle.block, %middle.block
  %.pre1144 = load i8, ptr %i.ah, align 1, !tbaa !67 ; 3 uses
  %.pre1144.a = load i16, ptr %i.k, align 2, !tbaa !63
  %.pre1145.a = load i16, ptr %i.d, align 2, !tbaa !63
  br label %._crit_edge1019

._crit_edge1019:                                  ; preds = %._crit_edge1019.loopexit, %bb.av
  %.pre11451155 = phi i8 [ %.pre1144, %._crit_edge1019.loopexit ], [ %.pre11451156, %bb.av ] ; 2 uses
  %11 = phi i8 [ %.pre1144, %._crit_edge1019.loopexit ], [ %9, %bb.av ] ; 2 uses
  %i.nb = phi i16 [ %.pre1145.a, %._crit_edge1019.loopexit ], [ %i.ka, %bb.av ] ; 4 uses
  %i.nc = phi i16 [ %.pre1144.a, %._crit_edge1019.loopexit ], [ %i.kb, %bb.av ]
  %12 = phi i8 [ %.pre1144, %._crit_edge1019.loopexit ], [ 0, %bb.av ]
  %i.nd = add i16 %i.nc, 1                        ; 3 uses
  store i16 %i.nd, ptr %i.k, align 2, !tbaa !63
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %.not457 = icmp ugt i16 %i.nd, %i.nb
  br i1 %.not457, label %.thread819.loopexit, label %bb.as, !llvm.loop !348

switch.early.test:                                ; preds = %.thread819, %bb.ar, %.thread821
  %cond864 = phi i1 [ false, %.thread821 ], [ true, %bb.ar ], [ true, %.thread819 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.ne = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i560 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i560, label %_ZNSt6vectorIhSaIhEED2Ev.exit561, label %bb.aw

bb.aw:                                            ; preds = %switch.early.test
  %i.nf = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.ne to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.ni) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit561

_ZNSt6vectorIhSaIhEED2Ev.exit561:                 ; preds = %switch.early.test, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %cond864, label %bb.dd, label %.thread844

.critedge516.loopexit:                            ; preds = %bb.an
  %.pre1151 = load ptr, ptr %1, align 8, !tbaa !58
  br label %.critedge516

.critedge516:                                     ; preds = %.critedge516.loopexit, %bb.u
  %i.nj = phi ptr [ %.pre1151, %.critedge516.loopexit ], [ %i.ef, %bb.u ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %.not.i.i.i562 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i562, label %_ZNSt6vectorIhSaIhEED2Ev.exit563, label %bb.ax

bb.ax:                                            ; preds = %.critedge516
  %i.nk = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nn) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit563

_ZNSt6vectorIhSaIhEED2Ev.exit563:                 ; preds = %.critedge516, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.dd

bb.ay:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit549, %bb.au, %bb.s
  %.pn473.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.s ], [ %.pn473.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit549 ], [ %i.km, %bb.au ]
  %i.no = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i564 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i564, label %_ZNSt6vectorIhSaIhEED2Ev.exit565, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.np = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.no to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.ns) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit565

_ZNSt6vectorIhSaIhEED2Ev.exit565:                 ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.de

bb.ba:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.nt = zext i32 %i.de to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.nt)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.nu = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.nv = load ptr, ptr %i.bp, align 8, !tbaa !59
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.nu, i64 noundef 1, i64 noundef %i.ny)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.oa = load ptr, ptr %2, align 8, !tbaa !58    ; 8 uses
  br i1 %i.nz, label %bb.be, label %.critedge507

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit602

bb.be:                                            ; preds = %bb.bc
  %i.oc = load ptr, ptr %i.bp, align 8, !tbaa !59
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  br i1 %i.dx, label %bb.bf, label %bb.ck

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @__const._ZN11OpenImageIO4v3_18IffInput7readimgEv.rgb16, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i64 505813836079825408, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.og = load i8, ptr %i.ah, align 1, !tbaa !108
  %.not441 = icmp eq i8 %i.og, 3
  br i1 %.not441, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.l, ptr noundef nonnull %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.critedge519 unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.m, ptr noundef nonnull %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.critedge489 unwind label %bb.bi

.critedge489:                                     ; preds = %bb.bh
  %i.oh = load ptr, ptr %3, align 8, !tbaa !58
  %i.oi = load ptr, ptr %i.br, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge492

.critedge519:                                     ; preds = %bb.bg
  %i.oj = load ptr, ptr %3, align 8, !tbaa !58
  %i.ok = load ptr, ptr %i.br, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge492

.critedge492:                                     ; preds = %.critedge489, %.critedge519
  %i.ol = phi ptr [ %i.oi, %.critedge489 ], [ %i.ok, %.critedge519 ] ; 3 uses
  %i.om = phi ptr [ %i.oh, %.critedge489 ], [ %i.oj, %.critedge519 ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %i.on = load i8, ptr %i.ah, align 1, !tbaa !108
  %i.oo = zext i8 %i.on to i32
  %i.op = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.oq = lshr i8 %i.op, 3
  %i.or = zext nneg i8 %i.oq to i32
  %i.os = mul nuw nsw i32 %i.or, %i.oo            ; 2 uses
  %storemerge1010 = add nsw i32 %i.os, -1         ; 2 uses
  store i32 %storemerge1010, ptr %i.n, align 4, !tbaa !45
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %.critedge498, label %.lr.ph1014

.lr.ph1014:                                       ; preds = %.critedge492
  %.not.i.i.i.i568 = icmp eq i32 %i.dm, 0
  %i.ou = add nsw i64 %i.dn, -1                   ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 0
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.thread829

bb.bj:                                            ; preds = %bb.bg
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread829

.thread829:                                       ; preds = %bb.bj, %bb.bi
  %.pn439825 = phi { ptr, i32 } [ %i.ow, %bb.bi ], [ %i.ox, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit602

bb.bk:                                            ; preds = %.lr.ph1014, %bb.cd
  %storemerge1013 = phi i32 [ %storemerge1010, %.lr.ph1014 ], [ %storemerge, %bb.cd ]
  %.sroa.0792.01012 = phi ptr [ %i.oa, %.lr.ph1014 ], [ %i.qk, %bb.cd ] ; 5 uses
  %.sroa.8793.01011 = phi i64 [ %i.of, %.lr.ph1014 ], [ %i.qj, %bb.cd ] ; 4 uses
  %i.oy = zext nneg i32 %storemerge1013 to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !55
  br i1 %.not.i.i.i.i568, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit572, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #33
          to label %.noexc571 unwind label %.thread835 ; 5 uses

.noexc571:                                        ; preds = %bb.bl
  %i.pc = getelementptr i8, ptr %i.pb, i64 %i.dn  ; 3 uses
  store i8 0, ptr %i.pb, align 1, !tbaa !55
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 1 ; 2 uses
  br i1 %i.ov, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit572, label %bb.bm

bb.bm:                                            ; preds = %.noexc571
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.pd, i8 0, i64 %i.ou, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit572

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit572:            ; preds = %bb.bm, %.noexc571, %bb.bk
  %.sroa.0774.0 = phi ptr [ %i.pb, %bb.bm ], [ %i.pb, %.noexc571 ], [ null, %bb.bk ] ; 10 uses
  %.sroa.13779.0 = phi ptr [ %i.pc, %bb.bm ], [ %i.pc, %.noexc571 ], [ null, %bb.bk ] ; 3 uses
  %.0.i.i.i.i.i569 = phi ptr [ %i.pc, %bb.bm ], [ %i.pd, %.noexc571 ], [ null, %bb.bk ]
  %i.pe = ptrtoint ptr %.0.i.i.i.i.i569 to i64
end_hunk_1
