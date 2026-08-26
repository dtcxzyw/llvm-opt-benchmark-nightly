Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/unpack?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libraw_decoder_info_t = type { ptr, i32 }

$__clang_call_terminate = comdat any

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str = private unnamed_addr constant [6 x i8] c"Nikon\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Hasselblad\00", align 1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -100013, 1) i32 @_ZN6LibRaw6unpackEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.libraw_decoder_info_t, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %i.d = and i32 %i.c, 268435454
  %i.e = add nsw i32 %i.d, -8
  %or.cond127 = icmp ult i32 %i.e, -6
  br i1 %or.cond127, label %bb.db, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.db, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %.not71 = icmp eq ptr %i.i, null
  br i1 %.not71, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = invoke noundef i32 %i.i(ptr noundef %i.k, i32 noundef 8, i32 noundef 0, i32 noundef 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.m, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
          to label %bb.de unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ci

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5556 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.s = load i32, ptr %i.r, align 8, !tbaa !80
  %.not73 = icmp ult i32 %i.p, %i.s
  br i1 %.not73, label %bb.i, label %bb.db

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 3 uses
  %.unpack = load i64, ptr %i.t, align 8, !tbaa !81
  %.not76 = icmp eq i64 %.unpack, 0
  br i1 %.not76, label %bb.db, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %.not77 = icmp eq ptr %i.u, null
  br i1 %.not77, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.u)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.a, align 8, !tbaa !82
  br label %bb.n

bb.m:                                             ; preds = %bb.t, %bb.s, %bb.o, %bb.k
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ci

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193776 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 2 uses
  %.not78 = icmp eq ptr %i.x, null
  br i1 %.not78, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.x)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.w, align 8, !tbaa !83
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 381808 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !84   ; 2 uses
  %.not79 = icmp eq i32 %i.z, 0
  br i1 %.not79, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !85
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 20
  %i.af = icmp samesign ult i64 %i.ae, %i.aa
  br i1 %i.af, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 10, ptr %i.ag, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
          to label %bb.de unwind label %bb.m

bb.t:                                             ; preds = %bb.r
  %i.ah = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.aa)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 381616
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.aj = load ptr, ptr %0, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.w unwind label %bb.y, !call_target !89 ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.aq = load <2 x i16>, ptr %i.ap, align 4, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 381656
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 3 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !109 ; 3 uses
  %i.aw = zext i16 %i.av to i32                   ; 4 uses
  %i.ax = load i16, ptr %i.an, align 8, !tbaa !110 ; 3 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 381670
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !111
  %.not80 = icmp eq i16 %i.ba, 0
  br i1 %.not80, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !112
  %i.bd = zext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !113
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bg, %i.bd
  %spec.select = call i32 @llvm.umax.i32(i32 %i.bh, i32 %i.aw)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !114
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !115
  %i.bn = zext i16 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bn, %i.bk
  %spec.select128 = call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.ay)
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.z:                                             ; preds = %bb.x, %bb.w
  %.057.a = phi i32 [ %i.aw, %bb.w ], [ %spec.select, %bb.x ] ; 4 uses
  %.152 = phi i32 [ %i.ay, %bb.w ], [ %spec.select128, %bb.x ] ; 3 uses
  %i.bq = icmp samesign ugt i32 %.057.a, 65535
  %i.br = icmp samesign ugt i32 %.152, 65535
  %or.cond = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bs = call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 5, ptr %i.bs, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
          to label %bb.de unwind label %bb.ab

bb.ab:                                            ; preds = %bb.cb, %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.ac:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 193792 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 193824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i8 0, i64 40, i1 false)
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not129 = icmp eq ptr %i.bx, null
  br i1 %.not129, label %bb.ad, label %bb.ca

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !116 ; 4 uses
  %i.ca = and i32 %i.bz, 128
  %.not82 = icmp eq i32 %i.ca, 0
  br i1 %.not82, label %bb.ae, label %bb.bc

