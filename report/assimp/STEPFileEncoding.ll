Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/STEPFileEncoding?download=true
inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_ = comdat any

$_ZN4utf86appendIPhEET_jS2_ = comdat any

$_ZN4utf818invalid_code_pointD0Ev = comdat any

$_ZNK4utf818invalid_code_point4whatEv = comdat any

$_ZN4utf813invalid_utf16D0Ev = comdat any

$_ZNK4utf813invalid_utf164whatEv = comdat any

$_ZTIN4utf818invalid_code_pointE = comdat any

$_ZTSN4utf818invalid_code_pointE = comdat any

$_ZTIN4utf89exceptionE = comdat any

$_ZTSN4utf89exceptionE = comdat any

$_ZTVN4utf818invalid_code_pointE = comdat any

$_ZTIN4utf813invalid_utf16E = comdat any

$_ZTSN4utf813invalid_utf16E = comdat any

$_ZTVN4utf813invalid_utf16E = comdat any

@_ZL13mac_codetable = internal unnamed_addr constant [224 x i16] [i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 0, i16 196, i16 197, i16 199, i16 201, i16 209, i16 214, i16 220, i16 225, i16 224, i16 226, i16 228, i16 227, i16 229, i16 231, i16 233, i16 232, i16 234, i16 235, i16 237, i16 236, i16 238, i16 239, i16 241, i16 243, i16 242, i16 244, i16 246, i16 245, i16 250, i16 249, i16 251, i16 252, i16 8224, i16 176, i16 162, i16 163, i16 167, i16 8226, i16 182, i16 223, i16 174, i16 169, i16 8482, i16 180, i16 168, i16 8800, i16 198, i16 216, i16 8734, i16 177, i16 8804, i16 8805, i16 165, i16 181, i16 8706, i16 8721, i16 8719, i16 960, i16 8747, i16 170, i16 186, i16 937, i16 230, i16 248, i16 191, i16 161, i16 172, i16 8730, i16 402, i16 8776, i16 8710, i16 171, i16 187, i16 8230, i16 160, i16 192, i16 195, i16 213, i16 338, i16 339, i16 8211, i16 8212, i16 8220, i16 8221, i16 8216, i16 8217, i16 247, i16 9674, i16 255, i16 376, i16 8260, i16 8364, i16 8249, i16 8250, i16 -1279, i16 -1278, i16 8225, i16 183, i16 8218, i16 8222, i16 8240, i16 194, i16 202, i16 193, i16 203, i16 200, i16 205, i16 206, i16 207, i16 204, i16 211, i16 212, i16 -1793, i16 210, i16 218, i16 219, i16 217, i16 305, i16 710, i16 732, i16 175, i16 728, i16 729, i16 730, i16 184, i16 733, i16 731, i16 711], align 16
@.str = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTIN4utf818invalid_code_pointE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf818invalid_code_pointE, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4utf818invalid_code_pointE = linkonce_odr hidden constant [28 x i8] c"N4utf818invalid_code_pointE\00", comdat, align 1
@_ZTIN4utf89exceptionE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf89exceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN4utf89exceptionE = linkonce_odr hidden constant [18 x i8] c"N4utf89exceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN4utf818invalid_code_pointE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf818invalid_code_pointE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf818invalid_code_pointD0Ev, ptr @_ZNK4utf818invalid_code_point4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid code point\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@_ZTIN4utf813invalid_utf16E = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf813invalid_utf16E, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTSN4utf813invalid_utf16E = linkonce_odr hidden constant [23 x i8] c"N4utf813invalid_utf16E\00", comdat, align 1
@_ZTVN4utf813invalid_utf16E = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf813invalid_utf16E, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf813invalid_utf16D0Ev, ptr @_ZNK4utf813invalid_utf164whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Invalid UTF-16\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not427.not636.not = icmp eq i64 %i.c, 0
  br i1 %.not427.not636.not, label %.critedge, label %.lr.ph416

