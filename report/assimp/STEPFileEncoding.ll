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

@_ZL13mac_codetable = internal unnamed_addr constant [224 x i16] [i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 0, i16 196, i16 197, i16 199, i16 201, i16 209, i16 214, i16 220, i16 225, i16 224, i16 226, i16 228, i16 227, i16 229, i16 231, i16 233, i16 232, i16 234, i16 235, i16 237, i16 236, i16 238, i16 239, i16 241, i16 243, i16 242, i16 244, i16 246, i16 245, i16 250, i16 249, i16 251, i16 252, i16 8224, i16 176, i16 162, i16 163, i16 167, i16 8226, i16 182, i16 223, i16 174, i16 169, i16 8482, i16 180, i16 168, i16 8800, i16 198, i16 216, i16 8734, i16 177, i16 8804, i16 8805, i16 165, i16 181, i16 8706, i16 8721, i16 8719, i16 960, i16 8747, i16 170, i16 186, i16 937, i16 230, i16 248, i16 191, i16 161, i16 172, i16 8730, i16 402, i16 8776, i16 8710, i16 171, i16 187, i16 8230, i16 160, i16 192, i16 195, i16 213, i16 338, i16 339, i16 8211, i16 8212, i16 8220, i16 8221, i16 8216, i16 8217, i16 247, i16 9674, i16 255, i16 376, i16 8260, i16 8364, i16 8249, i16 8250, i16 -1279, i16 -1278, i16 8225, i16 183, i16 8218, i16 8222, i16 8240, i16 194, i16 202, i16 193, i16 203, i16 200, i16 205, i16 206, i16 207, i16 204, i16 211, i16 212, i16 -1793, i16 210, i16 218, i16 219, i16 217, i16 305, i16 710, i16 732, i16 175, i16 728, i16 729, i16 730, i16 184, i16 733, i16 731, i16 711], align 16, !guid !3
@.str = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1, !guid !4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1, !guid !5
@_ZTIN4utf818invalid_code_pointE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf818invalid_code_pointE, ptr @_ZTIN4utf89exceptionE }, comdat, align 8, !guid !6
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4utf818invalid_code_pointE = linkonce_odr hidden constant [28 x i8] c"N4utf818invalid_code_pointE\00", comdat, align 1, !guid !7
@_ZTIN4utf89exceptionE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf89exceptionE, ptr @_ZTISt9exception }, comdat, align 8, !guid !8
@_ZTSN4utf89exceptionE = linkonce_odr hidden constant [18 x i8] c"N4utf89exceptionE\00", comdat, align 1, !guid !9
@_ZTISt9exception = external constant ptr
@_ZTVN4utf818invalid_code_pointE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf818invalid_code_pointE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf818invalid_code_pointD0Ev, ptr @_ZNK4utf818invalid_code_point4whatEv] }, comdat, align 8, !guid !10
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid code point\00", align 1, !guid !11
@.str.3 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1, !guid !12
@_ZTIN4utf813invalid_utf16E = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf813invalid_utf16E, ptr @_ZTIN4utf89exceptionE }, comdat, align 8, !guid !13
@_ZTSN4utf813invalid_utf16E = linkonce_odr hidden constant [23 x i8] c"N4utf813invalid_utf16E\00", comdat, align 1, !guid !14
@_ZTVN4utf813invalid_utf16E = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf813invalid_utf16E, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf813invalid_utf16D0Ev, ptr @_ZNK4utf813invalid_utf164whatEv] }, comdat, align 8, !guid !15
@.str.4 = private unnamed_addr constant [15 x i8] c"Invalid UTF-16\00", align 1, !guid !16

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !27 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not418.not610.not = icmp eq i64 %i.c, 0
  br i1 %.not418.not610.not, label %.critedge, label %.lr.ph407

