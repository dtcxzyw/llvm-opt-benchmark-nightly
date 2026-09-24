Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/random?download=true
inline.NumInlined: 19
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@__new__ = external local_unnamed_addr global ptr, align 8
@__init__ = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"randint\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"choices(self, population, weights=None, k=1)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"choices\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to add module random\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"randint(a, b): a must be less than or equal to b\00", align 1
@mt19937__next_uint32.mag01 = internal unnamed_addr constant [2 x i32] [i32 0, i32 -1727483681], align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Random(): expected 1 or 2 arguments, got %d\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"expected %d arguments, got %d\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"cannot choose from an empty sequence\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"choice(): argument must be a list, tuple or str\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"choices(): argument must be a list or tuple\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"choices(): weights must be a list or tuple\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"len(weights) != len(population)\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"total of weights must be greater than 1e-6\00", align 1

; Function Attrs: nounwind uwtable
define i64 @mt19937__randint(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i64 %2, %1
  %i.b = add nsw i64 %i.a, 1                      ; 2 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  %i.d = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %0)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw i64 %i.e, 32
  %i.g = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %0)
  %i.h = zext i32 %i.g to i64
  %i.i = or disjoint i64 %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn10 = phi i64 [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %.pn = urem i64 %.pn10, %i.b
  %.0 = add i64 %.pn, %1
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mt19937__next_uint32(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 623
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 625
  br i1 %i.d, label %bb.c, label %mt19937__seed.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 (...) @time_ns() #9
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %0, align 4, !tbaa !11
  store i32 1, ptr %i.a, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %storemerge13.i = phi i32 [ 1, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.g = sext i32 %storemerge13.i to i64
  %i.h = getelementptr [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11   ; 2 uses
  %i.k = lshr i32 %i.j, 30
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 1812433253
  %i.n = add i32 %i.m, %storemerge13.i
  store i32 %i.n, ptr %i.h, align 4, !tbaa !11
  %i.o = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !10
  %i.q = icmp slt i32 %i.o, 623
  br i1 %i.q, label %bb.d, label %mt19937__seed.exit, !llvm.loop !0

mt19937__seed.exit:                               ; preds = %bb.d, %bb.b
  %.pre = load i32, ptr %0, align 4, !tbaa !11
  br label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 908
  %.pre54 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f, %mt19937__seed.exit
  %i.r = phi i32 [ %.pre, %mt19937__seed.exit ], [ %i.ak, %bb.f ]
  %indvars.iv = phi i64 [ 0, %mt19937__seed.exit ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.t = and i32 %i.r, -2147483648
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11   ; 3 uses
  %i.w = and i32 %i.v, 2147483646
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1588
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11
  %i.aa = lshr exact i32 %i.x, 1
  %i.ab = and i32 %i.v, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @mt19937__next_uint32.mag01, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = xor i32 %i.ae, %i.z
  %i.ag = xor i32 %i.af, %i.aa
  store i32 %i.ag, ptr %i.s, align 4, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv, 226
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ai = and i32 %i.v, -2147483648
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !11 ; 3 uses
  %i.al = and i32 %i.ak, 2147483646
  %i.am = or disjoint i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1588
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = lshr exact i32 %i.am, 1
  %i.aq = and i32 %i.ak, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @mt19937__next_uint32.mag01, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = xor i32 %i.at, %i.ao
  %i.av = xor i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !11
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.aw = phi i32 [ %.pre54, %.lr.ph.preheader ], [ %i.bp, %.lr.ph ]
  %indvars.iv50 = phi i64 [ 227, %.lr.ph.preheader ], [ %indvars.iv.next51.1, %.lr.ph ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv50 ; 2 uses
  %i.ay = and i32 %i.aw, -2147483648
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next51
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !11 ; 3 uses
  %i.bb = and i32 %i.ba, 2147483646
  %i.bc = or disjoint i32 %i.bb, %i.ay
  %i.bd = getelementptr i8, ptr %i.ax, i64 -908
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11
  %i.bf = lshr exact i32 %i.bc, 1
  %i.bg = and i32 %i.ba, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @mt19937__next_uint32.mag01, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = xor i32 %i.bj, %i.be
  %i.bl = xor i32 %i.bk, %i.bf
  store i32 %i.bl, ptr %i.ax, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next51 ; 2 uses
  %i.bn = and i32 %i.ba, -2147483648
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next51.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11 ; 3 uses
  %i.bq = and i32 %i.bp, 2147483646
  %i.br = or disjoint i32 %i.bq, %i.bn
  %i.bs = getelementptr i8, ptr %i.bm, i64 -908
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.bu = lshr exact i32 %i.br, 1
  %i.bv = and i32 %i.bp, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @mt19937__next_uint32.mag01, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !11
  %i.bz = xor i32 %i.by, %i.bt
  %i.ca = xor i32 %i.bz, %i.bu
  store i32 %i.ca, ptr %i.bm, align 4, !tbaa !11
  %exitcond53.not.1 = icmp eq i64 %indvars.iv.next51.1, 623
  br i1 %exitcond53.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2492 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11
  %i.cd = and i32 %i.cc, -2147483648
  %i.ce = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  %i.cf = and i32 %i.ce, 2147483646
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !11
  %i.cj = lshr exact i32 %i.cg, 1
  %i.ck = and i32 %i.ce, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @mt19937__next_uint32.mag01, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !11
  %i.co = xor i32 %i.cn, %i.ci
  %i.cp = xor i32 %i.co, %i.cj
  store i32 %i.cp, ptr %i.cb, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %i.cq = phi i32 [ 0, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !10
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11 ; 2 uses
  %i.cv = lshr i32 %i.cu, 11
  %i.cw = xor i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = shl i32 %i.cw, 7
  %i.cy = and i32 %i.cx, -1658038656
  %i.cz = xor i32 %i.cy, %i.cw                    ; 2 uses
  %i.da = shl i32 %i.cz, 15
  %i.db = and i32 %i.da, -272236544
  %i.dc = xor i32 %i.db, %i.cz                    ; 2 uses
  %i.dd = lshr i32 %i.dc, 18
  %i.de = xor i32 %i.dd, %i.dc
  ret i32 %i.de
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @pk__add_module_random() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str) #9 ; 8 uses
  %i.b = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.1, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null) #9 ; 10 uses
  %i.c = load ptr, ptr @__new__, align 8, !tbaa !28
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.c, ptr noundef nonnull @Random__new__) #9
  %i.d = load ptr, ptr @__init__, align 8, !tbaa !28
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.d, ptr noundef nonnull @Random__init__) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @Random_seed) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @Random_random) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @Random_uniform) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @Random_randint) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull @Random_shuffle) #9
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @Random_choice) #9
  %i.e = tail call ptr @py_tpobject(i16 noundef signext %i.b) #9
  tail call void @py_bind(ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @Random_choices) #9
  %i.f = tail call ptr (...) @py_pushtmp() #9     ; 8 uses
  %i.g = tail call zeroext i1 @py_tpcall(i16 noundef signext %i.b, i32 noundef 0, ptr noundef null) #9
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr (...) @py_retval() #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !19
  %i.i = tail call ptr @py_name(ptr noundef nonnull @.str.2) #9
  %i.j = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.i) #9
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @py_name(ptr noundef nonnull @.str.2) #9
  %i.l = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.k, ptr noundef %i.l) #9
  %i.m = tail call ptr @py_name(ptr noundef nonnull @.str) #9
  %i.n = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.m) #9
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @py_name(ptr noundef nonnull @.str) #9
  %i.p = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.o, ptr noundef %i.p) #9
  %i.q = tail call ptr @py_name(ptr noundef nonnull @.str.3) #9
  %i.r = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.q) #9
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @py_name(ptr noundef nonnull @.str.3) #9
  %i.t = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.s, ptr noundef %i.t) #9
  %i.u = tail call ptr @py_name(ptr noundef nonnull @.str.4) #9
  %i.v = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.u) #9
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @py_name(ptr noundef nonnull @.str.4) #9
  %i.x = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.w, ptr noundef %i.x) #9
  %i.y = tail call ptr @py_name(ptr noundef nonnull @.str.5) #9
  %i.z = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.y) #9
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @py_name(ptr noundef nonnull @.str.5) #9
  %i.ab = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.aa, ptr noundef %i.ab) #9
  %i.ac = tail call ptr @py_name(ptr noundef nonnull @.str.6) #9
  %i.ad = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.ac) #9
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @py_name(ptr noundef nonnull @.str.6) #9
  %i.af = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.ae, ptr noundef %i.af) #9
  %i.ag = tail call ptr @py_name(ptr noundef nonnull @.str.8) #9
  %i.ah = tail call zeroext i1 @py_getattr(ptr noundef nonnull %i.f, ptr noundef %i.ag) #9
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @py_name(ptr noundef nonnull @.str.8) #9
  %i.aj = tail call ptr (...) @py_retval() #9
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.ai, ptr noundef %i.aj) #9
  tail call void (...) @py_pop() #9
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void (...) @py_printexc() #9
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 27, i64 1, ptr %i.ak) #10 ; 0 uses
  %i.al = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #11
  unreachable
}