.lr.ph416:                                        ; preds = %bb.a, %.thread307
  %i.d = phi i64 [ %i.nx, %.thread307 ], [ %i.c, %bb.a ]
  %.0164.ph637 = phi i64 [ %.pre-phi, %.thread307 ], [ 0, %bb.a ] ; 23 uses
  %i.e = add i64 %.0164.ph637, 3                  ; 3 uses
  %i.f = add nuw i64 %.0164.ph637, 1              ; 9 uses
  %i.g = add i64 %.0164.ph637, 2                  ; 5 uses
  %i.h = add i64 %.0164.ph637, 4                  ; 9 uses
  %invariant.op = sub i64 4, %.0164.ph637
  %invariant.op779 = sub i64 4, %.0164.ph637
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph416, %bb.ci
  %i.i = phi i64 [ %i.d, %.lr.ph416 ], [ %i.nw, %bb.ci ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8                ; 9 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.0164.ph637 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 92
  br i1 %i.m, label %bb.c, label %.thread307

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.e, %i.i                  ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 83
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 92
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = lshr i8 %i.v, 6
  %i.x = xor i8 %i.w, -62
  store i8 %i.x, ptr %i.k, align 1
  %i.y = and i8 %i.v, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.f
  store i8 %i.z, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ad = icmp ugt i64 %i.g, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %i.ac) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.f
  %i.ae = sub nuw i64 %i.ac, %i.g
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 2)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef %spec.select.i.i)
  %.pre = add i64 %.0164.ph637, 2
  br label %.thread307

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.af = icmp ult i64 %i.h, %i.i
  br i1 %i.af, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.k, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 88
  br i1 %i.ai, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.k, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 92
  br i1 %i.al, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.an = load i8, ptr %i.am, align 1             ; 5 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add i8 %i.an, -97
  %or.cond5.i.i = icmp ult i8 %i.ap, 6
  br i1 %or.cond5.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i8 %i.an, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ar = add i8 %i.an, -65
  %or.cond8.i.i = icmp ult i8 %i.ar, 6
  %i.as = add i8 %i.an, -55
  %spec.select.i.i188 = select i1 %or.cond8.i.i, i8 %i.as, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i

_ZN6Assimp17HexDigitToDecimalEc.exit.i:           ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i = phi i8 [ %spec.select.i.i188, %bb.n ], [ %i.aq, %bb.m ], [ %i.ao, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.au = load i8, ptr %i.at, align 1             ; 5 uses
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %or.cond.i2.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i2.i, label %_ZN6Assimp17HexOctetToDecimalEPKc.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i
  %i.aw = add i8 %i.au, -97
  %or.cond5.i3.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond5.i3.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = add nsw i8 %i.au, -87
  br label %_ZN6Assimp17HexOctetToDecimalEPKc.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = add i8 %i.au, -65
  %or.cond8.i4.i = icmp ult i8 %i.ay, 6
  %i.az = add i8 %i.au, -55
  %spec.select.i5.i = select i1 %or.cond8.i4.i, i8 %i.az, i8 -1
  br label %_ZN6Assimp17HexOctetToDecimalEPKc.exit

_ZN6Assimp17HexOctetToDecimalEPKc.exit:           ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i, %bb.p, %bb.q
  %.0.i6.i = phi i8 [ %spec.select.i5.i, %bb.q ], [ %i.ax, %bb.p ], [ %i.av, %_ZN6Assimp17HexDigitToDecimalEc.exit.i ]
  %i.ba = shl i8 %.0.i.i, 4
  %i.bb = add i8 %.0.i6.i, %i.ba                  ; 2 uses
  %i.bc = icmp ugt i8 %i.bb, 31
  br i1 %i.bc, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZN6Assimp17HexOctetToDecimalEPKc.exit
  %i.bd = zext i8 %i.bb to i64
  %i.be = add nuw nsw i64 %i.bd, 4294967264
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZL13mac_codetable, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bj = call noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %i.bi, ptr noundef nonnull %i.a) ; 0 uses
  %i.bk = load i64, ptr %i.b, align 8             ; 3 uses
  %i.bl = icmp ugt i64 %.0164.ph637, %i.bk
  br i1 %i.bl, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190

bb.r:                                             ; preds = %.lr.ph.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %.0164.ph637, i64 noundef %i.bk) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190: ; preds = %.lr.ph.i
  %i.bm = sub nuw i64 %i.bk, %.0164.ph637
  %spec.select.i.i189 = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph637, i64 noundef %spec.select.i.i189)
  %i.bn = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bo = icmp ugt i64 %.0164.ph637, %i.bn
  br i1 %i.bo, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i64 noundef %.0164.ph637, i64 noundef %i.bn) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph637, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread307

bb.t:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %i.n, label %bb.u, label %.thread307

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %i.k, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.br, 88
  br i1 %i.bs, label %bb.v, label %.thread307

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr i8, ptr %i.k, i64 2
  %i.bu = load i8, ptr %i.bt, align 1             ; 3 uses
  %i.bv = add i8 %i.bu, -48
  %or.cond = icmp ult i8 %i.bv, 10
  br i1 %or.cond, label %bb.w, label %.thread307

