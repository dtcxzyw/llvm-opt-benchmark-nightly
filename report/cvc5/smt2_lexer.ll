Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/smt2_lexer?download=true
inline.NumInlined: 280
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4cvc56parser9Smt2LexerC2Ebb:.preheader38.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.045, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bu, %i.af
  br i1 %.not.3, label %._crit_edge, label %.lr.ph

._crit_edge50:                                    ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49, %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32954 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !16
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 2, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32931 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = or i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32935 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = or i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32932 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !16
  %i.cg = or i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 4, !tbaa !16
  ret void

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %.sroa.028.047 = phi ptr [ %i.de, %.lr.ph49 ], [ %.sroa.028.047.unr, %.lr.ph49.prol.loopexit ] ; 5 uses
  %i.ch = load i8, ptr %.sroa.028.047, align 1, !tbaa !16
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = or i8 %i.ck, 64
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cr = or i8 %i.cq, 64
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = sext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = or i8 %i.cw, 64
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = sext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dd = or i8 %i.dc, 64
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 4 ; 2 uses
  %.not35.3 = icmp eq ptr %i.de, %i.ap
  br i1 %.not35.3, label %._crit_edge50, label %.lr.ph49
}

declare void @_ZN4cvc56parser5LexerC2Ev(ptr noundef nonnull align 8 dereferenceable(32892)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK4cvc56parser9Smt2Lexer8tokenStrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33178) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc56parser9Smt2Lexer8isStrictEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33178) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32920
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc56parser9Smt2Lexer7isSygusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33178) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32921
  %i.b = load i8, ptr %i.a, align 1, !tbaa !36, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 88) i32 @_ZN4cvc56parser9Smt2Lexer17nextTokenInternalEv(ptr noundef nonnull align 8 dereferenceable(33178) initializes((8, 16)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32904 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !40
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.e = tail call noundef i32 @_ZN4cvc56parser9Smt2Lexer16computeNextTokenEv(ptr noundef nonnull align 8 dereferenceable(33178) %0)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32912 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %.not.i.i1 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.c, align 8, !tbaa !40
  br label %bb.g

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775807
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store i8 0, ptr %i.u, align 1, !tbaa !16
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.z) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !37
  store ptr %i.w, ptr %i.c, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 88) i32 @_ZN4cvc56parser9Smt2Lexer16computeNextTokenEv(ptr noundef nonnull align 8 dereferenceable(33178) initializes((8, 16)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::allocator", align 1   ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.d, align 4, !tbaa !42
  %i.g = load <2 x i32>, ptr %i.c, align 8, !tbaa !62
  store <2 x i32> %i.g, ptr %i.b, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32884 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32864 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32872 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32932 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32888 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32922 ; 3 uses
  br label %.loopexit201

.loopexit201:                                     ; preds = %.loopexit201.backedge, %bb.a
  %i.r = phi i32 [ %i.f, %bb.a ], [ %.be, %.loopexit201.backedge ]
  %i.s = load i8, ptr %i.h, align 4, !tbaa !43, !range !38, !noundef !39
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit201
  %i.u = load i32, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.h, align 4, !tbaa !43
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit

bb.c:                                             ; preds = %.loopexit201
  %i.v = load i64, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !46
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !47
  %i.ab = add nuw i64 %i.v, 1
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.k, align 8, !tbaa !48, !range !38, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) ; 2 uses
  store i32 %i.af, ptr %i.n, align 8, !tbaa !47
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull %i.m, i64 noundef 32768) ; 0 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !46
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i, label %bb.h

_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i: ; preds = %bb.g
  store i32 -1, ptr %i.n, align 8, !tbaa !47
  store i64 0, ptr %i.i, align 8, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.m, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  store i32 %i.am, ptr %i.n, align 8, !tbaa !47
  store i64 1, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