declare ptr @py_newmodule(ptr noundef) local_unnamed_addr #2

declare signext i16 @py_newtype(ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @py_bindmagic(i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @Random__new__(i32 %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr (...) @py_retval() #9
  %i.b = tail call signext i16 @py_totype(ptr noundef %1) #9
  %i.c = tail call ptr @py_newobject(ptr noundef %i.a, i16 noundef signext %i.b, i32 noundef 0, i32 noundef 2500) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2496
  store i32 625, ptr %i.d, align 4, !tbaa !10
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random__init__(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 1, label %mt19937__seed.exit.thread
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.b, i16 noundef signext 33) #9
  br i1 %i.c, label %mt19937__seed.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #9
  br i1 %i.d, label %bb.d, label %mt19937__seed.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.b) #9
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %i.a, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2496 ; 3 uses
  store i32 1, ptr %i.g, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %storemerge13.i = phi i32 [ 1, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.h = sext i32 %storemerge13.i to i64
  %i.i = getelementptr [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 2 uses
  %i.l = lshr i32 %i.k, 30
  %i.m = xor i32 %i.l, %i.k
  %i.n = mul i32 %i.m, 1812433253
  %i.o = add i32 %i.n, %storemerge13.i
  store i32 %i.o, ptr %i.i, align 4, !tbaa !11
  %i.p = load i32, ptr %i.g, align 4, !tbaa !10   ; 2 uses
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr %i.g, align 4, !tbaa !10
  %i.r = icmp slt i32 %i.p, 623
  br i1 %i.r, label %bb.e, label %mt19937__seed.exit.thread, !llvm.loop !0

bb.f:                                             ; preds = %bb.a
  %i.s = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.11) #9
  br label %mt19937__seed.exit

mt19937__seed.exit.thread:                        ; preds = %bb.e, %bb.b, %bb.a
  %i.t = tail call ptr (...) @py_retval() #9
  tail call void @py_newnone(ptr noundef %i.t) #9
  br label %mt19937__seed.exit

mt19937__seed.exit:                               ; preds = %bb.c, %mt19937__seed.exit.thread, %bb.f
  %.1 = phi i1 [ true, %mt19937__seed.exit.thread ], [ %i.s, %bb.f ], [ false, %bb.c ]
  ret i1 %.1
}

declare void @py_bindmethod(i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_seed(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %0) #9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 33) #9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 (...) @time_ns() #9
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #9
  br i1 %i.f, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @py_toint(ptr noundef nonnull %i.c) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.f ]
  %i.h = trunc i64 %.0 to i32
  store i32 %i.h, ptr %i.b, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2496 ; 3 uses
  store i32 1, ptr %i.i, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %storemerge13.i = phi i32 [ 1, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = sext i32 %storemerge13.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %i.n = lshr i32 %i.m, 30
  %i.o = xor i32 %i.n, %i.m
  %i.p = mul i32 %i.o, 1812433253
  %i.q = add i32 %i.p, %storemerge13.i
  store i32 %i.q, ptr %i.k, align 4, !tbaa !11
  %i.r = load i32, ptr %i.i, align 4, !tbaa !10   ; 2 uses
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr %i.i, align 4, !tbaa !10
  %i.t = icmp slt i32 %i.r, 623
  br i1 %i.t, label %bb.h, label %mt19937__seed.exit, !llvm.loop !0

mt19937__seed.exit:                               ; preds = %bb.h
  %i.u = tail call ptr (...) @py_retval() #9
  tail call void @py_newnone(ptr noundef %i.u) #9
  br label %bb.i

bb.i:                                             ; preds = %mt19937__seed.exit, %bb.e, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ true, %mt19937__seed.exit ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_random(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %0) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 2 uses
  %i.c = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.b)
  %i.d = lshr i32 %i.c, 5
  %i.e = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.b)
  %i.f = lshr i32 %i.e, 6
  %i.g = uitofp nneg i32 %i.d to double
  %i.h = fmul nnan double %i.g, f0x4190000000000000
  %i.i = uitofp nneg i32 %i.f to double
  %i.j = fadd nnan double %i.h, %i.i
  %i.k = fmul nnan double %i.j, f0x3CA0000000000000
  %i.l = tail call ptr (...) @py_retval() #9
  tail call void @py_newfloat(ptr noundef %i.l, double noundef %i.k) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_uniform(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 3, i32 noundef %0) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b) #9
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load double, ptr %i.a, align 8, !tbaa !23 ; 4 uses
  %i.j = load double, ptr %i.b, align 8, !tbaa !23 ; 4 uses
  %i.k = fcmp ogt double %i.i, %i.j               ; 2 uses
  %i.l = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.d)
  %i.m = lshr i32 %i.l, 5
  %i.n = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.d)
  %i.o = lshr i32 %i.n, 6
  %i.p = uitofp nneg i32 %i.m to double
  %i.q = fmul nnan double %i.p, f0x4190000000000000
  %i.r = uitofp nneg i32 %i.o to double
  %i.s = fadd nnan double %i.q, %i.r
  %i.t = fmul nnan double %i.s, f0x3CA0000000000000
  %i.u = fsub double %i.j, %i.i
  %i.v = fsub double %i.i, %i.j
  %.sink18.i = select i1 %i.k, double %i.v, double %i.u
  %.sink.i = select i1 %i.k, double %i.j, double %i.i
  %i.w = fmul double %.sink18.i, %i.t
  %i.x = fadd double %.sink.i, %i.w
  %i.y = call ptr (...) @py_retval() #9
  call void @py_newfloat(ptr noundef %i.y, double noundef %i.x) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ %i.c, %bb.b ], [ %.0, %bb.f ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_randint(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 3, i32 noundef %0) #9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #9
  br i1 %i.c, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.d, i16 noundef signext 3) #9
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @py_touserdata(ptr noundef nonnull %1) #9 ; 2 uses
  %i.g = tail call i64 @py_toint(ptr noundef nonnull %i.b) #9 ; 3 uses
  %i.h = tail call i64 @py_toint(ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.i = icmp sgt i64 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.10) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = sub nsw i64 %i.h, %i.g                   ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = icmp ult i64 %i.k, 2147483647
  %i.n = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.f)
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  br i1 %i.m, label %mt19937__randint.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw i64 %i.o, 32
  %i.q = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.f)
  %i.r = zext i32 %i.q to i64
  %i.s = or disjoint i64 %i.p, %i.r
  br label %mt19937__randint.exit

