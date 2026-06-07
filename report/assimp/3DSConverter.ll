inline.NumInlined: 961
inline.NumDeleted: 441
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter22ReplaceDefaultMaterialEv:bb.a
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 696               ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.bw
  br i1 %i.cf, label %bb.b, label %._crit_edge77, !llvm.loop !3

._crit_edge93:                                    ; preds = %._crit_edge86
  %i.cg = icmp eq i32 %.1.lcssa, 0
  br i1 %i.cg, label %._crit_edge93.thread, label %bb.q

.lr.ph92:                                         ; preds = %._crit_edge77.thread, %._crit_edge86
  %i.ch = phi ptr [ %i.cm, %._crit_edge86 ], [ %i.k, %._crit_edge77.thread ]
  %.090 = phi i32 [ %.1.lcssa, %._crit_edge86 ], [ 0, %._crit_edge77.thread ] ; 2 uses
  %.sroa.054.089 = phi ptr [ %i.cn, %._crit_edge86 ], [ %i.n, %._crit_edge77.thread ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 136 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not6481 = icmp eq ptr %i.cj, %i.cl
  br i1 %.not6481, label %._crit_edge86, label %.lr.ph85

._crit_edge86.loopexit:                           ; preds = %bb.p
  %.pre = load ptr, ptr %i.b, align 8
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.lr.ph92
  %i.cm = phi ptr [ %i.ch, %.lr.ph92 ], [ %.pre, %._crit_edge86.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.090, %.lr.ph92 ], [ %.2, %._crit_edge86.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 216 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %.not63 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not63, label %._crit_edge93, label %.lr.ph92, !llvm.loop !5

.lr.ph85:                                         ; preds = %.lr.ph92, %bb.p
  %.183 = phi i32 [ %.2, %bb.p ], [ %.090, %.lr.ph92 ] ; 3 uses
  %.sroa.047.082 = phi ptr [ %i.de, %bb.p ], [ %i.cj, %.lr.ph92 ] ; 4 uses
  %i.cq = load i32, ptr %.sroa.047.082, align 4   ; 2 uses
  %i.cr = icmp eq i32 %i.cq, -842150451
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph85
  store i32 %i.l, ptr %.sroa.047.082, align 4
  %i.cs = add i32 %.183, 1
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph85
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.cu, align 8
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 696
  %.not34 = icmp ugt i64 %i.db, %i.ct
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.l, ptr %.sroa.047.082, align 4
  %i.dc = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull @.str.1)
  %i.dd = add i32 %.183, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.2 = phi i32 [ %i.cs, %bb.m ], [ %i.dd, %bb.o ], [ %.183, %bb.n ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.047.082, i64 4 ; 2 uses
  %i.df = load ptr, ptr %i.ck, align 8
  %.not64 = icmp eq ptr %i.de, %i.df
  br i1 %.not64, label %._crit_edge86.loopexit, label %.lr.ph85, !llvm.loop !6

bb.q:                                             ; preds = %._crit_edge93
  %i.dg = zext i32 %i.l to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load ptr, ptr %i.cm, align 8
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 696
  %i.do = icmp eq i64 %i.dn, %i.dg
  br i1 %i.do, label %._crit_edge.i.i35, label %._crit_edge93.thread

._crit_edge.i.i35:                                ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.dp, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dp, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.dr, align 2
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %._crit_edge.i.i35
  %i.ds = load ptr, ptr %3, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dp
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.du = load i64, ptr %i.dp, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x float> splat (float 3.000000e-01), ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 3.000000e-01, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not.i = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %i.ea, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %.noexc40 unwind label %bb.x

.noexc40:                                         ; preds = %bb.s
  %i.ed = load ptr, ptr %i.dz, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 696
  store ptr %i.ee, ptr %i.dz, align 8
  br label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  invoke void @_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr %i.ea, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit unwind label %bb.x

_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc40, %bb.t
  %i.ef = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ef, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %._crit_edge93.thread

bb.w:                                             ; preds = %._crit_edge.i.i35
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %3, align 8               ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dp
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.w
  %i.ej = load i64, ptr %i.dp, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.u, %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %2) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn32 = phi { ptr, i32 } [ %i.el, %bb.x ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn32

._crit_edge93.thread:                             ; preds = %._crit_edge77.thread, %bb.v, %bb.q, %._crit_edge93
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4D3DS8MaterialE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x float> <float 6.000000e-01, float 6.000000e-01, float 6.000000e-01, float 0.000000e+00>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 1.000000e+00, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i32 2, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float 1.000000e+00, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.aa, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ae, align 8
  store i8 0, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ah, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.al, align 8
  store i8 0, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.ao, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.an, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.av, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 0, ptr %i.bc, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bb, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.bg, align 8
  store i8 0, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 0, ptr %i.bj, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i32 0, ptr %i.bq, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bp, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.bk, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 600
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store ptr %i.bu, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 0, ptr %i.bv, align 8
  store i8 0, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 0, ptr %i.by, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bx, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 0, ptr %i.bz, align 8
  ret void
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4D3DS8MaterialE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6Assimp4D3DS7TextureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit

_ZN6Assimp4D3DS7TextureD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp4D3DS7TextureD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit3

_ZN6Assimp4D3DS7TextureD2Ev.exit3:                ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN6Assimp4D3DS7TextureD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit6

_ZN6Assimp4D3DS7TextureD2Ev.exit6:                ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6Assimp4D3DS7TextureD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit9

_ZN6Assimp4D3DS7TextureD2Ev.exit9:                ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6Assimp4D3DS7TextureD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit12

_ZN6Assimp4D3DS7TextureD2Ev.exit12:               ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN6Assimp4D3DS7TextureD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit15

_ZN6Assimp4D3DS7TextureD2Ev.exit15:               ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN6Assimp4D3DS7TextureD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit18

_ZN6Assimp4D3DS7TextureD2Ev.exit18:               ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN6Assimp4D3DS7TextureD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit18
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZN6Assimp4D3DS7TextureD2Ev.exit21

_ZN6Assimp4D3DS7TextureD2Ev.exit21:               ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit21
  %i.ba = load i64, ptr %i.ay, align 8
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp4D3DS7TextureD2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter12CheckIndicesERNS_4D3DS4MeshE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not1921 = icmp eq ptr %i.b, %i.d
  br i1 %.not1921, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.p
  %.sroa.013.022 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.dk, %bb.p ] ; 6 uses
  %i.h = load i32, ptr %.sroa.013.022, align 4    ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12
  %.not = icmp ugt i64 %i.o, %i.i
  br i1 %.not, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader
  %i.p = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull @.str.4)
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = load ptr, ptr %1, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 12
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %.sroa.013.022, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.y = phi i32 [ %i.x, %bb.b ], [ %i.h, %.preheader ]
  %i.z = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i32 %i.y to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 12
  %.not12 = icmp ugt i64 %i.ag, %i.ac
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull @.str.5)
  %i.ai = load ptr, ptr %i.g, align 8
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 12
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %.sroa.013.022, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = zext i32 %i.ar to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter13ConvertMeshesEP7aiScene:bb.a
  %i.lj = icmp ugt i64 %i.li, %i.lc
  br i1 %i.lj, label %bb.af, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.an, %bb.ae, %bb.q
  %i.lk = phi ptr [ %i.dx, %bb.q ], [ %i.fi, %bb.ae ], [ %i.fi, %bb.an ] ; 2 uses
  %i.ll = phi ptr [ %i.dy, %bb.q ], [ %i.fj, %bb.ae ], [ %i.fi, %bb.an ]
  %i.lm = phi ptr [ %i.dz, %bb.q ], [ %i.fj, %bb.ae ], [ %i.fi, %bb.an ]
  %.sroa.19.3 = phi ptr [ %.sroa.19.1198, %bb.q ], [ %.sroa.19.10, %bb.ae ], [ %.sroa.19.10, %bb.an ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1199, %bb.q ], [ %.sroa.12.4, %bb.ae ], [ %.sroa.12.4, %bb.an ] ; 2 uses
  %.sroa.0120.3 = phi ptr [ %.sroa.0120.1200, %bb.q ], [ %.sroa.0120.10, %bb.ae ], [ %.sroa.0120.10, %bb.an ] ; 2 uses
  %.252 = phi i32 [ %.151202, %bb.q ], [ %i.hb, %bb.ae ], [ %i.hb, %bb.an ] ; 2 uses
  %i.ln = add i32 %.056201, 1                     ; 2 uses
  %i.lo = zext i32 %i.ln to i64                   ; 2 uses
  %i.lp = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lp, align 8
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = sdiv exact i64 %i.lv, 696
  %i.lx = icmp ugt i64 %i.lw, %i.lo
  br i1 %i.lx, label %bb.q, label %._crit_edge, !llvm.loop !19

