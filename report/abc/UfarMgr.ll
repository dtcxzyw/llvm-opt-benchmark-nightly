Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarMgr?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4UFAR11UfarManagerD2Ev:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !322 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !323
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !320 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cz
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.cx) #40
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !134
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !257 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !258 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i13 = phi ptr [ %i.dr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.dm = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !91 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i12
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !101
  %i.dq = add i64 %i.dp, 1
  tail call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.dr, %i.dl
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i12, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i15 = load ptr, ptr %i.di, align 8, !tbaa !257
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ds = phi ptr [ %.pr.i15, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.dj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i16 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !259
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.n
  tail call void @_ZN4UFAR11UfarManager6ParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR11UfarManager6ParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !101
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !101
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !101
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !101
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !101
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !101
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !101
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEE(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.UFAR::Greyness", align 8    ; 14 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.29", align 8    ; 7 uses
  %5 = alloca %"class.std::vector.29", align 8    ; 10 uses
  %6 = alloca %class.LogT, align 8                ; 12 uses
  %7 = alloca %class.LogT, align 8                ; 5 uses
  %8 = alloca %"class.std::queue", align 8        ; 19 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 9 uses
  %10 = alloca %class.LogT, align 8               ; 11 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %12 = alloca %class.LogT, align 8               ; 11 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  store i32 0, ptr @_ZN4UFARL16s_nOrigCexChecksE, align 4, !tbaa !52
  store i32 0, ptr @_ZN4UFARL16s_nOrigBitBlastsE, align 4, !tbaa !52
  store i64 0, ptr @_ZN4UFARL19s_tOrigBitBlastUsecE, align 8, !tbaa !54
  store i64 0, ptr @_ZN4UFARL19s_tOrigCexCheckUsecE, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !324
  store i32 %i.f, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Wlc_NtkFree(ptr noundef nonnull %i.h) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !257  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !91 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !101
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.j, ptr %i.k, align 8, !tbaa !258
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 15 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 15 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %.not.i.i156 = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i156, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  store ptr %i.t, ptr %i.u, align 8, !tbaa !127
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !221
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store ptr %i.x, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !325
  %.not.i.i157 = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i157, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !325
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !318 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !319 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i158, label %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i160 = phi ptr [ %i.ar, %_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i ], [ %i.ae, %_ZNSt6vectorIcSaIcEE5clearEv.exit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 56
  tail call void @_ZN4UFAR8WNetlistD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #37
  %i.ai = load ptr, ptr %.05.i.i.i.i160, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i159
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !320 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ap
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.an) #40
  br label %_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i159
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 72 ; 2 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.i.i.i161, label %_ZSt8_DestroyIPN4UFAR8GreynessEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i159, !llvm.loop !11

_ZSt8_DestroyIPN4UFAR8GreynessEEvT_S3_.exit.i.i:  ; preds = %_ZSt8_DestroyIN4UFAR8GreynessEEvPT_.exit.i.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !319
  br label %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit

_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %_ZSt8_DestroyIPN4UFAR8GreynessEEvT_S3_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157
  tail call void @_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !157
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !158
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !159
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 7 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !160
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !157
  tail call void @_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !157
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 0, ptr %i.bf, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i162, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i164 = phi ptr [ %i.bq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i ], [ %i.bh, %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i164, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i165 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i165, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i163
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i164, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !134
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #40
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i163
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i164, i64 24 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.bq, %i.bj
  br i1 %.not.i.i.i.i166, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i163, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !135
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit:     ; preds = %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !157
  tail call void @_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !157
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !158
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !159
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 0, ptr %i.bx, align 8, !tbaa !160
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.by, i8 0, i64 76, i1 false)
  %i.bz = tail call ptr @Wlc_NtkDupDfsSimple(ptr noundef %1) #37 ; 4 uses
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !315
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !326
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.h, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEE:bb.a
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fs, ptr noundef nonnull align 8 dereferenceable(12) %i.dw, i64 12, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  call void @_ZN4UFAR8WNetlistC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull align 8 dereferenceable(8) %i.dx) #37
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fv = load i32, ptr %i.dy, align 8, !tbaa !331
  store i32 %i.fv, ptr %i.fu, align 8, !tbaa !331
  %i.fw = load ptr, ptr %i.af, align 8, !tbaa !319
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 72
  store ptr %i.fx, ptr %i.af, align 8, !tbaa !319
  br label %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE9push_backEOS1_.exit

bb.z:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.fq, ptr noundef nonnull align 8 dereferenceable(68) %3)
  br label %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.y, %bb.z
  call void @_ZN4UFAR8WNetlistD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #37
  %i.fy = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i180, label %_ZN4UFAR8GreynessD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE9push_backEOS1_.exit
  %i.fz = load ptr, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !320 ; 2 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 2 uses
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ge
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gc) #40
  br label %_ZN4UFAR8GreynessD2Ev.exit