bb.w:                                             ; preds = %bb.v
  switch i8 %i.bu, label %.critedge [
    i8 50, label %bb.x
    i8 52, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 92
  br i1 %i.by, label %bb.y, label %.thread307

bb.y:                                             ; preds = %bb.x
  %i.bz = add i64 %i.i, -3                        ; 3 uses
  %i.ca = icmp ult i64 %i.h, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %bb.ac
  %.0157401 = phi i64 [ %i.cn, %bb.ac ], [ %i.h, %bb.y ] ; 3 uses
  %i.cb = getelementptr i8, ptr %i.j, i64 %.0157401 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 92
  br i1 %i.cd, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 88
  br i1 %i.cg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %i.cb, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 48
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr i8, ptr %i.cb, i64 3
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 92
  br i1 %i.cm, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.z, %bb.aa, %bb.ab
  %i.cn = add i64 %.0157401, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.bz
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.ab, %bb.y
  %.0157.lcssa = phi i64 [ %i.h, %bb.y ], [ %.0157401, %bb.ab ] ; 6 uses
  %i.co = icmp eq i64 %.0157.lcssa, %i.bz
  br i1 %i.co, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.cp = icmp eq i64 %.0157.lcssa, %i.h
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit192, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit192: ; preds = %bb.ad
  %i.cq = sub nuw i64 %i.i, %.0164.ph637
  %spec.select.i.i191 = call noundef i64 @llvm.umin.i64(i64 %i.cq, i64 8)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph637, i64 noundef %spec.select.i.i191)
  br label %bb.ci, !llvm.loop !5

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.bu, label %.thread307 [
    i8 50, label %bb.af
    i8 52, label %bb.ba
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cr = sub i64 %.0157.lcssa, %i.h              ; 6 uses
  %i.cs = and i64 %i.cr, 3
  %.not181 = icmp eq i64 %i.cs, 0
  br i1 %.not181, label %.lr.ph412.preheader, label %.critedge

.lr.ph412.preheader:                              ; preds = %bb.af
  %i.ct = lshr exact i64 %i.cr, 2                 ; 5 uses
  %i.cu = lshr exact i64 %i.cr, 1
  %i.cv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #13 ; 9 uses
  %i.cw = getelementptr i8, ptr %i.j, i64 %i.h    ; 12 uses
  %min.iters.check = icmp ult i64 %i.cr, 32
  br i1 %min.iters.check, label %.lr.ph412.preheader657, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph412.preheader
  %i.cx = lshr exact i64 %i.cr, 1
  %scevgep = getelementptr i8, ptr %i.cv, i64 %i.cx
  %scevgep639 = getelementptr i8, ptr %i.j, i64 4
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %.0164.ph637
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.cr
  %bound0 = icmp ult ptr %i.cv, %scevgep641
  %bound1 = icmp ult ptr %i.cw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph412.preheader657, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, 4611686018427387896     ; 4 uses
  %i.cy = shl nuw i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cw, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.da ; 4 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep642 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep643 = getelementptr i8, ptr %i.dc, i64 8
  %i.dd = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep644 = getelementptr i8, ptr %i.dd, i64 12
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep645 = getelementptr i8, ptr %i.de, i64 16
  %i.df = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep646 = getelementptr i8, ptr %i.df, i64 20
  %i.dg = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep647 = getelementptr i8, ptr %i.dg, i64 24
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.da  ; 4 uses
  %next.gep648 = getelementptr i8, ptr %i.dh, i64 28
  %i.di = load i8, ptr %next.gep, align 1, !alias.scope !6
  %i.dj = load i8, ptr %next.gep642, align 1, !alias.scope !6
  %i.dk = load i8, ptr %next.gep643, align 1, !alias.scope !6
  %i.dl = load i8, ptr %next.gep644, align 1, !alias.scope !6
  %i.dm = load i8, ptr %next.gep645, align 1, !alias.scope !6
  %i.dn = load i8, ptr %next.gep646, align 1, !alias.scope !6
  %i.do = load i8, ptr %next.gep647, align 1, !alias.scope !6
  %i.dp = load i8, ptr %next.gep648, align 1, !alias.scope !6
  %i.dq = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 1
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 2
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 3
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 4
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 5
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 6
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 7 ; 6 uses
  %i.dy = add <8 x i8> %i.dx, splat (i8 -58)
  %i.dz = icmp ult <8 x i8> %i.dy, splat (i8 -10)
  %i.ea = add <8 x i8> %i.dx, splat (i8 -65)
  %i.eb = icmp ult <8 x i8> %i.ea, splat (i8 6)
  %i.ec = add <8 x i8> %i.dx, splat (i8 9)
  %i.ed = select <8 x i1> %i.eb, <8 x i8> %i.ec, <8 x i8> splat (i8 15)
  %i.ee = add <8 x i8> %i.dx, splat (i8 -97)
  %i.ef = icmp ult <8 x i8> %i.ee, splat (i8 6)
  %i.eg = add <8 x i8> %i.dx, splat (i8 9)
  %predphi = select <8 x i1> %i.ef, <8 x i8> %i.eg, <8 x i8> %i.ed
  %predphi649 = select <8 x i1> %i.dz, <8 x i8> %predphi, <8 x i8> %i.dx
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ei = getelementptr i8, ptr %i.db, i64 5
  %i.ej = getelementptr i8, ptr %i.dc, i64 9
  %i.ek = getelementptr i8, ptr %i.dd, i64 13
  %i.el = getelementptr i8, ptr %i.de, i64 17
  %i.em = getelementptr i8, ptr %i.df, i64 21
  %i.en = getelementptr i8, ptr %i.dg, i64 25
  %i.eo = getelementptr i8, ptr %i.dh, i64 29
  %i.ep = load i8, ptr %i.eh, align 1, !alias.scope !6
  %i.eq = load i8, ptr %i.ei, align 1, !alias.scope !6
  %i.er = load i8, ptr %i.ej, align 1, !alias.scope !6
  %i.es = load i8, ptr %i.ek, align 1, !alias.scope !6
  %i.et = load i8, ptr %i.el, align 1, !alias.scope !6
  %i.eu = load i8, ptr %i.em, align 1, !alias.scope !6
  %i.ev = load i8, ptr %i.en, align 1, !alias.scope !6
  %i.ew = load i8, ptr %i.eo, align 1, !alias.scope !6
  %i.ex = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.eq, i64 1
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 2
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 3
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 4
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 5
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 6
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 7 ; 5 uses
  %i.ff = add <8 x i8> %i.fe, splat (i8 -48)      ; 2 uses
  %i.fg = icmp ugt <8 x i8> %i.ff, splat (i8 9)
  %i.fh = add <8 x i8> %i.fe, splat (i8 -65)
  %i.fi = icmp ult <8 x i8> %i.fh, splat (i8 6)
  %i.fj = add <8 x i8> %i.fe, splat (i8 -55)
  %i.fk = select <8 x i1> %i.fi, <8 x i8> %i.fj, <8 x i8> splat (i8 -1)
  %i.fl = add <8 x i8> %i.fe, splat (i8 -97)
  %i.fm = icmp ult <8 x i8> %i.fl, splat (i8 6)
  %i.fn = add nsw <8 x i8> %i.fe, splat (i8 -87)
  %predphi650 = select <8 x i1> %i.fm, <8 x i8> %i.fn, <8 x i8> %i.fk
  %predphi651 = select <8 x i1> %i.fg, <8 x i8> %predphi650, <8 x i8> %i.ff
  %i.fo = shl <8 x i8> %predphi649, splat (i8 4)
  %i.fp = add <8 x i8> %predphi651, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.fr = getelementptr i8, ptr %i.db, i64 6
  %i.fs = getelementptr i8, ptr %i.dc, i64 10
  %i.ft = getelementptr i8, ptr %i.dd, i64 14
  %i.fu = getelementptr i8, ptr %i.de, i64 18
  %i.fv = getelementptr i8, ptr %i.df, i64 22
  %i.fw = getelementptr i8, ptr %i.dg, i64 26
  %i.fx = getelementptr i8, ptr %i.dh, i64 30
  %i.fy = load i8, ptr %i.fq, align 1, !alias.scope !6
  %i.fz = load i8, ptr %i.fr, align 1, !alias.scope !6
  %i.ga = load i8, ptr %i.fs, align 1, !alias.scope !6
  %i.gb = load i8, ptr %i.ft, align 1, !alias.scope !6
  %i.gc = load i8, ptr %i.fu, align 1, !alias.scope !6
  %i.gd = load i8, ptr %i.fv, align 1, !alias.scope !6
  %i.ge = load i8, ptr %i.fw, align 1, !alias.scope !6
  %i.gf = load i8, ptr %i.fx, align 1, !alias.scope !6
  %i.gg = insertelement <8 x i8> poison, i8 %i.fy, i64 0
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 1
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 2
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 3
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 4
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 5
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ge, i64 6
  %i.gn = insertelement <8 x i8> %i.gm, i8 %i.gf, i64 7 ; 6 uses
  %i.go = add <8 x i8> %i.gn, splat (i8 -58)
  %i.gp = icmp ult <8 x i8> %i.go, splat (i8 -10)
  %i.gq = add <8 x i8> %i.gn, splat (i8 -65)
  %i.gr = icmp ult <8 x i8> %i.gq, splat (i8 6)
  %i.gs = add <8 x i8> %i.gn, splat (i8 9)
  %i.gt = select <8 x i1> %i.gr, <8 x i8> %i.gs, <8 x i8> splat (i8 15)
  %i.gu = add <8 x i8> %i.gn, splat (i8 -97)
  %i.gv = icmp ult <8 x i8> %i.gu, splat (i8 6)
  %i.gw = add <8 x i8> %i.gn, splat (i8 9)
  %predphi652 = select <8 x i1> %i.gv, <8 x i8> %i.gw, <8 x i8> %i.gt
  %predphi653 = select <8 x i1> %i.gp, <8 x i8> %predphi652, <8 x i8> %i.gn
  %i.gx = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.gy = getelementptr i8, ptr %i.db, i64 7
  %i.gz = getelementptr i8, ptr %i.dc, i64 11
  %i.ha = getelementptr i8, ptr %i.dd, i64 15
  %i.hb = getelementptr i8, ptr %i.de, i64 19
  %i.hc = getelementptr i8, ptr %i.df, i64 23
  %i.hd = getelementptr i8, ptr %i.dg, i64 27
  %i.he = getelementptr i8, ptr %i.dh, i64 31
  %i.hf = load i8, ptr %i.gx, align 1, !alias.scope !6
  %i.hg = load i8, ptr %i.gy, align 1, !alias.scope !6
  %i.hh = load i8, ptr %i.gz, align 1, !alias.scope !6
  %i.hi = load i8, ptr %i.ha, align 1, !alias.scope !6
  %i.hj = load i8, ptr %i.hb, align 1, !alias.scope !6
  %i.hk = load i8, ptr %i.hc, align 1, !alias.scope !6
  %i.hl = load i8, ptr %i.hd, align 1, !alias.scope !6
  %i.hm = load i8, ptr %i.he, align 1, !alias.scope !6
  %i.hn = insertelement <8 x i8> poison, i8 %i.hf, i64 0
  %i.ho = insertelement <8 x i8> %i.hn, i8 %i.hg, i64 1
  %i.hp = insertelement <8 x i8> %i.ho, i8 %i.hh, i64 2
  %i.hq = insertelement <8 x i8> %i.hp, i8 %i.hi, i64 3
  %i.hr = insertelement <8 x i8> %i.hq, i8 %i.hj, i64 4
  %i.hs = insertelement <8 x i8> %i.hr, i8 %i.hk, i64 5
  %i.ht = insertelement <8 x i8> %i.hs, i8 %i.hl, i64 6
  %i.hu = insertelement <8 x i8> %i.ht, i8 %i.hm, i64 7 ; 5 uses
  %i.hv = add <8 x i8> %i.hu, splat (i8 -48)      ; 2 uses
  %i.hw = icmp ugt <8 x i8> %i.hv, splat (i8 9)
  %i.hx = add <8 x i8> %i.hu, splat (i8 -65)
  %i.hy = icmp ult <8 x i8> %i.hx, splat (i8 6)
  %i.hz = add <8 x i8> %i.hu, splat (i8 -55)
  %i.ia = select <8 x i1> %i.hy, <8 x i8> %i.hz, <8 x i8> splat (i8 -1)
  %i.ib = add <8 x i8> %i.hu, splat (i8 -97)
  %i.ic = icmp ult <8 x i8> %i.ib, splat (i8 6)
  %i.id = add nsw <8 x i8> %i.hu, splat (i8 -87)
  %predphi654 = select <8 x i1> %i.ic, <8 x i8> %i.id, <8 x i8> %i.ia
  %predphi655 = select <8 x i1> %i.hw, <8 x i8> %predphi654, <8 x i8> %i.hv
  %i.ie = shl <8 x i8> %predphi653, splat (i8 4)
  %i.if = add <8 x i8> %predphi655, %i.ie
  %i.ig = zext <8 x i8> %i.fp to <8 x i16>
  %i.ih = shl nuw <8 x i16> %i.ig, splat (i16 8)
  %i.ii = zext <8 x i8> %i.if to <8 x i16>
  %i.ij = or disjoint <8 x i16> %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index
  store <8 x i16> %i.ij, ptr %i.ik, align 2, !alias.scope !9, !noalias !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %._crit_edge413, label %.lr.ph412.preheader657

.lr.ph412.preheader657:                           ; preds = %vector.memcheck, %.lr.ph412.preheader, %middle.block
  %.0155410.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph412.preheader ], [ %n.vec, %middle.block ]
  %.0156409.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph412.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph412