_ZN4cvc56parser5Lexer12readNextCharEv.exit.i:     ; preds = %bb.h, %bb.f, %bb.d
  %i.an = phi i32 [ %i.af, %bb.f ], [ %i.am, %bb.h ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ao = icmp eq i32 %i.an, 10
  br i1 %i.ao, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i
  %i.ap = phi i32 [ -1, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i ], [ %i.an, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i ]
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !42
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit

_ZN4cvc56parser5Lexer8nextCharEv.exit:            ; preds = %bb.b, %bb.i
  %i.as = phi i32 [ %i.r, %bb.b ], [ %i.ar, %bb.i ] ; 3 uses
  %.0.i = phi i32 [ %i.u, %bb.b ], [ %i.ap, %bb.i ] ; 4 uses
  %i.at = icmp eq i32 %.0.i, -1
  br i1 %i.at, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit
  %i.au = and i32 %.0.i, 255
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = and i8 %i.ax, 1
  %.not193 = icmp eq i8 %i.ay, 0
  br i1 %.not193, label %bb.k, label %.loopexit201.backedge

.thread:                                          ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i
  %i.az = load i32, ptr %i.c, align 8, !tbaa !52
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !52
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.bb = load i8, ptr %i.o, align 4, !tbaa !16
  %i.bc = and i8 %i.bb, 1
  %.not192 = icmp eq i8 %i.bc, 0
  br i1 %.not192, label %.thread178, label %.loopexit201.backedge

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i32 %.0.i, 59
  br i1 %.not, label %.preheader200, label %.thread178.loopexit204

.preheader200:                                    ; preds = %bb.k, %_ZN4cvc56parser5Lexer8nextCharEv.exit86
  %i.bd = phi i32 [ %i.cg, %_ZN4cvc56parser5Lexer8nextCharEv.exit86 ], [ %i.as, %bb.k ]
  %i.be = load i8, ptr %i.h, align 4, !tbaa !43, !range !38, !noundef !39
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader200
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.h, align 4, !tbaa !43
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit86

bb.m:                                             ; preds = %.preheader200
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !46
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  store i32 %i.bm, ptr %i.n, align 8, !tbaa !47
  %i.bn = add nuw i64 %i.bh, 1
  store i64 %i.bn, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83

bb.o:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.k, align 8, !tbaa !48, !range !38, !noundef !39
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) ; 2 uses
  store i32 %i.br, ptr %i.n, align 8, !tbaa !47
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83

bb.q:                                             ; preds = %bb.o
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.m, i64 noundef 32768) ; 0 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  store i64 %i.bv, ptr %i.j, align 8, !tbaa !46
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i85, label %bb.r

_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i85: ; preds = %bb.q
  store i32 -1, ptr %i.n, align 8, !tbaa !47
  store i64 0, ptr %i.i, align 8, !tbaa !45
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = load i8, ptr %i.m, align 1, !tbaa !16
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  store i32 %i.by, ptr %i.n, align 8, !tbaa !47
  store i64 1, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83

_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83:   ; preds = %bb.r, %bb.p, %bb.n
  %i.bz = phi i32 [ %i.br, %bb.p ], [ %i.by, %bb.r ], [ %i.bm, %bb.n ] ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 10
  br i1 %i.ca, label %_ZN4cvc56parser5Lexer8nextCharEv.exit86.thread, label %bb.s

_ZN4cvc56parser5Lexer8nextCharEv.exit86.thread:   ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83
  %i.cb = load i32, ptr %i.c, align 8, !tbaa !52
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.c, align 8, !tbaa !52
  store i32 0, ptr %i.d, align 4, !tbaa !42
  br label %.loopexit201.backedge

.loopexit201.backedge:                            ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit86, %_ZN4cvc56parser5Lexer8nextCharEv.exit86.thread, %bb.j, %.thread
  %.be = phi i32 [ 0, %.thread ], [ 0, %_ZN4cvc56parser5Lexer8nextCharEv.exit86.thread ], [ %i.as, %bb.j ], [ %i.cg, %_ZN4cvc56parser5Lexer8nextCharEv.exit86 ]
  br label %.loopexit201, !llvm.loop !59

bb.s:                                             ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i85
  %i.cd = phi i32 [ -1, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i85 ], [ %i.bz, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i83 ]
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !42
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.d, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit86

_ZN4cvc56parser5Lexer8nextCharEv.exit86:          ; preds = %bb.l, %bb.s
  %i.cg = phi i32 [ %i.bd, %bb.l ], [ %i.cf, %bb.s ] ; 2 uses
  %.0.i84 = phi i32 [ %i.bg, %bb.l ], [ %i.cd, %bb.s ]
  switch i32 %.0.i84, label %.preheader200 [
    i32 10, label %.loopexit201.backedge
    i32 -1, label %.loopexit
  ]

.thread178.loopexit204:                           ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %.pre = load i32, ptr %i.c, align 8, !tbaa !52
  br label %.thread178

.thread178:                                       ; preds = %.thread, %.thread178.loopexit204
  %i.ci = phi i32 [ %i.as, %.thread178.loopexit204 ], [ 0, %.thread ]
  %i.cj = phi i32 [ %.pre, %.thread178.loopexit204 ], [ %i.ba, %.thread ]
  %.0.i175177181 = phi i32 [ %.0.i, %.thread178.loopexit204 ], [ 10, %.thread ] ; 2 uses
  %i.ck = phi ptr [ %i.ch, %.thread178.loopexit204 ], [ %i.o, %.thread ]
  store i32 %i.cj, ptr %i.b, align 8, !tbaa !63
  store i32 %i.ci, ptr %i.e, align 4, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 6 uses
  %i.cm = trunc i32 %.0.i175177181 to i8          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32904 ; 12 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32912 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread178
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !16
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !40
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