_ZN4UFAR8GreynessD2Ev.exit:                       ; preds = %_ZNSt6vectorIN4UFAR8GreynessESaIS1_EE9push_backEOS1_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit.thread

_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit.thread: ; preds = %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i, %bb.q, %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit, %_ZN4UFAR8GreynessD2Ev.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val145 = load i32, ptr %i.cx, align 8, !tbaa !907
  %i.gg = sext i32 %.val145 to i64
  %i.gh = icmp slt i64 %indvars.iv.next, %i.gg
  br i1 %i.gh, label %bb.q, label %.critedge, !llvm.loop !888

.critedge:                                        ; preds = %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.gj = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 2                 ; 6 uses
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !221 ; 2 uses
  %i.gp = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !269 ; 2 uses
  %i.gq = load ptr, ptr %i.w, align 8, !tbaa !221 ; 2 uses
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = shl nsw i64 %i.gt, 3
  %i.gv = zext i32 %i.gp to i64
  %i.gw = add nsw i64 %i.gu, %i.gv                ; 2 uses
  %i.gx = icmp ult i64 %i.gn, %i.gw
  br i1 %i.gx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge
  %i.gy = sdiv i64 %i.gn, 64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gy
  %i.ha = and i64 %i.gn, -9223372036854775745
  %i.hb = icmp ugt i64 %i.ha, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.hb, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.gz, i64 %storemerge.idx.i.i.i.i
  %i.hc = trunc i64 %i.gn to i32
  %i.hd = and i32 %i.hc, 63
  store ptr %storemerge.i.i.i.i, ptr %i.y, align 8
  store i32 %i.hd, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.ac:                                            ; preds = %.critedge
  %i.he = sub nuw i64 %i.gn, %i.gw
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr %i.go, i32 %i.gp, i64 noundef %i.he, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !127
  %.pre402 = load ptr, ptr %i.s, align 8, !tbaa !87
  %.pre416 = ptrtoint ptr %.pre to i64
  %.pre417 = ptrtoint ptr %.pre402 to i64
  %.pre419 = sub i64 %.pre416, %.pre417
  %.pre421 = ashr exact i64 %.pre419, 2
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.ab, %bb.ac
  %.pre-phi422 = phi i64 [ %i.gn, %bb.ab ], [ %.pre421, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !101
  %i.hf = load ptr, ptr %i.ab, align 8, !tbaa !325 ; 3 uses
  %i.hg = load ptr, ptr %i.z, align 8, !tbaa !322 ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp ugt i64 %.pre-phi422, %i.hj
  br i1 %i.hk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.hl = sub nuw i64 %.pre-phi422, %i.hj
  call void @_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.hf, i64 noundef %i.hl, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.hm = icmp ult i64 %.pre-phi422, %i.hj
  br i1 %i.hm, label %bb.af, label %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit

bb.af:                                            ; preds = %bb.ae
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pre-phi422 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.hf, %i.hn
  br i1 %.not.i.i181, label %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.hn, ptr %i.ab, align 8, !tbaa !325
  br label %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit

_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit:            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  store i8 0, ptr %i.ho, align 8, !tbaa !314
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !332, !range !61, !noundef !62
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ah, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit
  %i.hs = load ptr, ptr %i.w, align 8, !tbaa !221 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8 ; 3 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %.not.i.i.i184 = icmp eq ptr %i.hs, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i184, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hs, i8 0, i64 %i.hv, i1 false)
  %.not27.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