bb.ao:                                            ; preds = %.loopexit145, %.loopexit.split-lp, %.loopexit146, %.loopexit.split-lp147, %bb.ah
  %.sroa.19.5 = phi ptr [ %.sroa.19.10, %bb.ah ], [ %.sroa.19.0209, %.loopexit.split-lp147 ], [ %.sroa.19.0209, %.loopexit146 ], [ %.sroa.19.2.ph, %.loopexit145 ], [ %.sroa.12.1199, %.loopexit.split-lp ]
  %.sroa.0120.5 = phi ptr [ %.sroa.0120.10, %bb.ah ], [ %.sroa.0120.0211, %.loopexit.split-lp147 ], [ %.sroa.0120.0211, %.loopexit146 ], [ %.sroa.0120.2.ph, %.loopexit145 ], [ %.sroa.0120.1200, %.loopexit.split-lp ]
  %.pn68 = phi { ptr, i32 } [ %i.jd, %bb.ah ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit, %.loopexit145 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.i
  %.sroa.19.6 = phi ptr [ %.sroa.19.5, %bb.ao ], [ %.sroa.19.0209, %bb.i ]
  %.sroa.0120.6 = phi ptr [ %.sroa.0120.5, %bb.ao ], [ %.sroa.0120.0211, %bb.i ]
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68, %bb.ao ], [ %i.ca, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ax

bb.aq:                                            ; preds = %._crit_edge215
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.z, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ly, align 8
  %.not226 = icmp eq i32 %i.x, 0
  br i1 %.not226, label %._crit_edge223, label %.lr.ph222

._crit_edge223:                                   ; preds = %.lr.ph222, %bb.aq
  br i1 %.050.lcssa, label %bb.as, label %bb.av

bb.ar:                                            ; preds = %bb.at, %._crit_edge215
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph222:                                        ; preds = %bb.aq, %.lr.ph222
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph222 ], [ 0, %bb.aq ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.0.lcssa, i64 %indvars.iv
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = load ptr, ptr %i.ly, align 8
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv
  store ptr %i.mb, ptr %i.md, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.me = load i32, ptr %i.y, align 8
  %i.mf = zext i32 %i.me to i64
  %i.mg = icmp samesign ult i64 %indvars.iv.next, %i.mf
  br i1 %i.mg, label %.lr.ph222, label %._crit_edge223, !llvm.loop !20

bb.as:                                            ; preds = %._crit_edge223
  %i.mh = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mh, ptr noundef nonnull @.str.24)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.mh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.az unwind label %bb.ar