bb.u:                                             ; preds = %.thread178
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 4 uses
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 7 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775807
  br i1 %i.cx, label %bb.v, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cy = add i64 %.sroa.speculated.i.i.i.i.i, %i.cw ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cw
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 9223372036854775807)
  %i.db = select i1 %i.cz, i64 9223372036854775807, i64 %i.da ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #18 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw ; 2 uses
  store i8 %i.cm, ptr %i.dd, align 1, !tbaa !16
  %i.de = icmp sgt i64 %i.cw, 0
  br i1 %i.de, label %bb.w, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr align 1 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.dg = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.di) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.dc, ptr %i.cl, align 8, !tbaa !37
  store ptr %i.df, ptr %i.cn, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store ptr %i.dj, ptr %i.cp, align 8, !tbaa !41
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit:    ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i
  switch i32 %.0.i175177181, label %bb.cy [
    i32 40, label %.loopexit
    i32 41, label %bb.y
    i32 124, label %.preheader
    i32 35, label %bb.an
    i32 34, label %.preheader198
    i32 58, label %bb.cr
  ]

.preheader198:                                    ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149

bb.y:                                             ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  br label %.loopexit

.preheader:                                       ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit, %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit98
  %i.dm = load i8, ptr %i.h, align 4, !tbaa !43, !range !38, !noundef !39
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %i.do = load i32, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.h, align 4, !tbaa !43
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit90

bb.aa:                                            ; preds = %.preheader
  %i.dp = load i64, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.dq = load i64, ptr %i.j, align 8, !tbaa !46
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  store i32 %i.du, ptr %i.n, align 8, !tbaa !47
  %i.dv = add nuw i64 %i.dp, 1
  store i64 %i.dv, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87

bb.ac:                                            ; preds = %bb.aa
  %i.dw = load i8, ptr %i.k, align 8, !tbaa !48, !range !38, !noundef !39
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dz = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) ; 2 uses
  store i32 %i.dz, ptr %i.n, align 8, !tbaa !47
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87

bb.ae:                                            ; preds = %bb.ac
  %i.ea = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull %i.m, i64 noundef 32768) ; 0 uses
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !51 ; 2 uses
  store i64 %i.ed, ptr %i.j, align 8, !tbaa !46
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i89, label %bb.af

_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i89: ; preds = %bb.ae
  store i32 -1, ptr %i.n, align 8, !tbaa !47
  store i64 0, ptr %i.i, align 8, !tbaa !45
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i8, ptr %i.m, align 1, !tbaa !16
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  store i32 %i.eg, ptr %i.n, align 8, !tbaa !47
  store i64 1, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87

_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87:   ; preds = %bb.af, %bb.ad, %bb.ab
  %i.eh = phi i32 [ %i.dz, %bb.ad ], [ %i.eg, %bb.af ], [ %i.du, %bb.ab ] ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 10
  br i1 %i.ei, label %_ZN4cvc56parser5Lexer8nextCharEv.exit90.thread, label %bb.ag

_ZN4cvc56parser5Lexer8nextCharEv.exit90.thread:   ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87
  %i.ej = load i32, ptr %i.c, align 8, !tbaa !52
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.c, align 8, !tbaa !52
  store i32 0, ptr %i.d, align 4, !tbaa !42
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i89
  %i.el = phi i32 [ -1, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i89 ], [ %i.eh, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i87 ]
  %i.em = load i32, ptr %i.d, align 4, !tbaa !42
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.d, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit90

_ZN4cvc56parser5Lexer8nextCharEv.exit90:          ; preds = %bb.z, %bb.ag
  %.0.i88 = phi i32 [ %i.do, %bb.z ], [ %i.el, %bb.ag ] ; 2 uses
  %i.eo = icmp eq i32 %.0.i88, -1
  br i1 %i.eo, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit90.thread, %_ZN4cvc56parser5Lexer8nextCharEv.exit90
  %.0.i88183 = phi i32 [ 10, %_ZN4cvc56parser5Lexer8nextCharEv.exit90.thread ], [ %.0.i88, %_ZN4cvc56parser5Lexer8nextCharEv.exit90 ] ; 2 uses
  %i.ep = trunc i32 %.0.i88183 to i8              ; 2 uses
  %i.eq = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 3 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !41
  %.not.i.i.i91 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i91, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !16
  %i.es = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.cn, align 8, !tbaa !40
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit98

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 4 uses
  %i.ev = ptrtoint ptr %i.eq to i64
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 7 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775807
  br i1 %i.ey, label %bb.ak, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i92

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i92: ; preds = %bb.aj
  %.sroa.speculated.i.i.i.i.i93 = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ez = add i64 %.sroa.speculated.i.i.i.i.i93, %i.ex ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ex
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 9223372036854775807)
  %i.fc = select i1 %i.fa, i64 9223372036854775807, i64 %i.fb ; 3 uses
  %.not.i.i.i.i.i94 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i94)
  %i.fd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #18 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ex ; 2 uses
  store i8 %i.ep, ptr %i.fe, align 1, !tbaa !16
  %i.ff = icmp sgt i64 %i.ex, 0
  br i1 %i.ff, label %bb.al, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i95