.lr.ph407:                                        ; preds = %bb.a, %.thread307
  %i.d = phi i64 [ %i.nx, %.thread307 ], [ %i.c, %bb.a ]
  %.0164.ph611 = phi i64 [ %.pre-phi, %.thread307 ], [ 0, %bb.a ] ; 23 uses
  %i.e = add i64 %.0164.ph611, 3                  ; 3 uses
  %i.f = add nuw i64 %.0164.ph611, 1              ; 9 uses
  %i.g = add i64 %.0164.ph611, 2                  ; 5 uses
  %i.h = add i64 %.0164.ph611, 4                  ; 9 uses
  %invariant.op = sub i64 4, %.0164.ph611
  %invariant.op742 = sub i64 4, %.0164.ph611
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph407, %bb.ce
  %i.i = phi i64 [ %i.d, %.lr.ph407 ], [ %i.nw, %bb.ce ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.0164.ph611 ; 8 uses
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
  %.pre = add i64 %.0164.ph611, 2
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
  %i.be = getelementptr [2 x i8], ptr @_ZL13mac_codetable, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -64
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bi = call noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %i.bh, ptr noundef nonnull %i.a) ; 0 uses
  %i.bj = load i64, ptr %i.b, align 8             ; 3 uses
  %i.bk = icmp ugt i64 %.0164.ph611, %i.bj
  br i1 %i.bk, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190

bb.r:                                             ; preds = %.lr.ph.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %.0164.ph611, i64 noundef %i.bj) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190: ; preds = %.lr.ph.i
  %i.bl = sub nuw i64 %i.bj, %.0164.ph611
  %spec.select.i.i189 = call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, i64 noundef %spec.select.i.i189)
  %i.bm = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bn = icmp ugt i64 %.0164.ph611, %i.bm
  br i1 %i.bn, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i64 noundef %.0164.ph611, i64 noundef %i.bm) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit190
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread307

bb.t:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %i.n, label %bb.u, label %.thread307

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %i.k, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 88
  br i1 %i.br, label %bb.v, label %.thread307

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr i8, ptr %i.k, i64 2
  %i.bt = load i8, ptr %i.bs, align 1             ; 3 uses
  %i.bu = add i8 %i.bt, -48
  %or.cond = icmp ult i8 %i.bu, 10
  br i1 %or.cond, label %bb.w, label %.thread307