bb.ae:                                            ; preds = %bb.ad
  %i.cb = and i32 %i.bz, 2048
  %.not83 = icmp eq i32 %i.cb, 0
  br i1 %.not83, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load i32, ptr %i.o, align 4, !tbaa !79
  %.not90 = icmp eq i32 %i.cc, 0
  %2 = add nuw nsw i32 %.152, 8
  %i.cd = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ce = load i32, ptr %i.y, align 8, !tbaa !84
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !85
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 20               ; 2 uses
  br i1 %.not90, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = shl nuw nsw i32 %.057.a, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, %i.cd            ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, %i.cf
  %i.co = icmp samesign ugt i64 %i.cn, %i.cj
  br i1 %i.co, label %.invoke, label %bb.ai

bb.ah:                                            ; preds = %.invoke, %bb.bc, %bb.az, %bb.ar, %bb.am, %bb.ai
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.ai:                                            ; preds = %bb.ag
  %i.cq = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.cm)
          to label %bb.aj unwind label %bb.ah     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cq, ptr %i.w, align 8, !tbaa !83
  store ptr %i.cq, ptr %i.bu, align 8, !tbaa !118
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !119
  %.not91 = icmp eq i32 %i.cs, 0
  br i1 %.not91, label %bb.ak, label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load i16, ptr %i.au, align 2, !tbaa !109
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cr, align 8, !tbaa !119
  br label %bb.bc

bb.al:                                            ; preds = %bb.af
  %i.cw = shl nuw nsw i32 %.057.a, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = mul nuw nsw i64 %i.cx, %i.cd
  %i.cz = add nuw nsw i64 %i.cy, %i.cf
  %i.da = icmp samesign ugt i64 %i.cz, %i.cj
  br i1 %i.da, label %.invoke, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = shl nuw nsw i32 %i.aw, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !119
  store ptr null, ptr %i.w, align 8, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !112
  %. = call i16 @llvm.umax.i16(i16 %i.de, i16 %i.av)
  %i.df = zext i16 %. to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !114
  %i.di = call i16 @llvm.umax.i16(i16 %i.dh, i16 %i.ax)
  %i.dj = zext i16 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 8
  %i.dl = shl nuw nsw i64 %i.df, 3
  %i.dm = mul nuw nsw i64 %i.dl, %i.dk
  %i.dn = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.dm)
          to label %bb.an unwind label %bb.ah

bb.an:                                            ; preds = %bb.am
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !82
  br label %bb.bc

bb.ao:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !120
  %.not84 = icmp eq i32 %i.dp, 0
  br i1 %.not84, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !121
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %3 = add nuw nsw i32 %.152, 8
  %i.dt = zext nneg i32 %3 to i64
  %i.du = shl nuw nsw i32 %.057.a, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = mul nuw nsw i64 %i.dv, %i.dt            ; 2 uses
  %i.dx = load i32, ptr %i.y, align 8, !tbaa !84
  %i.dy = zext i32 %i.dx to i64
  %i.dz = add nuw nsw i64 %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !85
  %i.ec = zext i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 20
  %i.ee = icmp samesign ugt i64 %i.dz, %i.ed
  br i1 %i.ee, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.dw)
          to label %bb.as unwind label %bb.ah     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ef, ptr %i.w, align 8, !tbaa !83
  store ptr %i.ef, ptr %i.bu, align 8, !tbaa !118
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !119
  %.not89 = icmp eq i32 %i.eh, 0
  br i1 %.not89, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.ei = load i16, ptr %i.au, align 2, !tbaa !109
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eg, align 8, !tbaa !119
  br label %bb.bc

