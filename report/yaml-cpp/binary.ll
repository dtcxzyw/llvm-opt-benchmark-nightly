Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/binary?download=true
inline.NumInlined: 119
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN4YAMLL8encodingE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN4YAMLL8decodingE = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\00\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EncodeBase64B5cxx11EPKhm(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !13
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = shl i64 %2, 2
  %i.d = udiv i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.g = udiv i64 %2, 3
  %i.h = urem i64 %2, 3
  %.not = icmp ult i64 %2, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.038.lcssa = phi ptr [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %i.as, %.lr.ph ] ; 5 uses
  %.035.lcssa = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %i.aq, %.lr.ph ] ; 11 uses
  switch i64 %i.h, label %bb.e [
    i64 2, label %bb.d
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %.lr.ph
  %.043 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %.03542 = phi ptr [ %i.aq, %.lr.ph ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 5 uses
  %.03841 = phi ptr [ %i.as, %.lr.ph ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 5 uses
  %i.j = load i8, ptr %.03841, align 1, !tbaa !14
  %i.k = lshr i8 %i.j, 2
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.03542, i64 1
  store i8 %i.n, ptr %.03542, align 1, !tbaa !14
  %i.p = load i8, ptr %.03841, align 1, !tbaa !14
  %i.q = shl i8 %i.p, 4
  %i.r = and i8 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %.03841, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = lshr i8 %i.t, 4
  %i.v = or disjoint i8 %i.r, %i.u
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %.03542, i64 2
  store i8 %i.y, ptr %i.o, align 1, !tbaa !14
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !14
  %i.ab = shl i8 %i.aa, 2
  %i.ac = and i8 %i.ab, 60
  %i.ad = getelementptr inbounds nuw i8, ptr %.03841, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = lshr i8 %i.ae, 6
  %i.ag = or disjoint i8 %i.ac, %i.af
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %.03542, i64 3
  store i8 %i.aj, ptr %i.z, align 1, !tbaa !14
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.03542, i64 4 ; 2 uses
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !14
  %i.ar = add nuw nsw i64 %.043, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03841, i64 3 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %._crit_edge
  %i.at = load i8, ptr %.038.lcssa, align 1, !tbaa !14
  %i.au = lshr i8 %i.at, 2
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 1
  store i8 %i.ax, ptr %.035.lcssa, align 1, !tbaa !14
  %i.az = load i8, ptr %.038.lcssa, align 1, !tbaa !14
  %i.ba = shl i8 %i.az, 4
  %i.bb = and i8 %i.ba, 48
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 16, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 2
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 3
  store i8 61, ptr %i.bf, align 1, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 4
  store i8 61, ptr %i.bg, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bi = load i8, ptr %.038.lcssa, align 1, !tbaa !14
  %i.bj = lshr i8 %i.bi, 2
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 1
  store i8 %i.bm, ptr %.035.lcssa, align 1, !tbaa !14
  %i.bo = load i8, ptr %.038.lcssa, align 1, !tbaa !14
  %i.bp = shl i8 %i.bo, 4
  %i.bq = and i8 %i.bp, 48
  %i.br = getelementptr inbounds nuw i8, ptr %.038.lcssa, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = or disjoint i8 %i.bq, %i.bt
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 2
  store i8 %i.bx, ptr %i.bn, align 1, !tbaa !14
  %i.bz = load i8, ptr %i.br, align 1, !tbaa !14
  %i.ca = shl i8 %i.bz, 2
  %i.cb = and i8 %i.ca, 60
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8encodingE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 3
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 4
  store i8 61, ptr %i.cf, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi ptr [ %.035.lcssa, %._crit_edge ], [ %i.cg, %bb.d ], [ %i.bh, %bb.c ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !15
  %i.ci = ptrtoint ptr %.1 to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit40 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit40: ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.f ], [ %i.i, %bb.b ]
  %i.cm = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.a
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef %i.cm) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12DecodeBase64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit56

.noexc:                                           ; preds = %bb.a
  %i.d = mul i64 %i.b, 3
  %i.e = lshr i64 %i.d, 2                         ; 3 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #11 ; 16 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %i.f     ; 6 uses
  store i8 0, ptr %i.g, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = icmp eq i64 %i.e, 0
  br i1 %i.j, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.e, i1 false)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %.noexc ] ; 8 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @isspace(i32 noundef %i.m) #12
  %.not.peel = icmp eq i32 %i.n, 0
  br i1 %.not.peel, label %bb.d, label %.thread.peel

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8decodingE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %.not48.peel = icmp eq i8 %i.q, -1
  br i1 %.not48.peel, label %.thread68, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext i8 %i.q to i32
  br label %.thread.peel