bb.w:                                             ; preds = %bb.v
  switch i8 %i.bt, label %.critedge [
    i8 50, label %bb.x
    i8 52, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 92
  br i1 %i.bx, label %bb.y, label %.thread307

bb.y:                                             ; preds = %bb.x
  %i.by = add i64 %i.i, -3                        ; 3 uses
  %i.bz = icmp ult i64 %i.h, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %bb.ac
  %.0157392 = phi i64 [ %i.cm, %bb.ac ], [ %i.h, %bb.y ] ; 3 uses
  %i.ca = getelementptr i8, ptr %i.j, i64 %.0157392 ; 4 uses
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = icmp eq i8 %i.cb, 92
  br i1 %i.cc, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 88
  br i1 %i.cf, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %i.ca, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = icmp eq i8 %i.ch, 48
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr i8, ptr %i.ca, i64 3
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, 92
  br i1 %i.cl, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.z, %bb.aa, %bb.ab
  %i.cm = add i64 %.0157392, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %i.by
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.ab, %bb.y
  %.0157.lcssa = phi i64 [ %i.h, %bb.y ], [ %.0157392, %bb.ab ] ; 6 uses
  %i.cn = icmp eq i64 %.0157.lcssa, %i.by
  br i1 %i.cn, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.co = icmp eq i64 %.0157.lcssa, %i.h
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit192, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit192: ; preds = %bb.ad
  %i.cp = sub nuw i64 %i.i, %.0164.ph611
  %spec.select.i.i191 = call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 8)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, i64 noundef %spec.select.i.i191)
  br label %bb.ce, !llvm.loop !19

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.bt, label %.thread307 [
    i8 50, label %bb.af
    i8 52, label %bb.ay
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cq = sub nuw i64 %.0157.lcssa, %i.h          ; 6 uses
  %i.cr = and i64 %i.cq, 3
  %.not181 = icmp eq i64 %i.cr, 0
  br i1 %.not181, label %.lr.ph403.preheader, label %.critedge

.lr.ph403.preheader:                              ; preds = %bb.af
  %i.cs = lshr exact i64 %i.cq, 2                 ; 5 uses
  %i.ct = lshr exact i64 %i.cq, 1
  %i.cu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #13 ; 9 uses
  %i.cv = load ptr, ptr %0, align 8               ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.h   ; 12 uses
  %min.iters.check = icmp ult i64 %i.cq, 32
  br i1 %min.iters.check, label %.lr.ph403.preheader631, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph403.preheader
  %i.cx = lshr exact i64 %i.cq, 1
  %1 = getelementptr i8, ptr %i.cu, i64 %i.cx
  %2 = getelementptr i8, ptr %i.cv, i64 %.0164.ph611
  %i.cy = getelementptr i8, ptr %2, i64 %i.cq
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %bound0 = icmp ult ptr %i.cu, %i.cz
  %bound1 = icmp ult ptr %i.cw, %1
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph403.preheader631, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, 4611686018427387896     ; 4 uses
  %i.da = shl nuw i64 %n.vec, 2
  %i.db = getelementptr i8, ptr %i.cw, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dc ; 4 uses
  %i.dd = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep616 = getelementptr i8, ptr %i.dd, i64 4
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep617 = getelementptr i8, ptr %i.de, i64 8
  %i.df = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep618 = getelementptr i8, ptr %i.df, i64 12
  %i.dg = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep619 = getelementptr i8, ptr %i.dg, i64 16
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep620 = getelementptr i8, ptr %i.dh, i64 20
  %i.di = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep621 = getelementptr i8, ptr %i.di, i64 24
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 4 uses
  %next.gep622 = getelementptr i8, ptr %i.dj, i64 28
  %i.dk = load i8, ptr %next.gep, align 1, !alias.scope !28
  %i.dl = load i8, ptr %next.gep616, align 1, !alias.scope !28
  %i.dm = load i8, ptr %next.gep617, align 1, !alias.scope !28
  %i.dn = load i8, ptr %next.gep618, align 1, !alias.scope !28
  %i.do = load i8, ptr %next.gep619, align 1, !alias.scope !28
  %i.dp = load i8, ptr %next.gep620, align 1, !alias.scope !28
  %i.dq = load i8, ptr %next.gep621, align 1, !alias.scope !28
  %i.dr = load i8, ptr %next.gep622, align 1, !alias.scope !28
  %i.ds = insertelement <8 x i8> poison, i8 %i.dk, i64 0
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 1
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 2
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 3
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 4
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 5
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dq, i64 6
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 7 ; 6 uses
  %i.ea = add <8 x i8> %i.dz, splat (i8 -58)
  %i.eb = icmp ult <8 x i8> %i.ea, splat (i8 -10)
  %i.ec = add <8 x i8> %i.dz, splat (i8 -65)
  %i.ed = icmp ult <8 x i8> %i.ec, splat (i8 6)
  %i.ee = add <8 x i8> %i.dz, splat (i8 9)
  %i.ef = select <8 x i1> %i.ed, <8 x i8> %i.ee, <8 x i8> splat (i8 15)
  %i.eg = add <8 x i8> %i.dz, splat (i8 -97)
  %i.eh = icmp ult <8 x i8> %i.eg, splat (i8 6)
  %i.ei = add <8 x i8> %i.dz, splat (i8 9)
  %predphi = select <8 x i1> %i.eh, <8 x i8> %i.ei, <8 x i8> %i.ef
  %predphi623 = select <8 x i1> %i.eb, <8 x i8> %predphi, <8 x i8> %i.dz
  %i.ej = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ek = getelementptr i8, ptr %i.dd, i64 5
  %i.el = getelementptr i8, ptr %i.de, i64 9
  %i.em = getelementptr i8, ptr %i.df, i64 13
  %i.en = getelementptr i8, ptr %i.dg, i64 17
  %i.eo = getelementptr i8, ptr %i.dh, i64 21
  %i.ep = getelementptr i8, ptr %i.di, i64 25
  %i.eq = getelementptr i8, ptr %i.dj, i64 29
  %i.er = load i8, ptr %i.ej, align 1, !alias.scope !28
  %i.es = load i8, ptr %i.ek, align 1, !alias.scope !28
  %i.et = load i8, ptr %i.el, align 1, !alias.scope !28
  %i.eu = load i8, ptr %i.em, align 1, !alias.scope !28
  %i.ev = load i8, ptr %i.en, align 1, !alias.scope !28
  %i.ew = load i8, ptr %i.eo, align 1, !alias.scope !28
  %i.ex = load i8, ptr %i.ep, align 1, !alias.scope !28
  %i.ey = load i8, ptr %i.eq, align 1, !alias.scope !28
  %i.ez = insertelement <8 x i8> poison, i8 %i.er, i64 0
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 1
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 2
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 3
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 4
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 5
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 6
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 7 ; 5 uses
  %i.fh = add <8 x i8> %i.fg, splat (i8 -48)      ; 2 uses
  %i.fi = icmp ugt <8 x i8> %i.fh, splat (i8 9)
  %i.fj = add <8 x i8> %i.fg, splat (i8 -65)
  %i.fk = icmp ult <8 x i8> %i.fj, splat (i8 6)
  %i.fl = add <8 x i8> %i.fg, splat (i8 -55)
  %i.fm = select <8 x i1> %i.fk, <8 x i8> %i.fl, <8 x i8> splat (i8 -1)
  %i.fn = add <8 x i8> %i.fg, splat (i8 -97)
  %i.fo = icmp ult <8 x i8> %i.fn, splat (i8 6)
  %i.fp = add nsw <8 x i8> %i.fg, splat (i8 -87)
  %predphi624 = select <8 x i1> %i.fo, <8 x i8> %i.fp, <8 x i8> %i.fm
  %predphi625 = select <8 x i1> %i.fi, <8 x i8> %predphi624, <8 x i8> %i.fh
  %i.fq = shl <8 x i8> %predphi623, splat (i8 4)
  %i.fr = add <8 x i8> %predphi625, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ft = getelementptr i8, ptr %i.dd, i64 6
  %i.fu = getelementptr i8, ptr %i.de, i64 10
  %i.fv = getelementptr i8, ptr %i.df, i64 14
  %i.fw = getelementptr i8, ptr %i.dg, i64 18
  %i.fx = getelementptr i8, ptr %i.dh, i64 22
  %i.fy = getelementptr i8, ptr %i.di, i64 26
  %i.fz = getelementptr i8, ptr %i.dj, i64 30
  %i.ga = load i8, ptr %i.fs, align 1, !alias.scope !28
  %i.gb = load i8, ptr %i.ft, align 1, !alias.scope !28
  %i.gc = load i8, ptr %i.fu, align 1, !alias.scope !28
  %i.gd = load i8, ptr %i.fv, align 1, !alias.scope !28
  %i.ge = load i8, ptr %i.fw, align 1, !alias.scope !28
  %i.gf = load i8, ptr %i.fx, align 1, !alias.scope !28
  %i.gg = load i8, ptr %i.fy, align 1, !alias.scope !28
  %i.gh = load i8, ptr %i.fz, align 1, !alias.scope !28
  %i.gi = insertelement <8 x i8> poison, i8 %i.ga, i64 0
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 1
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 2
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 3
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ge, i64 4
  %i.gn = insertelement <8 x i8> %i.gm, i8 %i.gf, i64 5
  %i.go = insertelement <8 x i8> %i.gn, i8 %i.gg, i64 6
  %i.gp = insertelement <8 x i8> %i.go, i8 %i.gh, i64 7 ; 6 uses
  %i.gq = add <8 x i8> %i.gp, splat (i8 -58)
  %i.gr = icmp ult <8 x i8> %i.gq, splat (i8 -10)
  %i.gs = add <8 x i8> %i.gp, splat (i8 -65)
  %i.gt = icmp ult <8 x i8> %i.gs, splat (i8 6)
  %i.gu = add <8 x i8> %i.gp, splat (i8 9)
  %i.gv = select <8 x i1> %i.gt, <8 x i8> %i.gu, <8 x i8> splat (i8 15)
  %i.gw = add <8 x i8> %i.gp, splat (i8 -97)
  %i.gx = icmp ult <8 x i8> %i.gw, splat (i8 6)
  %i.gy = add <8 x i8> %i.gp, splat (i8 9)
  %predphi626 = select <8 x i1> %i.gx, <8 x i8> %i.gy, <8 x i8> %i.gv
  %predphi627 = select <8 x i1> %i.gr, <8 x i8> %predphi626, <8 x i8> %i.gp
  %i.gz = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.ha = getelementptr i8, ptr %i.dd, i64 7
  %i.hb = getelementptr i8, ptr %i.de, i64 11
  %i.hc = getelementptr i8, ptr %i.df, i64 15
  %i.hd = getelementptr i8, ptr %i.dg, i64 19
  %i.he = getelementptr i8, ptr %i.dh, i64 23
  %i.hf = getelementptr i8, ptr %i.di, i64 27
  %i.hg = getelementptr i8, ptr %i.dj, i64 31
  %i.hh = load i8, ptr %i.gz, align 1, !alias.scope !28
  %i.hi = load i8, ptr %i.ha, align 1, !alias.scope !28
  %i.hj = load i8, ptr %i.hb, align 1, !alias.scope !28
  %i.hk = load i8, ptr %i.hc, align 1, !alias.scope !28
  %i.hl = load i8, ptr %i.hd, align 1, !alias.scope !28
  %i.hm = load i8, ptr %i.he, align 1, !alias.scope !28
  %i.hn = load i8, ptr %i.hf, align 1, !alias.scope !28
  %i.ho = load i8, ptr %i.hg, align 1, !alias.scope !28
  %i.hp = insertelement <8 x i8> poison, i8 %i.hh, i64 0
  %i.hq = insertelement <8 x i8> %i.hp, i8 %i.hi, i64 1
  %i.hr = insertelement <8 x i8> %i.hq, i8 %i.hj, i64 2
  %i.hs = insertelement <8 x i8> %i.hr, i8 %i.hk, i64 3
  %i.ht = insertelement <8 x i8> %i.hs, i8 %i.hl, i64 4
  %i.hu = insertelement <8 x i8> %i.ht, i8 %i.hm, i64 5
  %i.hv = insertelement <8 x i8> %i.hu, i8 %i.hn, i64 6
  %i.hw = insertelement <8 x i8> %i.hv, i8 %i.ho, i64 7 ; 5 uses
  %i.hx = add <8 x i8> %i.hw, splat (i8 -48)      ; 2 uses
  %i.hy = icmp ugt <8 x i8> %i.hx, splat (i8 9)
  %i.hz = add <8 x i8> %i.hw, splat (i8 -65)
  %i.ia = icmp ult <8 x i8> %i.hz, splat (i8 6)
  %i.ib = add <8 x i8> %i.hw, splat (i8 -55)
  %i.ic = select <8 x i1> %i.ia, <8 x i8> %i.ib, <8 x i8> splat (i8 -1)
  %i.id = add <8 x i8> %i.hw, splat (i8 -97)
  %i.ie = icmp ult <8 x i8> %i.id, splat (i8 6)
  %i.if = add nsw <8 x i8> %i.hw, splat (i8 -87)
  %predphi628 = select <8 x i1> %i.ie, <8 x i8> %i.if, <8 x i8> %i.ic
  %predphi629 = select <8 x i1> %i.hy, <8 x i8> %predphi628, <8 x i8> %i.hx
  %i.ig = shl <8 x i8> %predphi627, splat (i8 4)
  %i.ih = add <8 x i8> %predphi629, %i.ig
  %i.ii = zext <8 x i8> %i.fr to <8 x i16>
  %i.ij = shl nuw <8 x i16> %i.ii, splat (i16 8)
  %i.ik = zext <8 x i8> %i.ih to <8 x i16>
  %i.il = or disjoint <8 x i16> %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index
  store <8 x i16> %i.il, ptr %i.im, align 2, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge404, label %.lr.ph403.preheader631

.lr.ph403.preheader631:                           ; preds = %vector.memcheck, %.lr.ph403.preheader, %middle.block
  %.0155401.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph403.preheader ], [ %n.vec, %middle.block ]
  %.0156400.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph403.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph403

._crit_edge404:                                   ; preds = %bb.at, %middle.block
  %i.io = mul nuw i64 %i.cs, 3
  %i.ip = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.io) #13
          to label %bb.au unwind label %bb.ax     ; 4 uses

.lr.ph403:                                        ; preds = %.lr.ph403.preheader631, %bb.at
  %.0155401 = phi i64 [ %i.ka, %bb.at ], [ %.0155401.ph, %.lr.ph403.preheader631 ] ; 2 uses
  %.0156400 = phi ptr [ %i.kb, %bb.at ], [ %.0156400.ph, %.lr.ph403.preheader631 ] ; 5 uses
  %i.iq = load i8, ptr %.0156400, align 1         ; 5 uses
  %i.ir = add i8 %i.iq, -48                       ; 2 uses
  %or.cond.i.i193 = icmp ult i8 %i.ir, 10
  br i1 %or.cond.i.i193, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph403
  %i.is = add i8 %i.iq, -97
  %or.cond5.i.i194 = icmp ult i8 %i.is, 6
  br i1 %or.cond5.i.i194, label %bb.ah, label %bb.ai

end_hunk_0