bb.aj:                                            ; preds = %bb.ah
  %.not25.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split: ; preds = %bb.aj, %bb.ai
  %.sink = phi ptr [ %.sroa.0.0.copyload.i, %bb.ai ], [ %i.hs, %bb.aj ] ; 2 uses
  %i.hw = sub i32 64, %.sroa.2.0.copyload.i
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = lshr i64 -1, %i.hx
  %i.hz = xor i64 %i.hy, -1
  %i.ia = load i64, ptr %.sink, align 8, !tbaa !111
  %i.ib = and i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %.sink, align 8, !tbaa !111
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split, %bb.aj, %bb.ai, %_ZNSt6vectorIcSaIcEE6resizeEmRKc.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !333, !range !61, !noundef !62
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.ak, label %bb.bh

bb.ak:                                            ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !315 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 648
  %.val144 = load i32, ptr %i.ig, align 8, !tbaa !907 ; 5 uses
  store i32 %.val144, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ih = sext i32 %.val144 to i64                ; 6 uses
  %i.ii = icmp slt i32 %.val144, 0
  br i1 %i.ii, label %bb.al, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #39
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ak
  %.not.i.i.i.i186 = icmp eq i32 %.val144, 0
  br i1 %.not.i.i.i.i186, label %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190, label %bb.am

_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit191

bb.am:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ik = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #43 ; 4 uses
  store ptr %i.ik, ptr %4, align 8, !tbaa !322
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ih ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.im, ptr %i.in, align 8, !tbaa !323
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ik, i8 0, i64 %i.ih, i1 false)
  store ptr %i.im, ptr %i.il, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %14, align 8
  %i.io = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #43 ; 4 uses
  store ptr %i.io, ptr %5, align 8, !tbaa !322
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ih ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !323
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.io, i8 0, i64 %i.ih, i1 false)
  %.pre403 = load ptr, ptr %i.g, align 8, !tbaa !315
  %i.is = ptrtoint ptr %i.im to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit191

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit191:         ; preds = %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190, %bb.am
  %i.it = phi i64 [ 0, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %i.is, %bb.am ]
  %i.iu = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %i.io, %bb.am ] ; 4 uses
  %i.iv = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %i.ik, %bb.am ] ; 4 uses
  %i.iw = phi ptr [ %i.if, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %.pre403, %bb.am ] ; 3 uses
  %i.ix = phi ptr [ %i.ij, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %i.ip, %bb.am ]
  %i.iy = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i190 ], [ %i.iq, %bb.am ] ; 2 uses
  store ptr %i.iy, ptr %i.ix, align 8, !tbaa !325
  %i.iz = getelementptr i8, ptr %i.iw, i64 36
  %.val141 = load i32, ptr %i.iz, align 4, !tbaa !129
  %i.ja = icmp eq i32 %.val141, 1
  br i1 %i.ja, label %bb.an, label %bb.au