bb.al:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i92
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.eu, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i95

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i95: ; preds = %bb.al, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i92
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %.not.i17.i.i.i.i96 = icmp eq ptr %i.eu, null
  br i1 %.not.i17.i.i.i.i96, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i97, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i95
  %i.fh = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fj) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i97

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i97: ; preds = %bb.am, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i95
  store ptr %i.fd, ptr %i.cl, align 8, !tbaa !37
  store ptr %i.fg, ptr %i.cn, align 8, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store ptr %i.fk, ptr %i.cp, align 8, !tbaa !41
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit98

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit98:  ; preds = %bb.ai, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i97
  %.not74 = icmp eq i32 %.0.i88183, 124
  br i1 %.not74, label %.loopexit, label %.preheader, !llvm.loop !60

bb.an:                                            ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.fl = tail call noundef i32 @_ZN4cvc56parser5Lexer8nextCharEv(ptr noundef nonnull align 8 dereferenceable(32892) %0)
  switch i32 %i.fl, label %bb.bs [
    i32 98, label %bb.ao
    i32 120, label %bb.au
    i32 102, label %bb.ba
  ]

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 98)
  %i.fm = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 8)
  br i1 %i.fm, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fn = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %.loopexit

bb.as:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.at:                                            ; preds = %bb.aq
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.at
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !16
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.as
  %.pn70 = phi { ptr, i32 } [ %i.fs, %bb.as ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.ft, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.du

bb.au:                                            ; preds = %bb.an
  tail call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 120)
  %i.fz = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 4)
  br i1 %i.fz, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.ax
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit

bb.ay:                                            ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.az:                                            ; preds = %bb.aw
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.az
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !16
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ay
  %.pn68 = phi { ptr, i32 } [ %i.gf, %bb.ay ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.gg, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.du

bb.ba:                                            ; preds = %bb.an
  tail call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 102)
  %i.gm = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 2)
  br i1 %i.gm, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.gn = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bd
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !16
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.bf:                                            ; preds = %bb.bc
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bf
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !16
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.be
  %.pn62 = phi { ptr, i32 } [ %i.gs, %bb.be ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.gt, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.du

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.ba
  %i.gz = call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer16parseLiteralCharEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 109)
  br i1 %i.gz, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

end_hunk_0
begin_hunk_1_@_ZN4cvc56parser9Smt2Lexer16computeNextTokenEv:bb.a
  %i.ig = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bw
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !16
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.bv
  %.pn72 = phi { ptr, i32 } [ %i.ie, %bb.bv ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.if, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.du

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149: ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149.backedge, %.preheader198
  %i.il = load i8, ptr %i.h, align 4, !tbaa !43, !range !38, !noundef !39
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149
  %i.in = load i32, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.h, align 4, !tbaa !43
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit135

bb.by:                                            ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149
  %i.io = load i64, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.ip = load i64, ptr %i.j, align 8, !tbaa !46
  %i.iq = icmp ult i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ir = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.io
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !16
  %i.it = zext i8 %i.is to i32                    ; 2 uses
  store i32 %i.it, ptr %i.n, align 8, !tbaa !47
  %i.iu = add nuw i64 %i.io, 1
  store i64 %i.iu, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132

bb.ca:                                            ; preds = %bb.by
  %i.iv = load i8, ptr %i.k, align 8, !tbaa !48, !range !38, !noundef !39
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %i.iw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.iy = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) ; 2 uses
  store i32 %i.iy, ptr %i.n, align 8, !tbaa !47
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132

bb.cc:                                            ; preds = %bb.ca
  %i.iz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull %i.m, i64 noundef 32768) ; 0 uses
  %i.ja = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !51 ; 2 uses
  store i64 %i.jc, ptr %i.j, align 8, !tbaa !46
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i134, label %bb.cd

_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i134: ; preds = %bb.cc
  store i32 -1, ptr %i.n, align 8, !tbaa !47
  store i64 0, ptr %i.i, align 8, !tbaa !45
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.je = load i8, ptr %i.m, align 1, !tbaa !16
  %i.jf = zext i8 %i.je to i32                    ; 2 uses
  store i32 %i.jf, ptr %i.n, align 8, !tbaa !47
  store i64 1, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132