bb.au:                                            ; preds = %bb.ap
  %i.el = and i32 %i.bz, 512
  %.not85 = icmp eq i32 %i.el, 0
  br i1 %.not85, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.em = shl nuw nsw i32 %i.aw, 3
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.em, ptr %i.en, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !112
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre138 = load i16, ptr %.phi.trans.insert137, align 4, !tbaa !114
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !112 ; 3 uses
  store i16 %i.ep, ptr %i.ao, align 2, !tbaa !122
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !114 ; 3 uses
  store i16 %i.er, ptr %i.ap, align 4, !tbaa !123
  store i16 0, ptr %i.as, align 4, !tbaa !108
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !119
  %.not86 = icmp eq i32 %i.et, 0
  br i1 %.not86, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.eu = and i32 %i.bz, 1024
  %.not87 = icmp eq i32 %i.eu, 0
  %.122 = select i1 %.not87, ptr %i.eo, ptr %i.au
  %.in.in = load i16, ptr %.122, align 2, !tbaa !107
  %.in = zext i16 %.in.in to i32
  %i.ev = shl nuw nsw i32 %.in, 3
  store i32 %i.ev, ptr %i.es, align 8, !tbaa !119
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %i.ew = phi i16 [ %i.er, %bb.aw ], [ %i.er, %bb.ax ], [ %.pre138, %bb.av ]
  %i.ex = phi i16 [ %i.ep, %bb.aw ], [ %i.ep, %bb.ax ], [ %.pre, %bb.av ]
  %.123 = call i16 @llvm.umax.i16(i16 %i.ex, i16 %i.av)
  %i.ey = zext i16 %.123 to i64
  %i.ez = call i16 @llvm.umax.i16(i16 %i.ew, i16 %i.ax)
  %i.fa = zext i16 %i.ez to i64
  %i.fb = add nuw nsw i64 %i.fa, 8
  %i.fc = mul nuw nsw i64 %i.fb, %i.ey            ; 2 uses
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = load i32, ptr %i.y, align 8, !tbaa !84
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !85
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 20
  %i.fl = icmp samesign ugt i64 %i.fg, %i.fk
  br i1 %i.fl, label %.invoke, label %bb.az

.invoke:                                          ; preds = %bb.ay, %bb.aq, %bb.al, %bb.ag
  %i.fm = call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 10, ptr %i.fm, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %bb.ay
  store ptr null, ptr %i.w, align 8, !tbaa !83
  %i.fn = and i64 %i.fc, 4294967295
  %i.fo = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.fn, i64 noundef 8)
          to label %bb.ba unwind label %bb.ah     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !82
  %i.fp = load i32, ptr %i.by, align 8, !tbaa !116
  %i.fq = and i32 %i.fp, 512
  %.not88 = icmp eq i32 %i.fq, 0
  br i1 %.not88, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.fo, ptr %i.bu, align 8, !tbaa !118
  br label %bb.bc