bb.an:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit191
  %i.jb = getelementptr i8, ptr %i.iw, i64 40
  %.val138 = load ptr, ptr %i.jb, align 8, !tbaa !131
  %i.jc = getelementptr i8, ptr %i.iw, i64 640
  %.val139 = load ptr, ptr %i.jc, align 8, !tbaa !153 ; 2 uses
  %i.jd = load i32, ptr %.val138, align 4, !tbaa !52
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [24 x i8], ptr %.val139, i64 %i.je ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !212
  %i.ji = icmp ugt i32 %i.jh, 2
  br i1 %i.ji, label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jj = load i16, ptr %i.jf, align 8
  %i.jk = and i16 %i.jj, 63
  switch i16 %i.jk, label %bb.ap [
    i16 6, label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i
    i16 22, label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i
  ]

_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i: ; preds = %bb.ao, %bb.ao, %bb.an
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !101
  br label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  br label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit

_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit:           ; preds = %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i, %bb.ap
  %i.jo = phi ptr [ %i.jm, %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i ], [ %i.jn, %bb.ap ]
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !52 ; 2 uses
  %or.cond128 = icmp ult i32 %i.jp, %.val144
  br i1 %or.cond128, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %.val139, i64 %i.jq ; 6 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %.val148 = load i32, ptr %i.js, align 4, !tbaa !212 ; 2 uses
  %i.jt = icmp sgt i32 %.val148, 1
  br i1 %i.jt, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not327 = icmp eq i32 %.val148, 2
  br i1 %.not327, label %bb.as, label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread326

_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread326: ; preds = %bb.ar
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !101
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !52
  br label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194

bb.as:                                            ; preds = %bb.ar
  %i.jx = load i16, ptr %i.jr, align 8
  %i.jy = and i16 %i.jx, 63                       ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  switch i16 %i.jy, label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread [
    i16 6, label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193
    i16 22, label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193
  ]

_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193:        ; preds = %bb.as, %bb.as
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !101
  br label %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread

_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread: ; preds = %bb.as, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193
  %.in = phi ptr [ %i.ka, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193 ], [ %i.jz, %bb.as ]
  %i.kb = load i32, ptr %.in, align 4, !tbaa !52  ; 3 uses
  switch i16 %i.jy, label %bb.at [
    i16 6, label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194
    i16 22, label %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194
  ]