.thread.peel:                                     ; preds = %bb.e, %.lr.ph.preheader
  %.236.peel = phi i32 [ 0, %.lr.ph.preheader ], [ %i.r, %bb.e ]
  %.3.peel = phi i64 [ 0, %.lr.ph.preheader ], [ 1, %bb.e ] ; 2 uses
  %.not49.peel.not = icmp eq i64 %i.b, 1
  br i1 %.not49.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.peel, %.thread
  %.03182 = phi i64 [ %i.au, %.thread ], [ 1, %.thread.peel ] ; 4 uses
  %.03281 = phi i64 [ %.3, %.thread ], [ %.3.peel, %.thread.peel ] ; 3 uses
  %.03480 = phi i32 [ %.236, %.thread ], [ %.236.peel, %.thread.peel ] ; 2 uses
  %.03779 = phi ptr [ %.5, %.thread ], [ %i.g, %.thread.peel ] ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03182
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #12
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.x = zext i8 %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL8decodingE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %.not48 = icmp eq i8 %i.z, -1
  br i1 %.not48, label %.thread68, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl i32 %.03480, 6                      ; 3 uses
  %i.ac = or i32 %i.ab, %i.aa                     ; 4 uses
  %i.ad = icmp eq i64 %.03281, 3
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = lshr i32 %i.ab, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.03779, i64 1 ; 2 uses
  store i8 %i.af, ptr %.03779, align 1, !tbaa !14
  %i.ah = load ptr, ptr %1, align 8, !tbaa !15
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.03182
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %.not46 = icmp eq i8 %i.ak, 61
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = lshr i32 %i.ab, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.03779, i64 2
  store i8 %i.am, ptr %i.ag, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.138 = phi ptr [ %i.an, %bb.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.03182
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %.not47 = icmp eq i8 %i.aq, 61
  br i1 %.not47, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = trunc i32 %i.ac to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.138, i64 1
  store i8 %i.ar, ptr %.138, align 1, !tbaa !14
  br label %.thread

bb.l:                                             ; preds = %bb.g
  %i.at = add i64 %.03281, 1
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l, %.lr.ph
  %.5 = phi ptr [ %.03779, %.lr.ph ], [ %.138, %bb.j ], [ %i.as, %bb.k ], [ %.03779, %bb.l ] ; 2 uses
  %.236 = phi i32 [ %.03480, %.lr.ph ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ]
  %.3 = phi i64 [ %.03281, %.lr.ph ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %i.au = add nuw i64 %.03182, 1                  ; 2 uses
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  %.not49 = icmp ult i64 %i.au, %i.av
  br i1 %.not49, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.thread, %.thread.peel
  %.5.lcssa = phi ptr [ %i.g, %.thread.peel ], [ %.5, %.thread ] ; 2 uses
  %.3.lcssa = phi i64 [ %.3.peel, %.thread.peel ], [ %.3, %.thread ]
  %.not50 = icmp eq i64 %.3.lcssa, 0
  br i1 %.not50, label %bb.m, label %.thread68

bb.m:                                             ; preds = %._crit_edge
  %i.aw = ptrtoint ptr %.5.lcssa to i64
  %i.ax = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 9 uses
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bc = sub nuw i64 %i.ay, %i.ba                ; 6 uses
  %i.bd = ptrtoint ptr %i.h to i64
  %i.be = sub i64 %i.bd, %i.az                    ; 2 uses
  %i.bf = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = xor i64 %i.ba, 9223372036854775807      ; 2 uses
  %i.bh = icmp ule i64 %i.be, %i.bg
  tail call void @llvm.assume(i1 %i.bh)
  %.not28.i.i = icmp ult i64 %i.be, %i.bc
  br i1 %.not28.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %.0.i.i.i.i.i, align 1, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1 ; 2 uses
  %i.bj = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.bc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bi, i8 0, i64 %i.bj, i1 false)
  br label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

bb.q:                                             ; preds = %bb.n
  %i.bm = icmp ult i64 %i.bg, %i.bc
  br i1 %i.bm, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc53 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit

.noexc53:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bc)
  %i.bn = add nuw i64 %.sroa.speculated.i.i.i, %i.ba
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 9223372036854775807) ; 2 uses
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #11
          to label %.noexc54 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ba ; 2 uses
  store i8 0, ptr %i.bq, align 1, !tbaa !14
  %i.br = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bt, i8 0, i64 %i.br, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.s, %.noexc54
  %.not35.i.i = icmp eq ptr %.0.i.i.i.i.i, %i.g
  br i1 %.not35.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.g, i64 %i.ba, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.t, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ay
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  br label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

bb.u:                                             ; preds = %bb.m
  %i.bw = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bw, label %bb.v, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %.not.i4.i = icmp eq ptr %.0.i.i.i.i.i, %.5.lcssa
  %spec.select = select i1 %.not.i4.i, ptr %.0.i.i.i.i.i, ptr %i.bx
  br label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
end_hunk_0