bb.au:                                            ; preds = %bb.as
  %i.mi = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.mh) #24
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge223
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i84 = icmp eq ptr %.sroa.0120.0.lcssa, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mj = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.mk = sub i64 %i.mj, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0.lcssa, i64 noundef %i.mk) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.av, %bb.aw
  ret void

bb.ax:                                            ; preds = %bb.ap, %bb.ar, %bb.au
  %.sroa.19.7 = phi ptr [ %.sroa.19.6, %bb.ap ], [ %.sroa.19.0.lcssa, %bb.ar ], [ %.sroa.19.0.lcssa, %bb.au ]
  %.sroa.0120.7 = phi ptr [ %.sroa.0120.6, %bb.ap ], [ %.sroa.0120.0.lcssa, %bb.ar ], [ %.sroa.0120.0.lcssa, %bb.au ] ; 3 uses
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.ap ], [ %i.lz, %bb.ar ], [ %i.mi, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i85 = icmp eq ptr %.sroa.0120.7, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ml = ptrtoint ptr %.sroa.19.7 to i64
  %i.mm = ptrtoint ptr %.sroa.0120.7 to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.7, i64 noundef %i.mn) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86:         ; preds = %bb.ax, %bb.ay
  resume { ptr, i32 } %.pn68.pn.pn.pn