mt19937__randint.exit:                            ; preds = %bb.g, %bb.h
  %.pn10.i = phi i64 [ %i.s, %bb.h ], [ %i.o, %bb.g ]
  %.pn.i = urem i64 %.pn10.i, %i.l
  %.0.i = add i64 %.pn.i, %i.g
  %i.t = tail call ptr (...) @py_retval() #9
  tail call void @py_newint(ptr noundef %i.t, i64 noundef %.0.i) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %mt19937__randint.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %i.j, %bb.f ], [ true, %mt19937__randint.exit ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_shuffle(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %0) #9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 8) #9
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @py_touserdata(ptr noundef nonnull %1) #9
  %i.e = tail call i32 @py_list_len(ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %mt19937__randint.exit, label %._crit_edge

._crit_edge:                                      ; preds = %mt19937__randint.exit, %bb.d
  %i.g = tail call ptr (...) @py_retval() #9
  tail call void @py_newnone(ptr noundef %i.g) #9
  br label %bb.e

mt19937__randint.exit:                            ; preds = %bb.d, %mt19937__randint.exit
  %.014.in16 = phi i32 [ %.014, %mt19937__randint.exit ], [ %i.e, %bb.d ] ; 3 uses
  %.014 = add nsw i32 %.014.in16, -1              ; 2 uses
  %i.h = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.d)
  %i.i = urem i32 %i.h, %.014.in16
  tail call void @py_list_swap(ptr noundef nonnull %i.b, i32 noundef %.014, i32 noundef %i.i) #9
  %i.j = icmp samesign ugt i32 %.014.in16, 2
  br i1 %i.j, label %mt19937__randint.exit, label %._crit_edge, !llvm.loop !29

bb.e:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %._crit_edge ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_choice(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %0) #9
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.d, i16 noundef signext 6) #9
  br i1 %i.e, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { ptr, i32 } @py_tosv(ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i32 } %i.f, 1        ; 2 uses
  %i.i = tail call i32 @c11_sv__u8_length(ptr %i.g, i32 %i.h) #9 ; 3 uses
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.j = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.13) #9
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %i.i to i64
  %i.l = icmp sgt i32 %i.i, -1
  %i.m = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.c)
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = shl nuw i64 %i.n, 32
  %i.p = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.c)
  %i.q = zext i32 %i.p to i64
  %i.r = or disjoint i64 %i.o, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn10.i = phi i64 [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %.pn.i = urem i64 %.pn10.i, %i.k
  %i.s = trunc i64 %.pn.i to i32
  %i.t = tail call { ptr, i32 } @c11_sv__u8_getitem(ptr %i.g, i32 %i.h, i32 noundef %i.s) #9 ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = extractvalue { ptr, i32 } %i.t, 1
  %i.w = tail call ptr (...) @py_retval() #9
  tail call void @py_newstrv(ptr noundef %i.w, ptr %i.u, i32 %i.v) #9
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.x = call i32 @pk_arrayview(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #9 ; 3 uses
  switch i32 %i.x, label %bb.k [
    i32 -1, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.14) #9
  br label %.thread31

bb.j:                                             ; preds = %bb.h
  %i.z = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.13) #9
  br label %.thread31

bb.k:                                             ; preds = %bb.h
  %i.aa = sext i32 %i.x to i64
  %i.ab = icmp sgt i32 %i.x, -1
  %i.ac = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.c)
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.c)
  %i.ag = zext i32 %i.af to i64
  %i.ah = or disjoint i64 %i.ae, %i.ag
  br label %bb.m