._crit_edge413:                                   ; preds = %bb.at, %middle.block
  %i.im = mul nuw i64 %i.ct, 3
  %i.in = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.im) #13
          to label %bb.au unwind label %bb.ax     ; 4 uses

.lr.ph412:                                        ; preds = %.lr.ph412.preheader657, %bb.at
  %.0155410 = phi i64 [ %i.jy, %bb.at ], [ %.0155410.ph, %.lr.ph412.preheader657 ] ; 2 uses
  %.0156409 = phi ptr [ %i.jz, %bb.at ], [ %.0156409.ph, %.lr.ph412.preheader657 ] ; 5 uses
  %i.io = load i8, ptr %.0156409, align 1         ; 5 uses
  %i.ip = add i8 %i.io, -48                       ; 2 uses
  %or.cond.i.i193 = icmp ult i8 %i.ip, 10
  br i1 %or.cond.i.i193, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph412
  %i.iq = add i8 %i.io, -97
  %or.cond5.i.i194 = icmp ult i8 %i.iq, 6
  br i1 %or.cond5.i.i194, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ir = add nsw i8 %i.io, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197

bb.ai:                                            ; preds = %bb.ag
  %i.is = add i8 %i.io, -65
  %or.cond8.i.i195 = icmp ult i8 %i.is, 6
  %i.it = add i8 %i.io, -55
  %spec.select.i.i196 = select i1 %or.cond8.i.i195, i8 %i.it, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197