bb.az:                                            ; preds = %bb.at
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = mul i64 %i.c, 24                      ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c, %.preheader.i
  %i.n = icmp eq ptr %i.g, %i.a
  br i1 %i.n, label %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.b
  %i.o = add i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.o) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #24
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree nonnull readnone align 4 captures(none) %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i:
  %5 = alloca %class.aiMatrix4x4t, align 4        ; 17 uses
  %i.a = alloca [12 x i8], align 1                ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not441 = icmp eq i32 %i.e, 0
  br i1 %.not441, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.i = icmp eq ptr %.sroa.0349.1, %.sroa.16359.1
  br i1 %i.i, label %._crit_edge.thread, label %bb.g

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.0349.0399 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0349.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %.sroa.16359.0398 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.16359.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %.sroa.26.0397 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.26.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.h, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.p)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.not.i = icmp eq ptr %.sroa.16359.0398, %.sroa.26.0397
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = trunc nuw i64 %indvars.iv to i32
  store i32 %i.x, ptr %.sroa.16359.0398, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.16359.0398, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.z = ptrtoint ptr %.sroa.16359.0398 to i64
  %i.aa = ptrtoint ptr %.sroa.0349.0399 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
          to label %.noexc254 unwind label %.loopexit.split-lp

.noexc254:                                        ; preds = %bb.e
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc255 unwind label %.loopexit386 ; 4 uses

.noexc255:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc255
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %.sroa.0349.0399, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc255
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0399, i64 noundef %i.ab) #26
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit386:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.26.1 = phi ptr [ %.sroa.26.0397, %bb.c ], [ %.sroa.26.0397, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.26.0397, %bb.a ] ; 4 uses
  %.sroa.16359.1 = phi ptr [ %i.y, %bb.c ], [ %.sroa.16359.0398, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.16359.0398, %bb.a ] ; 3 uses
  %.sroa.0349.1 = phi ptr [ %.sroa.0349.0399, %bb.c ], [ %.sroa.0349.0399, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0349.0399, %bb.a ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.d, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.a, label %._crit_edge, !llvm.loop !21

bb.g:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i32, ptr %.sroa.0349.1, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 64, i1 false)
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 156
  %.sroa.8335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 160 ; 2 uses
  %.sroa.8335.0.copyload = load float, ptr %.sroa.8335.0..sroa_idx, align 8
  %.sroa.11337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 164
  %.sroa.14339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 168 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 172
  %.sroa.18341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 176 ; 2 uses
  %.sroa.18341.0.copyload = load float, ptr %.sroa.18341.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 184 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 192 ; 2 uses
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 196
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 204
  %i.bb = load <2 x float>, ptr %i.ba, align 8
  %i.bc = load <2 x float>, ptr %.sroa.14339.0..sroa_idx, align 8
  %i.bd = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 8
  %i.be = load <2 x float>, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %.sroa.38.0.copyload = load float, ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 212
  %i.bf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.bh = load <2 x float>, ptr %i.bg, align 8    ; 3 uses
  %.sroa.8330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 240
  %.sroa.8330.0.copyload = load float, ptr %.sroa.8330.0..sroa_idx, align 8 ; 2 uses
  %i.bi = ptrtoint ptr %.sroa.16359.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0349.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 2                 ; 3 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bo = icmp ugt i64 %i.bl, 4611686018427387903
  %i.bp = select i1 %i.bo, i64 -1, i64 %i.bk
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28
          to label %.lr.ph421 unwind label %bb.j

.lr.ph421:                                        ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSImporter17GenerateNodeGraphEP7aiScene:bb.a
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = icmp eq i8 %i.hg, 36
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.p, %._crit_edge
  store i32 9, ptr %i.gp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.gq, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 13
  store i8 0, ptr %i.hi, align 1
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.p, %bb.o
  ret void