bb.bc:                                            ; preds = %bb.aj, %bb.ak, %bb.an, %bb.at, %bb.as, %bb.bb, %bb.ba, %bb.ad
  %.not102 = phi i1 [ true, %bb.ad ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.an ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.as ], [ true, %bb.at ]
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !74  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !124
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !87
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef i32 %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i64 noundef %i.ft, i32 noundef 0)
          to label %bb.bd unwind label %bb.ah, !call_target !125 ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !133
  %.unpack92 = load i64, ptr %i.t, align 8, !tbaa !81 ; 4 uses
  %.elt93 = getelementptr inbounds nuw i8, ptr %0, i64 768424 ; 2 uses
  %.unpack94 = load i64, ptr %.elt93, align 8, !tbaa !81 ; 2 uses
  %i.ga = icmp eq i64 %.unpack92, ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64)
  %i.gb = icmp eq i64 %.unpack94, 0
  %i.gc = and i1 %i.ga, %i.gb
  br i1 %i.gc, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ge = call i32 @strcasecmp(ptr noundef nonnull %i.gd, ptr noundef nonnull @.str) #12
  %.not95 = icmp eq i32 %i.ge, 0
  br i1 %.not95, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gf = call i32 @strcasecmp(ptr noundef nonnull %i.gd, ptr noundef nonnull @.str.1) #12
  %.not96 = icmp eq i32 %i.gf, 0
  br i1 %.not96, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 65535, ptr %i.fy, align 8, !tbaa !133
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.gg = getelementptr inbounds i8, ptr %0, i64 %.unpack94 ; 2 uses
  %i.gh = and i64 %.unpack92, 1
  %.not100 = icmp eq i64 %i.gh, 0
  br i1 %.not100, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !87
  %i.gj = getelementptr i8, ptr %i.gi, i64 %.unpack92
  %i.gk = getelementptr i8, ptr %i.gj, i64 -1
  %i.gl = load ptr, ptr %i.gk, align 8, !nosanitize !134
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gm = inttoptr i64 %.unpack92 to ptr
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gn = phi ptr [ %i.gl, %bb.bi ], [ %i.gm, %bb.bj ]
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(768512) %i.gg)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not102, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr null, ptr %i.bu, align 8, !tbaa !118
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.go = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %.unpack103 = load i64, ptr %i.t, align 8, !tbaa !81
  %.unpack105 = load i64, ptr %.elt93, align 8, !tbaa !81
  %i.gp = icmp eq i64 %.unpack103, ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64)
  %i.gq = icmp eq i64 %.unpack105, 0
  %i.gr = and i1 %i.gp, %i.gq
  br i1 %i.gr, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.gt = call i32 @strcasecmp(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str) #12
  %.not106 = icmp eq i32 %i.gt, 0
  br i1 %.not106, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gu = call i32 @strcasecmp(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.1) #12
  %.not107 = icmp eq i32 %i.gu, 0
  br i1 %.not107, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i32 %i.fz, ptr %i.fy, align 8, !tbaa !133
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %i.gv = load i32, ptr %i.by, align 8, !tbaa !116 ; 3 uses
  %i.gw = and i32 %i.gv, 128
  %.not108 = icmp eq i32 %i.gw, 0
  br i1 %.not108, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.gx = and i32 %i.gv, 2048
  %.not109 = icmp eq i32 %i.gx, 0
  br i1 %.not109, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gy = load i32, ptr %i.o, align 4, !tbaa !79
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  store ptr %i.ha, ptr %i.w, align 8, !tbaa !83
  store ptr %i.ha, ptr %i.bv, align 8, !tbaa !135
  store ptr null, ptr %i.a, align 8, !tbaa !82
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !120
  %.not110 = icmp eq i32 %i.hc, 0
  br i1 %.not110, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !121
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  store ptr %i.hg, ptr %i.w, align 8, !tbaa !83
  store ptr %i.hg, ptr %i.bv, align 8, !tbaa !135
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !136
  %i.hj = and i32 %i.hi, 256
  %i.hk = and i32 %i.gv, 1536
  %i.hl = or disjoint i32 %i.hk, %i.hj
  %or.cond131 = icmp eq i32 %i.hl, 0
  br i1 %or.cond131, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.hm, align 2, !tbaa !113
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ho = load <2 x i16>, ptr %i.hn, align 4, !tbaa !107
  store <2 x i16> %i.ho, ptr %i.an, align 8, !tbaa !107
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.hp, align 8, !tbaa !115
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bs, %bb.bw, %bb.bx, %bb.bz, %bb.by, %bb.bv, %bb.ac
  %i.hq = load ptr, ptr %i.bu, align 8, !tbaa !118
  %.not114 = icmp eq ptr %i.hq, null
  br i1 %.not114, label %.preheader, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6LibRaw18crop_masked_pixelsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader unwind label %bb.ab

.preheader:                                       ; preds = %bb.cb, %bb.ca
  store <2 x i16> %i.aq, ptr %i.ap, align 4, !tbaa !107
  store i16 %i.at, ptr %i.as, align 4, !tbaa !108
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.hs = load <4 x i32>, ptr %i.hr, align 8, !tbaa !137 ; 2 uses
  %i.ht = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %i.hs) ; 2 uses
  %i.hu = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hw = sub <4 x i32> %i.hs, %i.hv
  store <4 x i32> %i.hw, ptr %i.hr, align 8, !tbaa !137
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !138
  %i.ia = add i32 %i.hz, %i.ht
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !138
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 194488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(187088) %i.ib, ptr noundef nonnull align 8 dereferenceable(187088) %i.hx, i64 187088, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 194288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ic, ptr noundef nonnull align 8 dereferenceable(184) %i.an, i64 184, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 193848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.id, ptr noundef nonnull align 8 dereferenceable(440) %i.q, i64 440, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 194472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.if = load i32, ptr %i.b, align 8, !tbaa !11
  %i.ig = or i32 %i.if, 8
  store i32 %i.ig, ptr %i.b, align 8, !tbaa !11
  %i.ih = load ptr, ptr %i.h, align 8, !tbaa !75  ; 2 uses
  %.not115 = icmp eq ptr %i.ih, null
  br i1 %.not115, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %.preheader
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !76
  %i.ik = invoke noundef i32 %i.ih(ptr noundef %i.ij, i32 noundef 8, i32 noundef 1, i32 noundef 2)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %.not116 = icmp eq i32 %i.ik, 0
  br i1 %.not116, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.il = call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.il, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.il, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
          to label %bb.de unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.im = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.db