_ZN6Assimp17HexDigitToDecimalEc.exit.i197:        ; preds = %bb.ai, %bb.ah, %.lr.ph412
  %.0.i.i198 = phi i8 [ %spec.select.i.i196, %bb.ai ], [ %i.ir, %bb.ah ], [ %i.ip, %.lr.ph412 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0156409, i64 1
  %i.iv = load i8, ptr %i.iu, align 1             ; 5 uses
  %i.iw = add i8 %i.iv, -48                       ; 2 uses
  %or.cond.i2.i199 = icmp ult i8 %i.iw, 10
  br i1 %or.cond.i2.i199, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i197
  %i.ix = add i8 %i.iv, -97
  %or.cond5.i3.i200 = icmp ult i8 %i.ix, 6
  br i1 %or.cond5.i3.i200, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.iy = add nsw i8 %i.iv, -87
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.iz = add i8 %i.iv, -65
  %or.cond8.i4.i201 = icmp ult i8 %i.iz, 6
  %i.ja = add i8 %i.iv, -55
  %spec.select.i5.i202 = select i1 %or.cond8.i4.i201, i8 %i.ja, i8 -1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZN6Assimp17HexDigitToDecimalEc.exit.i197
  %.0.i6.i203 = phi i8 [ %spec.select.i5.i202, %bb.al ], [ %i.iy, %bb.ak ], [ %i.iw, %_ZN6Assimp17HexDigitToDecimalEc.exit.i197 ]
  %i.jb = shl i8 %.0.i.i198, 4
  %i.jc = add i8 %.0.i6.i203, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.0156409, i64 2
  %i.je = load i8, ptr %i.jd, align 1             ; 5 uses
  %i.jf = add i8 %i.je, -48                       ; 2 uses
  %or.cond.i.i205 = icmp ult i8 %i.jf, 10
  br i1 %or.cond.i.i205, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jg = add i8 %i.je, -97
  %or.cond5.i.i206 = icmp ult i8 %i.jg, 6
  br i1 %or.cond5.i.i206, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jh = add nsw i8 %i.je, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209

bb.ap:                                            ; preds = %bb.an
  %i.ji = add i8 %i.je, -65
  %or.cond8.i.i207 = icmp ult i8 %i.ji, 6
  %i.jj = add i8 %i.je, -55
  %spec.select.i.i208 = select i1 %or.cond8.i.i207, i8 %i.jj, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209

_ZN6Assimp17HexDigitToDecimalEc.exit.i209:        ; preds = %bb.ap, %bb.ao, %bb.am
  %.0.i.i210 = phi i8 [ %spec.select.i.i208, %bb.ap ], [ %i.jh, %bb.ao ], [ %i.jf, %bb.am ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.0156409, i64 3
  %i.jl = load i8, ptr %i.jk, align 1             ; 5 uses
  %i.jm = add i8 %i.jl, -48                       ; 2 uses
  %or.cond.i2.i211 = icmp ult i8 %i.jm, 10
  br i1 %or.cond.i2.i211, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i209
  %i.jn = add i8 %i.jl, -97
  %or.cond5.i3.i212 = icmp ult i8 %i.jn, 6
  br i1 %or.cond5.i3.i212, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jo = add nsw i8 %i.jl, -87
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jp = add i8 %i.jl, -65
  %or.cond8.i4.i213 = icmp ult i8 %i.jp, 6
  %i.jq = add i8 %i.jl, -55
  %spec.select.i5.i214 = select i1 %or.cond8.i4.i213, i8 %i.jq, i8 -1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN6Assimp17HexDigitToDecimalEc.exit.i209
  %.0.i6.i215 = phi i8 [ %spec.select.i5.i214, %bb.as ], [ %i.jo, %bb.ar ], [ %i.jm, %_ZN6Assimp17HexDigitToDecimalEc.exit.i209 ]
  %i.jr = shl i8 %.0.i.i210, 4
  %i.js = add i8 %.0.i6.i215, %i.jr
  %i.jt = zext i8 %i.jc to i16
  %i.ju = shl nuw i16 %i.jt, 8
  %i.jv = zext i8 %i.js to i16
  %i.jw = or disjoint i16 %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %.0155410
  store i16 %i.jw, ptr %i.jx, align 2
  %i.jy = add nuw nsw i64 %.0155410, 1            ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0156409, i64 4
  %exitcond477.not = icmp eq i64 %i.jy, %i.ct
  br i1 %exitcond477.not, label %._crit_edge413, label %.lr.ph412, !llvm.loop !14

bb.au:                                            ; preds = %._crit_edge413
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct
  %i.kb = invoke noundef ptr @_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ka, ptr noundef nonnull %i.in)
          to label %bb.av unwind label %bb.ay     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %.reass573.reass = add i64 %.0157.lcssa, %invariant.op779
  %i.kc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph637, i64 noundef %.reass573.reass)
          to label %bb.aw unwind label %bb.az     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.kd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph637, ptr noundef nonnull %i.in, i64 noundef 0)
          to label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit unwind label %bb.az ; 0 uses

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.in) #14
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #14
  br label %bb.ci