.thread31:                                        ; preds = %bb.i, %bb.j
  %.1.ph = phi i1 [ %i.z, %bb.j ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn10.i27 = phi i64 [ %i.ah, %bb.l ], [ %i.ad, %bb.k ]
  %.pn.i28 = urem i64 %.pn10.i27, %i.aa
  %i.ai = call ptr (...) @py_retval() #9
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !25
  %sext = shl i64 %.pn.i28, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.m, %.thread31, %.thread, %bb.b
  %.3 = phi i1 [ %i.b, %bb.b ], [ %.1.ph, %.thread31 ], [ %i.j, %.thread ], [ true, %bb.m ], [ true, %bb.g ]
  ret i1 %.3
}

declare void @py_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_tpobject(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @Random_choices(i32 %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = tail call ptr @py_touserdata(ptr noundef %1) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = call i32 @pk_arrayview(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9 ; 11 uses
  switch i32 %i.f, label %bb.d [
    i32 -1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.15) #9
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.h = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.13) #9
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = call zeroext i1 @py_checktype(ptr noundef nonnull %i.j, i16 noundef signext 3) #9
  br i1 %i.k, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @py_toint(ptr noundef nonnull %i.j) #9 ; 3 uses
  %i.m = sext i32 %i.f to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 3
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #12 ; 17 uses
  %i.p = call zeroext i1 @py_istype(ptr noundef nonnull %i.i, i16 noundef signext 33) #9
  br i1 %i.p, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.q = icmp sgt i32 %i.f, 0
  br i1 %i.q, label %.lr.ph119.preheader, label %.loopexit

.lr.ph119.preheader:                              ; preds = %.preheader
  %wide.trip.count134 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count134, 3      ; 3 uses
  %i.r = icmp ult i32 %i.f, 4
  br i1 %i.r, label %.lr.ph119.epil.preheader, label %.lr.ph119.preheader.new

.lr.ph119.preheader.new:                          ; preds = %.lr.ph119.preheader
  %unroll_iter = and i64 %wide.trip.count134, 2147483644
  br label %.lr.ph119.a

.lr.ph119.a:                                      ; preds = %.lr.ph119.a, %.lr.ph119.preheader.new
  %indvars.iv131.a = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %indvars.iv.next132.3, %.lr.ph119.a ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %niter.next.3, %.lr.ph119.a ]
  %indvars.iv.next132 = or disjoint i64 %indvars.iv131.a, 1 ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.next132 to i32
  %3 = uitofp nneg i32 %2 to double
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv131.a
  store double %3, ptr %i.s, align 8, !tbaa !23
  %indvars.iv.next132.1 = or disjoint i64 %indvars.iv131.a, 2 ; 2 uses
  %4 = trunc nuw nsw i64 %indvars.iv.next132.1 to i32
  %5 = uitofp nneg i32 %4 to double
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next132
  store double %5, ptr %6, align 8, !tbaa !23
  %indvars.iv.next132.2 = or disjoint i64 %indvars.iv131.a, 3 ; 2 uses
  %7 = trunc nuw nsw i64 %indvars.iv.next132.2 to i32
  %8 = uitofp nneg i32 %7 to double
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next132.1
  store double %8, ptr %9, align 8, !tbaa !23
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131.a, 4 ; 3 uses
  %10 = trunc nuw nsw i64 %indvars.iv.next132.3 to i32
  %11 = uitofp nneg i32 %10 to double
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next132.2
  store double %11, ptr %12, align 8, !tbaa !23
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph119.a, !llvm.loop !30

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.t = call i32 @pk_arrayview(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.o) #9
  %i.v = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.16) #9
  br label %.thread112

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.t, %i.f
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.o) #9
  %i.w = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.17) #9
  br label %.thread112