bb.r:                                             ; preds = %bb.e, %bb.h, %bb.k, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.c ], [ %i.ev, %bb.k ], [ %i.dr, %bb.h ], [ %i.ce, %bb.e ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter12ConvertSceneEP7aiScene(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(168) %0, ptr nofree noundef captures(none) initializes((32, 36), (40, 48)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 696                 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = shl nsw i64 %i.i, 3
  %i.m = and i64 %i.l, 34359738360
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @_ZN6Assimp19Discreet3DSImporter13ConvertMeshesEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.y, ptr %i.z, align 8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge._crit_edge, label %bb.d

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [696 x i8], ptr %i.ac, i64 %indvars.iv
  tail call void @_ZN6Assimp19Discreet3DSImporter15ConvertMaterialERNS_4D3DS8MaterialER10aiMaterial(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(689) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store ptr %i.aa, ptr %i.af, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.k, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !48

bb.c:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 16) #26
  resume { ptr, i32 } %i.aj

bb.d:                                             ; preds = %._crit_edge
  %i.ak = and i64 %i.w, 34359738360               ; 2 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ap, i64 %i.ak, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge._crit_edge, %bb.d
  %i.aq = phi ptr [ %.pre, %._crit_edge._crit_edge ], [ %i.an, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.az, ptr %i.ba, align 8
  %.not28 = icmp eq i32 %i.az, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = and i64 %i.ax, 34359738360              ; 2 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #28 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bg, i64 %i.bb, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialD0Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 696) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #24
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !58
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !58
  store i8 0, ptr %i.a, align 8, !alias.scope !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !58 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !58 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !58 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !58 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(689) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
  unreachable

_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 696                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 13251971317320080)
  %i.l = select i1 %i.j, i64 13251971317320080, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 696                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %i.q, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #24 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i) #24, !inline_history !60
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 696 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 696, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ac, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 696 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 696 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #24 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 696
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i.i.i34, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i34) #24, !inline_history !60
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ai, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43 ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i, align 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i) #24, !inline_history !62
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 696 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw [696 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %i.av) #24 ; 0 uses
  br label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ax = extractvalue { ptr, i32 } %i.z, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #24 ; 0 uses
  %i.az = load ptr, ptr %i.q, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %i.q) #24, !inline_history !63
  br label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.bb = extractvalue { ptr, i32 } %i.aj, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #24 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.bf, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 4 uses
  %i.bd = load ptr, ptr %.05.i.i47, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i47) #24, !inline_history !62
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 696
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !61

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bg

bb.o:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #29
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull align 8 dereferenceable(689) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4D3DS8MaterialE, i64 16), ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 %i.o, ptr %i.i, align 8
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %i.j, align 8
  %i.r = load i64, ptr %i.i, align 8
  store i64 %i.r, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.l, %bb.a ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.m, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.u = load i64, ptr %i.i, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load float, ptr %i.z, align 8
  store float %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load float, ptr %i.ac, align 4
  store float %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load float, ptr %i.af, align 8
  store float %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.am = load float, ptr %i.al, align 4
  store float %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load float, ptr %i.ao, align 8
  store float %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.as = load float, ptr %i.ar, align 4
  store float %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load float, ptr %i.au, align 8
  store float %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load float, ptr %i.ax, align 4
  store float %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bb = load float, ptr %i.ba, align 8
  store float %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.be = load i64, ptr %i.bd, align 4
  store i64 %i.be, ptr %i.bc, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load float, ptr %i.bg, align 8
  store float %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bn = load i64, ptr %i.bm, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.bn, ptr %i.h, align 8
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.ab    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bp, ptr %i.bi, align 8
  %i.bq = load i64, ptr %i.h, align 8
  store i64 %i.bq, ptr %i.bk, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.br = phi ptr [ %i.bp, %.noexc ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.bn, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = load i8, ptr %i.bl, align 1
  store i8 %i.bs, ptr %i.br, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.bt = load i64, ptr %i.h, align 8             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bi, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cb = load float, ptr %i.ca, align 8
  store float %i.cb, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  store ptr %i.ce, ptr %i.cc, align 8
  %i.cf = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ch = load i64, ptr %i.cg, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.ch, ptr %i.g, align 8
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i.i34, label %._crit_edge.i.i.i33

.noexc.i.i34:                                     ; preds = %bb.f
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc35 unwind label %bb.ac  ; 2 uses

.noexc35:                                         ; preds = %.noexc.i.i34
  store ptr %i.cj, ptr %i.cc, align 8
  %i.ck = load i64, ptr %i.g, align 8
  store i64 %i.ck, ptr %i.ce, align 8
  br label %._crit_edge.i.i.i33

._crit_edge.i.i.i33:                              ; preds = %.noexc35, %bb.f
  %i.cl = phi ptr [ %i.cj, %.noexc35 ], [ %i.ce, %bb.f ] ; 2 uses
  switch i64 %i.ch, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i33
  %i.cm = load i8, ptr %i.cf, align 1
  store i8 %i.cm, ptr %i.cl, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i33
  %i.cn = load i64, ptr %i.g, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.cn, ptr %i.co, align 8
  %i.cp = load ptr, ptr %i.cc, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 0, ptr %i.cq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cv = load float, ptr %i.cu, align 8
  store float %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
end_hunk_2