bb.ax:                                            ; preds = %._crit_edge413
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

bb.ay:                                            ; preds = %bb.au
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221: ; preds = %bb.az, %bb.ay
  %.pn182 = phi { ptr, i32 } [ %i.kg, %bb.az ], [ %i.kf, %bb.ay ]
  call void @_ZdaPv(ptr noundef nonnull %i.in) #14
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

bb.ba:                                            ; preds = %bb.ae
  %i.kh = sub i64 %.0157.lcssa, %i.h              ; 3 uses
  %i.ki = and i64 %i.kh, 7
  %.not = icmp eq i64 %i.ki, 0
  br i1 %.not, label %.lr.ph407.preheader, label %.critedge

.lr.ph407.preheader:                              ; preds = %bb.ba
  %i.kj = lshr exact i64 %i.kh, 3                 ; 2 uses
  %i.kk = lshr exact i64 %i.kh, 1                 ; 2 uses
  %i.kl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #13 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.cc
  %i.kn = mul nuw i64 %i.kj, 5
  %i.ko = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #13
          to label %bb.cd unwind label %bb.cf     ; 4 uses

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.cc
  %.0405 = phi i64 [ %i.nl, %bb.cc ], [ 0, %.lr.ph407.preheader ] ; 2 uses
  %.0146404 = phi ptr [ %i.nm, %bb.cc ], [ %i.km, %.lr.ph407.preheader ] ; 9 uses
  %i.kp = load i8, ptr %.0146404, align 1         ; 5 uses
  %i.kq = add i8 %i.kp, -48                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.kq, 10
  br i1 %or.cond.i.i225, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph407
  %i.kr = add i8 %i.kp, -97
  %or.cond5.i.i226 = icmp ult i8 %i.kr, 6
  br i1 %or.cond5.i.i226, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ks = add nsw i8 %i.kp, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229