bb.j:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.y = call zeroext i1 @py_castfloat(ptr noundef %i.x, ptr noundef %i.o) #9
  br i1 %i.y, label %.preheader115, label %bb.k

.preheader115:                                    ; preds = %bb.j
  %.not105.not116 = icmp sgt i32 %i.f, 1
  br i1 %.not105.not116, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader115
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.o) #9
  br label %.thread112

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c) #9
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  call void @free(ptr noundef %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread112

bb.m:                                             ; preds = %.lr.ph
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !23
  %i.af = load double, ptr %i.c, align 8, !tbaa !23
  %i.ag = fadd double %i.ae, %i.af
  store double %i.ag, ptr %i.ac, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

.thread112:                                       ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.397.ph = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ %i.w, %bb.i ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.z

._crit_edge:                                      ; preds = %bb.m, %.preheader115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph119.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph119.epil.preheader

.lr.ph119.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph119.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph119.preheader ], [ %indvars.iv.next132.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod146)
  br label %.lr.ph119.epil

.lr.ph119.epil:                                   ; preds = %.lr.ph119.epil, %.lr.ph119.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph119.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph119.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph119.epil.preheader ], [ %epil.iter.next, %.lr.ph119.epil ]
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1 ; 2 uses
  %13 = trunc nuw nsw i64 %indvars.iv.next132.epil to i32
  %14 = uitofp nneg i32 %13 to double
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv131.epil
  store double %14, ptr %15, align 8, !tbaa !23
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph119.epil, !llvm.loop !32

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph119.epil, %.preheader, %._crit_edge
  %i.ah = getelementptr [8 x i8], ptr %i.o, i64 %i.m
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ak = fcmp ugt double %i.aj, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  call void @free(ptr noundef nonnull %i.o) #9
  %i.al = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.18) #9
  br label %bb.z