_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132:  ; preds = %bb.cd, %bb.cb, %bb.bz
  %i.jg = phi i32 [ %i.iy, %bb.cb ], [ %i.jf, %bb.cd ], [ %i.it, %bb.bz ] ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 10
  br i1 %i.jh, label %.thread186, label %bb.ce

bb.ce:                                            ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i134
  %i.ji = phi i32 [ -1, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i134 ], [ %i.jg, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132 ]
  %i.jj = load i32, ptr %i.d, align 4, !tbaa !42
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.d, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit135

_ZN4cvc56parser5Lexer8nextCharEv.exit135:         ; preds = %bb.bx, %bb.ce
  %.0.i133 = phi i32 [ %i.in, %bb.bx ], [ %i.ji, %bb.ce ] ; 5 uses
  %i.jl = icmp eq i32 %.0.i133, -1
  br i1 %i.jl, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit135
  %i.jm = and i32 %.0.i133, 255
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  %i.jq = and i8 %i.jp, 64
  %.not195 = icmp eq i8 %i.jq, 0
  br i1 %.not195, label %.noexc.i, label %bb.cj

.thread186:                                       ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i132
  %i.jr = load i32, ptr %i.c, align 8, !tbaa !52
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.c, align 8, !tbaa !52
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.jt = load i8, ptr %i.o, align 4, !tbaa !16
  %i.ju = and i8 %i.jt, 64
  %.not194 = icmp eq i8 %i.ju, 0
  br i1 %.not194, label %.noexc.i, label %.thread190

.noexc.i:                                         ; preds = %.thread186, %bb.cf
  %.0.i133185189 = phi i32 [ 10, %.thread186 ], [ %.0.i133, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %i.dk, ptr %13, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 41, ptr %i.a, align 8, !tbaa !13
  %i.jv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ch    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.jv, ptr %13, align 8, !tbaa !15
  %i.jw = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  store i64 %i.jw, ptr %i.dk, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.jv, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, i64 41, i1 false)
  store i64 %i.jw, ptr %i.dl, align 8, !tbaa !17
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jw
  store i8 0, ptr %i.jx, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %.noexc
  %i.jy = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.dk
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.cg
  %i.ka = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.thread190

bb.ch:                                            ; preds = %.noexc.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ci:                                            ; preds = %.noexc
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.dk
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ci
  %i.kg = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ch
  %.pn59 = phi { ptr, i32 } [ %i.kc, %bb.ch ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.kd, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.du

bb.cj:                                            ; preds = %bb.cf
  %i.ki = icmp eq i32 %.0.i133, 34
  br i1 %i.ki, label %bb.ck, label %.thread190

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 34)
  %i.kj = call noundef i32 @_ZN4cvc56parser5Lexer8nextCharEv(ptr noundef nonnull align 8 dereferenceable(32892) %0) ; 2 uses
  %.not61 = icmp eq i32 %i.kj, 34
  br i1 %.not61, label %.thread190, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i8 1, ptr %i.h, align 4, !tbaa !43
  store i32 %i.kj, ptr %i.p, align 8, !tbaa !44
  br label %.loopexit

.thread190:                                       ; preds = %.thread186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.ck, %bb.cj
  %.044 = phi i32 [ 34, %bb.ck ], [ %.0.i133, %bb.cj ], [ %.0.i133185189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ 10, %.thread186 ]
  %i.kk = trunc i32 %.044 to i8                   ; 2 uses
  %i.kl = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 3 uses
  %i.km = load ptr, ptr %i.cp, align 8, !tbaa !41
  %.not.i.i.i142 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i.i.i142, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.thread190
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !16
  %i.kn = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  store ptr %i.ko, ptr %i.cn, align 8, !tbaa !40
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149.backedge

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149.backedge: ; preds = %bb.cm, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i148
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149, !llvm.loop !61

bb.cn:                                            ; preds = %.thread190
  %i.kp = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 4 uses
  %i.kq = ptrtoint ptr %i.kl to i64
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr                    ; 7 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775807
  br i1 %i.kt, label %bb.co, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i143

bb.co:                                            ; preds = %bb.cn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i143: ; preds = %bb.cn
  %.sroa.speculated.i.i.i.i.i144 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.ku = add i64 %.sroa.speculated.i.i.i.i.i144, %i.ks ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.ks
  %i.kw = call i64 @llvm.umin.i64(i64 %i.ku, i64 9223372036854775807)
  %i.kx = select i1 %i.kv, i64 9223372036854775807, i64 %i.kw ; 3 uses
  %.not.i.i.i.i.i145 = icmp ne i64 %i.kx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i145)
  %i.ky = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #18 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ks ; 2 uses
  store i8 %i.kk, ptr %i.kz, align 1, !tbaa !16
  %i.la = icmp sgt i64 %i.ks, 0
  br i1 %i.la, label %bb.cp, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i146