_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194: ; preds = %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread326, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread
  %i.kc = phi i32 [ %i.kb, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread ], [ %i.kb, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread ], [ %i.jw, %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread326 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !101
  br label %_ZL15Wlc_ObjFaninId1P10Wlc_Obj_t_.exit

bb.at:                                            ; preds = %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit193.thread
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  br label %_ZL15Wlc_ObjFaninId1P10Wlc_Obj_t_.exit

_ZL15Wlc_ObjFaninId1P10Wlc_Obj_t_.exit:           ; preds = %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194, %bb.at
  %i.kg = phi i32 [ %i.kc, %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194 ], [ %i.kb, %bb.at ]
  %i.kh = phi ptr [ %i.ke, %_ZL15Wlc_ObjHasArrayP10Wlc_Obj_t_.exit.thread.i.i194 ], [ %i.kf, %bb.at ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !52
  call fastcc void @"_ZZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEENK3$_0clEiRSt6vectorIcSaIcEE"(ptr nonnull %i.b, ptr nonnull %0, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @"_ZZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEENK3$_0clEiRSt6vectorIcSaIcEE"(ptr nonnull %i.b, ptr nonnull %0, i32 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %5)
  store i8 1, ptr %i.ho, align 8, !tbaa !314
  br label %bb.au

bb.au:                                            ; preds = %_ZL15Wlc_ObjFaninId0P10Wlc_Obj_t_.exit, %_ZL15Wlc_ObjFaninId1P10Wlc_Obj_t_.exit, %bb.aq, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit191
  %i.kk = load i8, ptr %i.ho, align 8, !tbaa !314, !range !61, !noundef !62
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %.preheader333, label %bb.bc

.preheader333:                                    ; preds = %bb.au
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.kn = load ptr, ptr %i.s, align 8, !tbaa !87  ; 2 uses
  %.not382 = icmp eq ptr %i.km, %i.kn
  br i1 %.not382, label %._crit_edge, label %.lr.ph345

._crit_edge:                                      ; preds = %bb.ba, %.preheader333
  %.0318.lcssa = phi i32 [ 0, %.preheader333 ], [ %.1319, %bb.ba ]
  %.0316.lcssa = phi i32 [ 0, %.preheader333 ], [ %.1317, %bb.ba ]
  %.0314.lcssa = phi i32 [ 0, %.preheader333 ], [ %.1315, %bb.ba ]
  %.0313.lcssa = phi i32 [ 0, %.preheader333 ], [ %.1, %bb.ba ]
  %i.ko = load i32, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !52
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.be, label %bb.bb

.lr.ph345:                                        ; preds = %.preheader333, %bb.ba
  %i.kq = phi ptr [ %i.lk, %bb.ba ], [ %i.kn, %.preheader333 ]
  %.0104344 = phi i64 [ %i.li, %bb.ba ], [ 0, %.preheader333 ] ; 3 uses
  %.0313343 = phi i32 [ %.1, %bb.ba ], [ 0, %.preheader333 ] ; 4 uses
  %.0314342 = phi i32 [ %.1315, %bb.ba ], [ 0, %.preheader333 ] ; 4 uses
  %.0316341 = phi i32 [ %.1317, %bb.ba ], [ 0, %.preheader333 ] ; 4 uses
  %.0318340 = phi i32 [ %.1319, %bb.ba ], [ 0, %.preheader333 ] ; 4 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %.0104344
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !52
  %i.kt = sext i32 %i.ks to i64                   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !101
  %.not124 = icmp ne i8 %i.kv, 0                  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.kt
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !101
  %.not125 = icmp eq i8 %i.kx, 0                  ; 3 uses
  %i.ky = select i1 %.not125, i8 1, i8 3
  %i.kz = select i1 %.not125, i8 0, i8 2
  %i.la = select i1 %.not124, i8 %i.ky, i8 %i.kz  ; 2 uses
  %i.lb = load ptr, ptr %i.z, align 8, !tbaa !322
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.0104344
  store i8 %i.la, ptr %i.lc, align 1, !tbaa !101
  %i.ld = select i1 %.not124, i1 %.not125, i1 false
  br i1 %i.ld, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph345
  %i.le = add nsw i32 %.0318340, 1
  br label %bb.ba

bb.aw:                                            ; preds = %.lr.ph345
  switch i8 %i.la, label %bb.az [
    i8 2, label %bb.ax
    i8 3, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.lf = add nsw i32 %.0316341, 1
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.lg = add nsw i32 %.0314342, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.lh = add nsw i32 %.0313343, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az, %bb.ay, %bb.av
  %.1319 = phi i32 [ %i.le, %bb.av ], [ %.0318340, %bb.az ], [ %.0318340, %bb.ax ], [ %.0318340, %bb.ay ] ; 2 uses
  %.1317 = phi i32 [ %.0316341, %bb.av ], [ %.0316341, %bb.az ], [ %i.lf, %bb.ax ], [ %.0316341, %bb.ay ] ; 2 uses
  %.1315 = phi i32 [ %.0314342, %bb.av ], [ %.0314342, %bb.az ], [ %.0314342, %bb.ax ], [ %i.lg, %bb.ay ] ; 2 uses
  %.1 = phi i32 [ %.0313343, %bb.av ], [ %i.lh, %bb.az ], [ %.0313343, %bb.ax ], [ %.0313343, %bb.ay ] ; 2 uses
  %i.li = add nuw i64 %.0104344, 1                ; 2 uses
  %i.lj = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.lk = load ptr, ptr %i.s, align 8, !tbaa !87  ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = ashr exact i64 %i.ln, 2
  %i.lp = icmp ult i64 %i.li, %i.lo
  br i1 %i.lp, label %.lr.ph345, label %._crit_edge, !llvm.loop !889
end_hunk_1