bb.o:                                             ; preds = %.loopexit
  %i.am = call ptr (...) @py_retval() #9
  %i.an = trunc i64 %i.l to i32
  call void @py_newlistn(ptr noundef %i.am, i32 noundef %i.an) #9
  %i.ao = icmp sgt i64 %i.l, 0
  br i1 %i.ao, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.o
  %i.ap = icmp sgt i32 %i.f, 7
  %i.aq = ptrtoint ptr %i.o to i64
  br label %bb.p

._crit_edge129:                                   ; preds = %bb.y, %bb.o
  call void @free(ptr noundef %i.o) #9
  br label %bb.z

bb.p:                                             ; preds = %.lr.ph128, %bb.y
  %indvars.iv136 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next137, %bb.y ] ; 2 uses
  %i.ar = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.d)
  %i.as = lshr i32 %i.ar, 5
  %i.at = call fastcc i32 @mt19937__next_uint32(ptr noundef %i.d)
  %i.au = lshr i32 %i.at, 6
  %i.av = uitofp nneg i32 %i.as to double
  %i.aw = fmul nnan double %i.av, f0x4190000000000000
  %i.ax = uitofp nneg i32 %i.au to double
  %i.ay = fadd nnan double %i.aw, %i.ax
  %i.az = fmul nnan double %i.ay, f0x3CA0000000000000
  %i.ba = fmul double %i.aj, %i.az                ; 8 uses
  br i1 %i.ap, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.p, %.lr.ph123
  %.0121 = phi i32 [ %.1, %.lr.ph123 ], [ %i.f, %bb.p ] ; 2 uses
  %.086120 = phi ptr [ %.187, %.lr.ph123 ], [ %i.o, %bb.p ] ; 2 uses
  %i.bb = lshr i32 %.0121, 1                      ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.086120, i64 %i.bc ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !23
  %i.bf = fcmp olt double %i.be, %i.ba            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.neg = xor i32 %i.bb, -1
  %i.bh = add nsw i32 %.0121, %.neg
  %.187 = select i1 %i.bf, ptr %i.bg, ptr %.086120 ; 2 uses
  %.1 = select i1 %i.bf, i32 %i.bh, i32 %i.bb     ; 3 uses
  %i.bi = icmp sgt i32 %.1, 7
  br i1 %i.bi, label %.lr.ph123, label %._crit_edge124, !llvm.loop !33

._crit_edge124:                                   ; preds = %.lr.ph123, %bb.p
  %.086.lcssa = phi ptr [ %i.o, %bb.p ], [ %.187, %.lr.ph123 ] ; 9 uses
  %.0.lcssa = phi i32 [ %i.f, %bb.p ], [ %.1, %.lr.ph123 ]
  switch i32 %.0.lcssa, label %bb.x [
    i32 7, label %bb.q
    i32 6, label %bb.r
    i32 5, label %bb.s
    i32 4, label %bb.t
    i32 3, label %bb.u
    i32 2, label %bb.v
    i32 1, label %bb.w
    i32 0, label %bb.y
  ]