bb.cp:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i143
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ky, ptr align 1 %i.kp, i64 %i.ks, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i146

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i146: ; preds = %bb.cp, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i143
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %.not.i17.i.i.i.i147 = icmp eq ptr %i.kp, null
  br i1 %.not.i17.i.i.i.i147, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i148, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i146
  %i.lc = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = sub i64 %i.ld, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.le) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i148

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i148: ; preds = %bb.cq, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i146
  store ptr %i.ky, ptr %i.cl, align 8, !tbaa !37
  store ptr %i.lb, ptr %i.cn, align 8, !tbaa !40
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kx
  store ptr %i.lf, ptr %i.cp, align 8, !tbaa !41
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit149.backedge

bb.cr:                                            ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.lg = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer9parseCharENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 16)
  br i1 %i.lg, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.lh = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.cu
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !16
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.cw:                                            ; preds = %bb.ct
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.cw
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !16
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.cv
  %.pn = phi { ptr, i32 } [ %i.lm, %bb.cv ], [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.ln, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.du

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.cr
  %i.lt = call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 32) ; 0 uses
  br label %.loopexit

bb.cy:                                            ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.lu = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.lv = zext i8 %i.lu to i32                    ; 2 uses
  %i.lw = and i32 %i.lv, 2
  %.not196 = icmp eq i32 %i.lw, 0
  br i1 %.not196, label %bb.dn, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @_ZN4cvc56parser9Smt2Lexer13parseCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 2)
  %i.lx = tail call noundef i32 @_ZN4cvc56parser5Lexer8nextCharEv(ptr noundef nonnull align 8 dereferenceable(32892) %0) ; 2 uses
  switch i32 %i.lx, label %bb.dm [
    i32 46, label %bb.da
    i32 47, label %bb.dg
  ]

bb.da:                                            ; preds = %bb.cz
  tail call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 46)
  %i.ly = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 2)
  br i1 %i.ly, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, i1 noundef zeroext false)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.lz = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.dd
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !16
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %.loopexit

bb.de:                                            ; preds = %bb.db
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.df:                                            ; preds = %bb.dc
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.df
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !16
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.de
  %.pn79 = phi { ptr, i32 } [ %i.me, %bb.de ], [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.mf, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.du

bb.dg:                                            ; preds = %bb.cz
  tail call void @_ZN4cvc56parser9Smt2Lexer11pushToTokenEi(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 47)
  %i.ml = tail call noundef zeroext i1 @_ZN4cvc56parser9Smt2Lexer21parseNonEmptyCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef 2)
  br i1 %i.ml, label %.loopexit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN4cvc56parser5Lexer10parseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32892) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext false)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.mm = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4cvc56parser9Smt2Lexer9parseCharENS1_14CharacterClassE:bb.a
  %i.ax = and i32 %1, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0                    ; 2 uses
  br i1 %i.ay, label %bb.k, label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

bb.k:                                             ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 2 uses
  %i.ba = trunc i32 %.0.i to i8                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32904 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32912 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !16
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !40
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !37 ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 7 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775807
  br i1 %i.bl, label %bb.n, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bm = add i64 %.sroa.speculated.i.i.i.i.i, %i.bk ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807)
  %i.bp = select i1 %i.bn, i64 9223372036854775807, i64 %i.bo ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #18 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store i8 %i.ba, ptr %i.br, align 1, !tbaa !16
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.o, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bw) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !37
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store ptr %i.bx, ptr %i.bd, align 8, !tbaa !41
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit:    ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.l, %_ZN4cvc56parser5Lexer8nextCharEv.exit
  ret i1 %i.ay
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc56parser9Smt2Lexer13parseCharListENS1_14CharacterClassE(ptr noundef nonnull align 8 dereferenceable(33178) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32884 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32864 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32872 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32888 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32922
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32904 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32912 ; 3 uses
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit:    ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit.backedge, %bb.a
  %i.o = load i8, ptr %i.a, align 4, !tbaa !43, !range !38, !noundef !39
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.q = load i32, ptr %i.j, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 4, !tbaa !43
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit

bb.c:                                             ; preds = %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit
  %i.r = load i64, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !46
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  store i32 %i.w, ptr %i.g, align 8, !tbaa !47
  %i.x = add nuw i64 %i.r, 1
  store i64 %i.x, ptr %i.b, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr %i.d, align 8, !tbaa !48, !range !38, !noundef !39
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) ; 2 uses
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !47
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull %i.f, i64 noundef 32768) ; 0 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  store i64 %i.af, ptr %i.c, align 8, !tbaa !46
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i, label %bb.h