bb.bd:                                            ; preds = %bb.bb
  %i.kt = add i8 %i.kp, -65
  %or.cond8.i.i227 = icmp ult i8 %i.kt, 6
  %i.ku = add i8 %i.kp, -55
  %spec.select.i.i228 = select i1 %or.cond8.i.i227, i8 %i.ku, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229

_ZN6Assimp17HexDigitToDecimalEc.exit.i229:        ; preds = %bb.bd, %bb.bc, %.lr.ph407
  %.0.i.i230 = phi i8 [ %spec.select.i.i228, %bb.bd ], [ %i.ks, %bb.bc ], [ %i.kq, %.lr.ph407 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.0146404, i64 1
  %i.kw = load i8, ptr %i.kv, align 1             ; 5 uses
  %i.kx = add i8 %i.kw, -48                       ; 2 uses
  %or.cond.i2.i231 = icmp ult i8 %i.kx, 10
  br i1 %or.cond.i2.i231, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i229
  %i.ky = add i8 %i.kw, -97
  %or.cond5.i3.i232 = icmp ult i8 %i.ky, 6
  br i1 %or.cond5.i3.i232, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kz = add nsw i8 %i.kw, -87
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.la = add i8 %i.kw, -65
  %or.cond8.i4.i233 = icmp ult i8 %i.la, 6
  %i.lb = add i8 %i.kw, -55
  %spec.select.i5.i234 = select i1 %or.cond8.i4.i233, i8 %i.lb, i8 -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %_ZN6Assimp17HexDigitToDecimalEc.exit.i229
  %.0.i6.i235 = phi i8 [ %spec.select.i5.i234, %bb.bg ], [ %i.kz, %bb.bf ], [ %i.kx, %_ZN6Assimp17HexDigitToDecimalEc.exit.i229 ]
  %i.lc = shl i8 %.0.i.i230, 4
  %i.ld = add i8 %.0.i6.i235, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.0146404, i64 2
  %i.lf = load i8, ptr %i.le, align 1             ; 5 uses
  %i.lg = add i8 %i.lf, -48                       ; 2 uses
  %or.cond.i.i237 = icmp ult i8 %i.lg, 10
  br i1 %or.cond.i.i237, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lh = add i8 %i.lf, -97
  %or.cond5.i.i238 = icmp ult i8 %i.lh, 6
  br i1 %or.cond5.i.i238, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.li = add nsw i8 %i.lf, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241

bb.bk:                                            ; preds = %bb.bi
  %i.lj = add i8 %i.lf, -65
  %or.cond8.i.i239 = icmp ult i8 %i.lj, 6
  %i.lk = add i8 %i.lf, -55
  %spec.select.i.i240 = select i1 %or.cond8.i.i239, i8 %i.lk, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241

_ZN6Assimp17HexDigitToDecimalEc.exit.i241:        ; preds = %bb.bk, %bb.bj, %bb.bh
  %.0.i.i242 = phi i8 [ %spec.select.i.i240, %bb.bk ], [ %i.li, %bb.bj ], [ %i.lg, %bb.bh ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0146404, i64 3
  %i.lm = load i8, ptr %i.ll, align 1             ; 5 uses
  %i.ln = add i8 %i.lm, -48                       ; 2 uses
  %or.cond.i2.i243 = icmp ult i8 %i.ln, 10
  br i1 %or.cond.i2.i243, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i241
  %i.lo = add i8 %i.lm, -97
  %or.cond5.i3.i244 = icmp ult i8 %i.lo, 6
  br i1 %or.cond5.i3.i244, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.lp = add nsw i8 %i.lm, -87
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.lq = add i8 %i.lm, -65
  %or.cond8.i4.i245 = icmp ult i8 %i.lq, 6
  %i.lr = add i8 %i.lm, -55
  %spec.select.i5.i246 = select i1 %or.cond8.i4.i245, i8 %i.lr, i8 -1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %_ZN6Assimp17HexDigitToDecimalEc.exit.i241
  %.0.i6.i247 = phi i8 [ %spec.select.i5.i246, %bb.bn ], [ %i.lp, %bb.bm ], [ %i.ln, %_ZN6Assimp17HexDigitToDecimalEc.exit.i241 ]
  %i.ls = shl i8 %.0.i.i242, 4
  %i.lt = add i8 %.0.i6.i247, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.0146404, i64 4
  %i.lv = load i8, ptr %i.lu, align 1             ; 5 uses
  %i.lw = add i8 %i.lv, -48                       ; 2 uses
  %or.cond.i.i249 = icmp ult i8 %i.lw, 10
  br i1 %or.cond.i.i249, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lx = add i8 %i.lv, -97
  %or.cond5.i.i250 = icmp ult i8 %i.lx, 6
  br i1 %or.cond5.i.i250, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ly = add nsw i8 %i.lv, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253

bb.br:                                            ; preds = %bb.bp
  %i.lz = add i8 %i.lv, -65
  %or.cond8.i.i251 = icmp ult i8 %i.lz, 6
  %i.ma = add i8 %i.lv, -55
  %spec.select.i.i252 = select i1 %or.cond8.i.i251, i8 %i.ma, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253

_ZN6Assimp17HexDigitToDecimalEc.exit.i253:        ; preds = %bb.br, %bb.bq, %bb.bo
  %.0.i.i254 = phi i8 [ %spec.select.i.i252, %bb.br ], [ %i.ly, %bb.bq ], [ %i.lw, %bb.bo ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.0146404, i64 5
  %i.mc = load i8, ptr %i.mb, align 1             ; 5 uses
  %i.md = add i8 %i.mc, -48                       ; 2 uses
  %or.cond.i2.i255 = icmp ult i8 %i.md, 10
  br i1 %or.cond.i2.i255, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i253
  %i.me = add i8 %i.mc, -97
  %or.cond5.i3.i256 = icmp ult i8 %i.me, 6
  br i1 %or.cond5.i3.i256, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mf = add nsw i8 %i.mc, -87
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.mg = add i8 %i.mc, -65
  %or.cond8.i4.i257 = icmp ult i8 %i.mg, 6
  %i.mh = add i8 %i.mc, -55
  %spec.select.i5.i258 = select i1 %or.cond8.i4.i257, i8 %i.mh, i8 -1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %_ZN6Assimp17HexDigitToDecimalEc.exit.i253
  %.0.i6.i259 = phi i8 [ %spec.select.i5.i258, %bb.bu ], [ %i.mf, %bb.bt ], [ %i.md, %_ZN6Assimp17HexDigitToDecimalEc.exit.i253 ]
  %i.mi = shl i8 %.0.i.i254, 4
  %i.mj = add i8 %.0.i6.i259, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %.0146404, i64 6
  %i.ml = load i8, ptr %i.mk, align 1             ; 5 uses
  %i.mm = add i8 %i.ml, -48                       ; 2 uses
  %or.cond.i.i261 = icmp ult i8 %i.mm, 10
  br i1 %or.cond.i.i261, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mn = add i8 %i.ml, -97
  %or.cond5.i.i262 = icmp ult i8 %i.mn, 6
  br i1 %or.cond5.i.i262, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.mo = add nsw i8 %i.ml, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265

bb.by:                                            ; preds = %bb.bw
  %i.mp = add i8 %i.ml, -65
  %or.cond8.i.i263 = icmp ult i8 %i.mp, 6
  %i.mq = add i8 %i.ml, -55
  %spec.select.i.i264 = select i1 %or.cond8.i.i263, i8 %i.mq, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265

_ZN6Assimp17HexDigitToDecimalEc.exit.i265:        ; preds = %bb.by, %bb.bx, %bb.bv
  %.0.i.i266 = phi i8 [ %spec.select.i.i264, %bb.by ], [ %i.mo, %bb.bx ], [ %i.mm, %bb.bv ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0146404, i64 7
  %i.ms = load i8, ptr %i.mr, align 1             ; 5 uses
  %i.mt = add i8 %i.ms, -48                       ; 2 uses
  %or.cond.i2.i267 = icmp ult i8 %i.mt, 10
  br i1 %or.cond.i2.i267, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i265
  %i.mu = add i8 %i.ms, -97
  %or.cond5.i3.i268 = icmp ult i8 %i.mu, 6
  br i1 %or.cond5.i3.i268, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mv = add nsw i8 %i.ms, -87
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.mw = add i8 %i.ms, -65
end_hunk_0