bb.q:                                             ; preds = %._crit_edge124
  %i.bj = load double, ptr %.086.lcssa, align 8, !tbaa !23
  %i.bk = fcmp olt double %i.bj, %i.ba
  %spec.select.idx = select i1 %i.bk, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %spec.select.idx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge124
  %.2 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select, %bb.q ] ; 2 uses
  %i.bl = load double, ptr %.2, align 8, !tbaa !23
  %i.bm = fcmp olt double %i.bl, %i.ba
  %spec.select106.idx = select i1 %i.bm, i64 8, i64 0
  %spec.select106 = getelementptr inbounds nuw i8, ptr %.2, i64 %spec.select106.idx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge124
  %.3 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select106, %bb.r ] ; 2 uses
  %i.bn = load double, ptr %.3, align 8, !tbaa !23
  %i.bo = fcmp olt double %i.bn, %i.ba
  %spec.select107.idx = select i1 %i.bo, i64 8, i64 0
  %spec.select107 = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select107.idx
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge124
  %.4 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select107, %bb.s ] ; 2 uses
  %i.bp = load double, ptr %.4, align 8, !tbaa !23
  %i.bq = fcmp olt double %i.bp, %i.ba
  %spec.select108.idx = select i1 %i.bq, i64 8, i64 0
  %spec.select108 = getelementptr inbounds nuw i8, ptr %.4, i64 %spec.select108.idx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge124
  %.5 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select108, %bb.t ] ; 2 uses
  %i.br = load double, ptr %.5, align 8, !tbaa !23
  %i.bs = fcmp olt double %i.br, %i.ba
  %spec.select109.idx = select i1 %i.bs, i64 8, i64 0
  %spec.select109 = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select109.idx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge124
  %.6 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select109, %bb.u ] ; 2 uses
  %i.bt = load double, ptr %.6, align 8, !tbaa !23
  %i.bu = fcmp olt double %i.bt, %i.ba
  %spec.select110.idx = select i1 %i.bu, i64 8, i64 0
  %spec.select110 = getelementptr inbounds nuw i8, ptr %.6, i64 %spec.select110.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge124
  %.7 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select110, %bb.v ] ; 2 uses
  %i.bv = load double, ptr %.7, align 8, !tbaa !23
  %i.bw = fcmp olt double %i.bv, %i.ba
  %spec.select111.idx = select i1 %i.bw, i64 8, i64 0
  %spec.select111 = getelementptr inbounds nuw i8, ptr %.7, i64 %spec.select111.idx
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge124
  unreachable

bb.y:                                             ; preds = %bb.w, %._crit_edge124
  %.8 = phi ptr [ %.086.lcssa, %._crit_edge124 ], [ %spec.select111, %bb.w ]
  %i.bx = ptrtoint ptr %.8 to i64
  %i.by = sub i64 %i.bx, %i.aq
  %i.bz = call ptr (...) @py_retval() #9
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !25
  %sext = shl i64 %i.by, 29
  %i.cb = ashr i64 %sext, 32
  %i.cc = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = trunc nuw nsw i64 %indvars.iv136 to i32
  call void @py_list_setitem(ptr noundef %i.bz, i32 noundef %i.cd, ptr noundef %i.cc) #9
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next137, %i.l
  br i1 %exitcond139.not, label %._crit_edge129, label %bb.p, !llvm.loop !34

bb.z:                                             ; preds = %.thread112, %bb.d, %bb.n, %._crit_edge129, %bb.c, %bb.b
  %.7101 = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ false, %bb.d ], [ %.397.ph, %.thread112 ], [ %i.al, %bb.n ], [ true, %._crit_edge129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %.7101
}

declare ptr @py_pushtmp(...) local_unnamed_addr #2

