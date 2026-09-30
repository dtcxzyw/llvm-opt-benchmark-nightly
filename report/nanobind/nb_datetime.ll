Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_datetime?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }

$__clang_call_terminate = comdat any

@_ZL13PyDateTimeAPI = internal unnamed_addr global ptr null, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [56 x i8] c"nanobind::detail::datetime_pack(): unsupported kind %u!\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"datetime.datetime_CAPI\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 -1, 9) i32 @_ZN8nanobind6detail15datetime_unpackEPNS0_12nb_internalsEP7_objectjPi(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZL13PyDateTimeAPI, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind6detailL15import_datetimeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = invoke ptr @PyCapsule_Import(ptr noundef nonnull @.str.1, i32 noundef 0)
          to label %_ZN8nanobind6detailL15import_datetimeEv.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #6
  unreachable

_ZN8nanobind6detailL15import_datetimeEv.exit:     ; preds = %bb.b
  store ptr %i.b, ptr @_ZL13PyDateTimeAPI, align 8
  %.not77 = icmp eq ptr %i.b, null
  br i1 %.not77, label %bb.o, label %_ZN8nanobind6detailL15import_datetimeEv.exit.thread

_ZN8nanobind6detailL15import_datetimeEv.exit.thread: ; preds = %bb.a, %_ZN8nanobind6detailL15import_datetimeEv.exit
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %_ZN8nanobind6detailL15import_datetimeEv.exit ]
  %i.f = and i32 %2, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN8nanobind6detailL15import_datetimeEv.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val61 = load ptr, ptr %i.i, align 8           ; 2 uses
  %.not.i62 = icmp eq ptr %.val61, %i.h
  br i1 %.not.i62, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke i32 @PyType_IsSubtype(ptr noundef %.val61, ptr noundef %i.h)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit unwind label %bb.p

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.e
  %.not78 = icmp eq i32 %i.j, 0
  br i1 %.not78, label %bb.f, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.d, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 25
  %4 = load i16, ptr %i.k, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.l = zext i16 %5 to i32
  store i32 %i.l, ptr %3, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i8, ptr %i.q, align 4
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %6 = load i16, ptr %i.ag, align 8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.ah = zext i16 %7 to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  br label %.sink.split

bb.f:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit, %_ZN8nanobind6detailL15import_datetimeEv.exit.thread
  %i.ar = and i32 %2, 2
  %.not53 = icmp eq i32 %i.ar, 0
  br i1 %.not53, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr @_ZL13PyDateTimeAPI, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.au, align 8          ; 2 uses
  %.not.i63 = icmp eq ptr %.val60, %i.at
  br i1 %.not.i63, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = invoke i32 @PyType_IsSubtype(ptr noundef %.val60, ptr noundef %i.at)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65 unwind label %bb.p

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65: ; preds = %bb.h
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %bb.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread: ; preds = %bb.g, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 25
  %8 = load i16, ptr %i.aw, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %i.ax = zext i16 %9 to i32
  store i32 %i.ax, ptr %3, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = zext i8 %i.bd to i32
  br label %.sink.split

bb.i:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65, %bb.f
  %i.bf = and i32 %2, 4
  %.not55 = icmp eq i32 %i.bf, 0
  br i1 %.not55, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr @_ZL13PyDateTimeAPI, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 8
  %.val59 = load ptr, ptr %i.bj, align 8          ; 2 uses
  %.not.i66 = icmp eq ptr %.val59, %i.bi
  br i1 %.not.i66, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = invoke i32 @PyType_IsSubtype(ptr noundef %.val59, ptr noundef %i.bi)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68 unwind label %bb.p

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68: ; preds = %bb.k
  %.not80 = icmp eq i32 %i.bk, 0
  br i1 %.not80, label %bb.l, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread: ; preds = %bb.j, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  store i32 %i.bn, ptr %3, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %10 = load i16, ptr %i.bw, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %i.bx = zext i16 %11 to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  br label %.sink.split

bb.l:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68, %bb.i
  %i.ch = and i32 %2, 8
  %.not57 = icmp eq i32 %i.ch, 0
  br i1 %.not57, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr @_ZL13PyDateTimeAPI, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i69 = icmp eq ptr %.val, %i.ck
  br i1 %.not.i69, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = invoke i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.ck)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71 unwind label %bb.p

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71: ; preds = %bb.n
  %.not81 = icmp eq i32 %i.cm, 0
  br i1 %.not81, label %bb.o, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread: ; preds = %bb.m, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i32, ptr %i.cn, align 8
  store i32 %i.co, ptr %3, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = load i32, ptr %i.cs, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread
  %.sink89 = phi i64 [ 8, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread ], [ 16, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread ], [ 8, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread ], [ 28, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ]
  %.sink = phi i32 [ %i.ct, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread ], [ %i.cg, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread ], [ %i.be, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread ], [ %i.aq, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ]
  %.0.ph = phi i32 [ 8, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71.thread ], [ 4, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit68.thread ], [ 2, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit65.thread ], [ 1, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ]
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %.sink89
  store i32 %.sink, ptr %i.cu, align 4
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71, %_ZN8nanobind6detailL15import_datetimeEv.exit
  %.0 = phi i32 [ 0, %bb.l ], [ -1, %_ZN8nanobind6detailL15import_datetimeEv.exit ], [ 0, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit71 ], [ %.0.ph, %.sink.split ]
  ret i32 %.0

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.h, %bb.e
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #6
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail13datetime_packEPNS0_12nb_internalsEjPKi(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZL13PyDateTimeAPI, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind6detailL15import_datetimeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = invoke ptr @PyCapsule_Import(ptr noundef nonnull @.str.1, i32 noundef 0)
          to label %_ZN8nanobind6detailL15import_datetimeEv.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #6
  unreachable

_ZN8nanobind6detailL15import_datetimeEv.exit:     ; preds = %bb.b
  store ptr %i.b, ptr @_ZL13PyDateTimeAPI, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %_ZN8nanobind6detailL15import_datetimeEv.exit.thread

_ZN8nanobind6detailL15import_datetimeEv.exit.thread: ; preds = %bb.a, %_ZN8nanobind6detailL15import_datetimeEv.exit
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %_ZN8nanobind6detailL15import_datetimeEv.exit ] ; 8 uses
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.split, label %bb.h

.split:                                           ; preds = %_ZN8nanobind6detailL15import_datetimeEv.exit.thread
  %i.h = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.h, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %2, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.j(i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %i.y, ptr noundef %i.aa)
          to label %bb.i unwind label %bb.j

bb.e:                                             ; preds = %.split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr %2, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = invoke noundef ptr %i.ad(i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, ptr noundef %i.aj)
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %.split
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i32, ptr %2, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef ptr %i.am(i32 noundef %i.an, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %i.av, ptr noundef %i.ax)
          to label %bb.i unwind label %bb.j

bb.g:                                             ; preds = %.split
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %2, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef ptr %i.ba(i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef 1, ptr noundef %i.bh)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZN8nanobind6detailL15import_datetimeEv.exit.thread, %.split
  %i.bj = load ptr, ptr @PyExc_SystemError, align 8
  %i.bk = invoke ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bj, ptr noundef nonnull @.str, i32 noundef %1)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN8nanobind6detailL15import_datetimeEv.exit
  %.0 = phi ptr [ %i.bi, %bb.g ], [ null, %_ZN8nanobind6detailL15import_datetimeEv.exit ], [ %i.ab, %bb.d ], [ %i.ak, %bb.e ], [ %i.ay, %bb.f ], [ null, %bb.h ]
  ret ptr %.0

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #6
  unreachable
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyCapsule_Import(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