_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i: ; preds = %bb.g
  store i32 -1, ptr %i.g, align 8, !tbaa !47
  store i64 0, ptr %i.b, align 8, !tbaa !45
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.f, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !47
  store i64 1, ptr %i.b, align 8, !tbaa !45
  br label %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i

_ZN4cvc56parser5Lexer12readNextCharEv.exit.i:     ; preds = %bb.h, %bb.f, %bb.d
  %i.aj = phi i32 [ %i.ab, %bb.f ], [ %i.ai, %bb.h ], [ %i.w, %bb.d ] ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 10
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i
  %i.al = load i32, ptr %i.i, align 8, !tbaa !52
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.i, align 8, !tbaa !52
  store i32 0, ptr %i.h, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit

bb.j:                                             ; preds = %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i
  %i.an = phi i32 [ -1, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.thread.i ], [ %i.aj, %_ZN4cvc56parser5Lexer12readNextCharEv.exit.i ]
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !42
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.h, align 4, !tbaa !42
  br label %_ZN4cvc56parser5Lexer8nextCharEv.exit

_ZN4cvc56parser5Lexer8nextCharEv.exit:            ; preds = %bb.b, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 10, %bb.i ], [ %i.an, %bb.j ] ; 3 uses
  %i.aq = and i32 %.0.i, 255
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32
  %i.av = and i32 %1, %i.au
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit
  store i8 1, ptr %i.a, align 4, !tbaa !43
  store i32 %.0.i, ptr %i.j, align 8, !tbaa !44
  ret void

bb.l:                                             ; preds = %_ZN4cvc56parser5Lexer8nextCharEv.exit
  %i.aw = trunc i32 %.0.i to i8                   ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !16
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.m, align 8, !tbaa !40
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit.backedge

_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit.backedge: ; preds = %bb.m, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit, !llvm.loop !65