declare zeroext i1 @py_tpcall(i16 noundef signext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_retval(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @py_getattr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_name(ptr noundef) local_unnamed_addr #2

declare void @py_setdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @py_pop(...) local_unnamed_addr #2

declare void @py_printexc(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @py_newRandom(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_name(ptr noundef nonnull @.str.1) #9
  %i.b = tail call signext i16 @py_gettype(ptr noundef nonnull @.str, ptr noundef %i.a) #9
  %i.c = tail call ptr @py_newobject(ptr noundef %0, i16 noundef signext %i.b, i32 noundef 0, i32 noundef 2500) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2496
  store i32 625, ptr %i.d, align 4, !tbaa !10
  ret void
}

declare signext i16 @py_gettype(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_newobject(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @py_Random_seed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #9 ; 3 uses
  %i.b = trunc i64 %1 to i32
  store i32 %i.b, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2496 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge13.i = phi i32 [ 1, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %i.d = sext i32 %storemerge13.i to i64
  %i.e = getelementptr [4 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.h = lshr i32 %i.g, 30
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 1812433253
  %i.k = add i32 %i.j, %storemerge13.i
  store i32 %i.k, ptr %i.e, align 4, !tbaa !11
  %i.l = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !10
  %i.n = icmp slt i32 %i.l, 623
  br i1 %i.n, label %bb.b, label %mt19937__seed.exit, !llvm.loop !0

mt19937__seed.exit:                               ; preds = %bb.b
  ret void
}

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define double @py_Random_random(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #9 ; 2 uses
  %i.b = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.c = lshr i32 %i.b, 5
  %i.d = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.e = lshr i32 %i.d, 6
  %i.f = uitofp nneg i32 %i.c to double
  %i.g = fmul nnan double %i.f, f0x4190000000000000
  %i.h = uitofp nneg i32 %i.e to double
  %i.i = fadd nnan double %i.g, %i.h
  %i.j = fmul nnan double %i.i, f0x3CA0000000000000
  ret double %i.j
}

; Function Attrs: nounwind uwtable
define double @py_Random_uniform(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #9 ; 2 uses
  %i.b = fcmp ogt double %1, %2                   ; 2 uses
  %i.c = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.d = lshr i32 %i.c, 5
  %i.e = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.f = lshr i32 %i.e, 6
  %i.g = uitofp nneg i32 %i.d to double
  %i.h = fmul nnan double %i.g, f0x4190000000000000
  %i.i = uitofp nneg i32 %i.f to double
  %i.j = fadd nnan double %i.h, %i.i
  %i.k = fmul nnan double %i.j, f0x3CA0000000000000
  %i.l = fsub double %2, %1
  %i.m = fsub double %1, %2
  %.sink18.i = select i1 %i.b, double %i.m, double %i.l
  %.sink.i = select i1 %i.b, double %2, double %1
  %i.n = fmul double %.sink18.i, %i.k
  %i.o = fadd double %.sink.i, %i.n
  ret double %i.o
}

; Function Attrs: nounwind uwtable
define i64 @py_Random_randint(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #9 ; 2 uses
  %i.b = icmp sgt i64 %1, %2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 48, i64 1, ptr %i.c) #10 ; 0 uses
  %i.d = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i64 %2, %1                       ; 2 uses
  %i.f = icmp ult i64 %i.e, 2147483647
  %i.g = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  br i1 %i.f, label %mt19937__randint.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.h, 32
  %i.j = tail call fastcc i32 @mt19937__next_uint32(ptr noundef %i.a)
  %i.k = zext i32 %i.j to i64
  %i.l = or disjoint i64 %i.i, %i.k
  br label %mt19937__randint.exit

mt19937__randint.exit:                            ; preds = %bb.c, %bb.d
  %.pn10.i = phi i64 [ %i.l, %bb.d ], [ %i.h, %bb.c ]
  %i.m = add nuw nsw i64 %i.e, 1
  %.pn.i = urem i64 %.pn10.i, %i.m
  %.0.i = add i64 %.pn.i, %1
  ret i64 %.0.i
}

declare i64 @time_ns(...) local_unnamed_addr #2

declare signext i16 @py_totype(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i64 @py_toint(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #2

declare void @py_newnone(ptr noundef) local_unnamed_addr #2

declare void @py_newfloat(ptr noundef, double noundef) local_unnamed_addr #2

declare zeroext i1 @py_castfloat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @py_list_len(ptr noundef) local_unnamed_addr #2

declare void @py_list_swap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #2

declare i32 @c11_sv__u8_length(ptr, i32) local_unnamed_addr #2

declare { ptr, i32 } @c11_sv__u8_getitem(ptr, i32, i32 noundef) local_unnamed_addr #2

declare void @py_newstrv(ptr noundef, ptr, i32) local_unnamed_addr #2

declare i32 @pk_arrayview(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @py_newlistn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @py_list_setitem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"mt19937", !5, i64 0, !6, i64 2496}
!10 = !{!9, !6, i64 2496}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_Bool", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{i64 0, i64 2, !15, i64 2, i64 1, !17, i64 4, i64 4, !11, i64 8, i64 16, !18}
!20 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS9py_TValue", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = distinct !{!26, !12}
!27 = !{!"p1 _ZTS13py_OpaqueName", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !35}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