bb.ch:                                            ; preds = %bb.ab, %bb.cf, %bb.bn, %bb.ah, %bb.y
  %.pn117.pn = phi { ptr, i32 } [ %i.bp, %bb.y ], [ %i.bt, %bb.ab ], [ %i.im, %bb.cf ], [ %i.go, %bb.bn ], [ %i.cp, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.m, %bb.g
  %.pn120 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.v, %bb.m ], [ %.pn117.pn, %bb.ch ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn120, 1      ; 3 uses
  %.355 = extractvalue { ptr, i32 } %.pn120, 0    ; 3 uses
  %i.in = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #10
  %i.io = icmp eq i32 %.3, %i.in
  br i1 %i.io, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ip = call ptr @__cxa_begin_catch(ptr %.355) #10 ; 0 uses
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ck unwind label %bb.da

bb.ck:                                            ; preds = %bb.cj
  call void @__cxa_end_catch()
  br label %bb.db

bb.cl:                                            ; preds = %bb.ci
  %i.iq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17LibRaw_exceptions) #10
  %i.ir = icmp eq i32 %.3, %i.iq
  br i1 %i.ir, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.is = call ptr @__cxa_begin_catch(ptr %.355) #10
  %i.it = load i32, ptr %i.is, align 4, !tbaa !77
  switch i32 %i.it, label %bb.cz [
    i32 11, label %bb.cr
    i32 1, label %bb.ct
    i32 10, label %bb.cu
    i32 2, label %.invoke145
    i32 3, label %.invoke145
    i32 9, label %.invoke145
    i32 4, label %bb.cv
    i32 5, label %bb.cv
    i32 6, label %bb.cw
    i32 7, label %bb.cx
    i32 12, label %bb.cy
  ]

bb.cn:                                            ; preds = %bb.cl
  %i.iu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #10
  %i.iv = icmp eq i32 %.3, %i.iu
  br i1 %i.iv, label %bb.co, label %bb.dc

bb.co:                                            ; preds = %bb.cn
  %i.iw = call ptr @__cxa_begin_catch(ptr %.355) #10 ; 0 uses
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @__cxa_end_catch()
  br label %bb.db

bb.cq:                                            ; preds = %bb.co
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.dd

bb.cr:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cs:                                            ; preds = %.invoke145, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cr
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #10
  br label %bb.dc

bb.ct:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cu:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

.invoke145:                                       ; preds = %bb.cm, %bb.cm, %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cv:                                            ; preds = %bb.cm, %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cw:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cx:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cy:                                            ; preds = %bb.cm
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.cs

bb.cz:                                            ; preds = %.invoke145, %bb.cm, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cr
  %.0 = phi i32 [ -2, %bb.cy ], [ -100011, %bb.cx ], [ -100013, %bb.cr ], [ -100007, %bb.ct ], [ -100012, %bb.cu ], [ -1, %bb.cm ], [ -100008, %.invoke145 ], [ -100009, %bb.cv ], [ -100010, %bb.cw ]
  call void @__cxa_end_catch() #10
  br label %bb.db

bb.da:                                            ; preds = %bb.cj
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.dd

bb.db:                                            ; preds = %bb.i, %bb.h, %bb.b, %bb.a, %bb.cz, %bb.cp, %bb.ck, %bb.cg
  %.1 = phi i32 [ -1, %bb.i ], [ -4, %bb.a ], [ -100007, %bb.ck ], [ %.0, %bb.cz ], [ -100009, %bb.cp ], [ -7, %bb.b ], [ 0, %bb.cg ], [ -3, %bb.h ]
  ret i32 %.1

bb.dc:                                            ; preds = %bb.da, %bb.cq, %bb.cs, %bb.cn
  %.merged = phi { ptr, i32 } [ %i.ix, %bb.cq ], [ %i.iy, %bb.cs ], [ %.pn120, %bb.cn ], [ %i.iz, %bb.da ]
  resume { ptr, i32 } %.merged

bb.dd:                                            ; preds = %bb.da, %bb.cq
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #13
  unreachable

bb.de:                                            ; preds = %bb.ce, %bb.aa, %bb.s, %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw17unpacked_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @_ZN6LibRaw18crop_masked_pixelsEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 5592}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
end_hunk_0