bb.n:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !37  ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 7 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775807
  br i1 %i.bf, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bg = add i64 %.sroa.speculated.i.i.i.i.i, %i.be ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.be
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 9223372036854775807)
  %i.bj = select i1 %i.bh, i64 9223372036854775807, i64 %i.bi ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be ; 2 uses
  store i8 %i.aw, ptr %i.bl, align 1, !tbaa !16
  %i.bm = icmp sgt i64 %i.be, 0
  br i1 %i.bm, label %bb.p, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bq) #19
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !37
  store ptr %i.bn, ptr %i.m, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.br, ptr %i.n, align 8, !tbaa !41
  br label %_ZN4cvc56parser9Smt2Lexer11pushToTokenEi.exit.backedge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 4, 83) i32 @_ZNK4cvc56parser9Smt2Lexer21tokenizeCurrentSymbolEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33178) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 18 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  switch i8 %i.c, label %bb.v [
    i8 33, label %bb.b
    i8 97, label %bb.c
    i8 112, label %bb.e
    i8 108, label %bb.h
    i8 109, label %bb.k
    i8 95, label %bb.p
    i8 45, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = icmp eq i8 %i.q, 115
  br i1 %i.r, label %.loopexit, label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.w, 3
  br i1 %i.x, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = icmp eq i8 %i.z, 97
  br i1 %i.aa, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = icmp eq i8 %i.ac, 114
  br i1 %i.ad, label %.loopexit, label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = icmp eq i8 %i.al, 101
  br i1 %i.am, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = icmp eq i8 %i.ao, 116
  br i1 %i.ap, label %.loopexit, label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.b to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp eq i64 %i.au, 5
  br i1 %i.av, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = icmp eq i8 %i.ax, 97
  br i1 %i.ay, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = icmp eq i8 %i.ba, 116
  br i1 %i.bb, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = icmp eq i8 %i.bd, 99
  br i1 %i.be, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = icmp eq i8 %i.bg, 104
  br i1 %i.bh, label %.loopexit, label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.b to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %.loopexit, label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32920
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !35, !range !38, !noundef !39
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !40
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.b to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 1
  br i1 %i.bw, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32922
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %._crit_edge
  %.01320 = phi i64 [ 1, %.preheader ], [ %i.ce, %._crit_edge ] ; 2 uses
  %.01419 = phi i32 [ 61, %.preheader ], [ %.1, %._crit_edge ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01320
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16  ; 2 uses
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = and i8 %i.cc, 2
  %.not18 = icmp eq i8 %i.cd, 0
  %i.ce = add nuw i64 %.01320, 1                  ; 3 uses
  br i1 %.not18, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp ult i64 %i.ce, %i.bv
  %i.cg = icmp eq i32 %.01419, 61
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  switch i8 %i.bz, label %.loopexit [
    i8 46, label %._crit_edge
    i8 47, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.u
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.u, %.fold.split
  %.1 = phi i32 [ 72, %.fold.split ], [ 14, %bb.u ], [ %.01419, %bb.s ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.bv
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !66

bb.v:                                             ; preds = %bb.a, %bb.q, %bb.r, %bb.p, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.h, %bb.i, %bb.j, %bb.e, %bb.f, %bb.g, %bb.c, %bb.d, %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.t, %bb.u, %bb.p, %bb.o, %bb.j, %bb.g, %bb.d, %bb.b, %bb.v
  %.2 = phi i32 [ 82, %bb.v ], [ 60, %bb.p ], [ 5, %bb.b ], [ 4, %bb.d ], [ 68, %bb.g ], [ 64, %bb.j ], [ 66, %bb.o ], [ %.1, %._crit_edge ], [ 82, %bb.t ], [ 82, %bb.u ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc56parser9Smt2LexerD2Ev(ptr noundef nonnull align 8 dead_on_return(33178) dereferenceable(33178) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4cvc56parser9Smt2LexerE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4cvc56parser5LexerE, i64 16), ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4cvc56parser5LexerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #19
  br label %_ZN4cvc56parser5LexerD2Ev.exit

_ZN4cvc56parser5LexerD2Ev.exit:                   ; preds = %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc56parser9Smt2LexerD0Ev(ptr noundef nonnull align 8 dereferenceable(33178) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4cvc56parser9Smt2LexerE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19, !inline_history !67
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4cvc56parser5LexerE, i64 16), ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19, !inline_history !67
  br label %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4cvc56parser9Smt2LexerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #19, !inline_history !67
  br label %_ZN4cvc56parser9Smt2LexerD2Ev.exit

_ZN4cvc56parser9Smt2LexerD2Ev.exit:               ; preds = %_ZNSt6vectorIN4cvc56parser5TokenESaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 33184) #19
  ret void
}

declare void @_ZN4cvc56parser5Lexer10initializeEPNS0_5InputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32892), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !12, i64 8, !4, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!14, !12, i64 8}
!18 = !{!"vtable pointer", !3, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSN4cvc56parser8LocationE", !5, i64 0, !5, i64 4}
!21 = !{!"_ZTSN4cvc56parser4SpanE", !20, i64 0, !20, i64 8}
!22 = !{!"_ZTSNSt12_Vector_baseIN4cvc56parser5TokenESaIS2_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN4cvc56parser5TokenESaIS2_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4cvc56parser5TokenESaIS2_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN4cvc56parser5TokenESaIS2_EE", !24, i64 0}
!26 = !{!"p1 _ZTSSi", !8, i64 0}
!27 = !{!"bool", !4, i64 0}
!28 = !{!"_ZTSN4cvc56parser5LexerE", !21, i64 8, !14, i64 24, !25, i64 56, !26, i64 80, !27, i64 88, !4, i64 89, !12, i64 32864, !12, i64 32872, !5, i64 32880, !27, i64 32884, !5, i64 32888}
!29 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIcSaIcEE", !31, i64 0}
!33 = !{!"_ZTSSt5arrayIhLm256EE", !4, i64 0}
!34 = !{!"_ZTSN4cvc56parser9Smt2LexerE", !28, i64 0, !32, i64 32896, !27, i64 32920, !27, i64 32921, !33, i64 32922}
!35 = !{!34, !27, i64 32920}
!36 = !{!34, !27, i64 32921}
!37 = !{!29, !9, i64 0}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!29, !9, i64 8}
!41 = !{!29, !9, i64 16}
!42 = !{!28, !5, i64 20}
!43 = !{!28, !27, i64 32884}
!44 = !{!28, !5, i64 32888}
!45 = !{!28, !12, i64 32864}
!46 = !{!28, !12, i64 32872}
!47 = !{!28, !5, i64 32880}
!48 = !{!28, !27, i64 88}
!49 = !{!28, !26, i64 80}
!50 = !{!"_ZTSSi", !12, i64 8}
!51 = !{!50, !12, i64 8}
!52 = !{!28, !5, i64 16}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!22, !8, i64 0}
!55 = !{!22, !8, i64 16}
!56 = distinct !{!56, !58}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !53}
!61 = distinct !{!61, !53}
!62 = !{!5, !5, i64 0}
!63 = !{!28, !5, i64 8}
!64 = !{!28, !5, i64 12}
!65 = distinct !{!65, !53}
!66 = distinct !{!66, !53}
!67 = !{ptr @_ZN4cvc56parser9Smt2LexerD2Ev}
end_hunk_2
