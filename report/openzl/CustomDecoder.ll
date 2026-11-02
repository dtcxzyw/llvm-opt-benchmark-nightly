Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CustomDecoder?download=true
inline.NumInlined: 309
inline.NumDeleted: 216
begin_hunk_0_@_ZN6openzl13CustomDecoder21registerCustomDecoderERNS_4DCtxESt10shared_ptrIKS0_E:bb.a
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !354
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  invoke void @_ZN6openzl13typesToCTypesENS_4poly4impl4spanIKNS_4TypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %4, ptr %i.m, i64 %i.s)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !354
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  invoke void @_ZN6openzl13typesToCTypesENS_4poly4impl4spanIKNS_4TypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %5, ptr %i.u, i64 %i.aa)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %2, align 8, !tbaa !363
  %i.ac = load ptr, ptr %3, align 8, !tbaa !77
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !354
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !364, !range !78, !noundef !65
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = load ptr, ptr %4, align 8, !tbaa !77
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !354
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = load ptr, ptr %5, align 8, !tbaa !77
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !354
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 %i.ab, ptr %6, align 8, !tbaa !79
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ac, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !365
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.al, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !79
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.am, ptr %.sroa.82.0..sroa_idx, align 8, !tbaa !35
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.as, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !365
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.at, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !35
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.az, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !365
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr @_ZN6openzlL8decodeFnEP12ZL_Decoder_sPPK10ZL_Input_smS5_m, ptr %i.ba, align 8, !tbaa !370
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !82, !range !78, !noundef !65
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load ptr, ptr %i.bc, align 8
  %spec.select = select i1 %i.bf, ptr %i.bg, ptr null
  store ptr %spec.select, ptr %i.bb, align 8, !tbaa !371
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bj = load ptr, ptr %1, align 8, !tbaa !123   ; 3 uses
  store ptr %i.bj, ptr %7, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !83
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !83
  store ptr null, ptr %1, align 8, !tbaa !123
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !373, !alias.scope !372
  %i.bn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %_ZNSt12__shared_ptrIKN6openzl13CustomDecoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.p ; 3 uses

_ZNSt12__shared_ptrIKN6openzl13CustomDecoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.bj, ptr %i.bn, align 8, !tbaa !123, !noalias !372
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !83, !noalias !372
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !83, !noalias !372
  store ptr null, ptr %7, align 8, !tbaa !123, !noalias !372
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !374, !alias.scope !372
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @_ZZN6openzl15moveToOpaquePtrINS_13CustomDecoderEEE12ZL_OpaquePtrSt10shared_ptrIKT_EENUlPvS7_E_8__invokeES7_S7_, ptr %i.bq, align 8, !tbaa !375, !alias.scope !372
  invoke void @_ZN6openzl4DCtx21registerCustomDecoderERK16ZL_MIDecoderDesc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIKN6openzl13CustomDecoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.br = load ptr, ptr %5, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !84
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit:           ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bx = load ptr, ptr %4, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit24, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit24

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit24:         ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cd = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit26, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit24
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit26

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit26:         ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit24, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit26
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i:   ; preds = %bb.i, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit26
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !85
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i:  ; preds = %bb.j, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i:  ; preds = %bb.k, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i
  %i.db = load i8, ptr %i.bd, align 8, !tbaa !82, !range !78, !noundef !65
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i
  store i8 0, ptr %i.bd, align 8, !tbaa !82
  %i.dd = load ptr, ptr %i.bc, align 8, !tbaa !88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !89
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #22
  br label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit

_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit:  ; preds = %bb.l, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.m:                                             ; preds = %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32

bb.n:                                             ; preds = %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30

bb.o:                                             ; preds = %bb.c
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28

bb.p:                                             ; preds = %bb.d
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN6openzl13CustomDecoderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #23
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIKN6openzl13CustomDecoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.q ], [ %i.dl, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dn = load ptr, ptr %5, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !84
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28:         ; preds = %bb.s, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dt = load ptr, ptr %4, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !84
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30:         ; preds = %bb.t, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.n ], [ %.pn.pn, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit28 ], [ %.pn.pn, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dz = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !84
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32:         ; preds = %bb.u, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.m ], [ %.pn.pn.pn, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit30 ], [ %.pn.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN6openzl26MultiInputCodecDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6openzl13typesToCTypesENS_4poly4impl4spanIKNS_4TypeELm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %._crit_edge, label %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %2, 2                    ; 2 uses
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
          to label %.lr.ph unwind label %.loopexit.split-lp ; 5 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !77
  store ptr %i.d, ptr %i.e, align 8, !tbaa !376
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 6 uses
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.af, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 9 uses
  %i.l = load i32, ptr %.025, align 4, !tbaa !378 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.i, align 4, !tbaa !380
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !376
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775804
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951)
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i32 %i.l, ptr %i.y, align 4, !tbaa !380
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.h, %.noexc14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !376
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.e
end_hunk_0
begin_hunk_1_@_ZN6openzlL8decodeFnEP12ZL_Decoder_sPPK10ZL_Input_smS5_m:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i
  %.05.i.i.i3.i = phi ptr [ %i.af, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i ], [ %i.x, %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i4.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i2.i
  %i.ac = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i5.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ac(ptr noundef nonnull %i.ab)
          to label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i2.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i.i7.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i8.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i8.i: ; preds = %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6.i
  %.pr.i9.i = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10.i

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10.i: ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i8.i, %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit.i
  %i.ag = phi ptr [ %.pr.i9.i, %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i8.i ], [ %i.x, %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i11.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i11.i, label %_ZN6openzl12DecoderStateD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10.i
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #22
  br label %_ZN6openzl12DecoderStateD2Ev.exit

_ZN6openzl12DecoderStateD2Ev.exit:                ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.o

bb.n:                                             ; preds = %bb.c, %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6openzl12DecoderStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.am, %bb.m ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 0         ; 2 uses
  %.039 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6openzl9ExceptionE) #23
  %i.ap = icmp eq i32 %.039, %i.ao
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = call ptr @__cxa_begin_catch(ptr %.0) #23
  %i.ar = call { i32, ptr } @_ZNK6openzl9Exception7toErrorI12ZL_Decoder_sEE10ZL_Error_sPT_NS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.aq, ptr noundef %0) #23 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0
  %i.at = extractvalue { i32, ptr } %i.ar, 1
  %i.au = ptrtoint ptr %i.at to i64
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.av = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.aw = icmp eq i32 %.039, %i.av
  %i.ax = call ptr @__cxa_begin_catch(ptr %.0) #23 ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #23, !call_target !2739
  %i.bc = invoke { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzlL8decodeFnEP12ZL_Decoder_sPPK10ZL_Input_smS5_mE22__zl_static_error_info_0, ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 74, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef %i.bb)
          to label %bb.s unwind label %bb.y       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bd = extractvalue { i32, ptr } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { i32, ptr } %i.bc, 1      ; 2 uses
  invoke void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bd, ptr %i.be, ptr noundef nonnull @.str.9)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bf = ptrtoint ptr %i.be to i64
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.u:                                             ; preds = %bb.q
  %i.bg = invoke { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzlL8decodeFnEP12ZL_Decoder_sPPK10ZL_Input_smS5_mE22__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 76, i32 noundef 1, ptr noundef nonnull @.str.8)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bh = extractvalue { i32, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { i32, ptr } %i.bg, 1      ; 2 uses
  invoke void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bh, ptr %i.bi, ptr noundef nonnull @.str.9)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = ptrtoint ptr %i.bi to i64
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.p, %bb.t, %bb.w, %_ZN6openzl12DecoderStateD2Ev.exit
  %.sroa.037.0 = phi i32 [ 0, %_ZN6openzl12DecoderStateD2Ev.exit ], [ %i.bd, %bb.t ], [ %i.bh, %bb.w ], [ %i.as, %bb.p ]
  %.sroa.538.0 = phi i64 [ 0, %_ZN6openzl12DecoderStateD2Ev.exit ], [ %i.bf, %bb.t ], [ %i.bj, %bb.w ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.037.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.538.0, 1
  ret { i32, i64 } %.fca.1.insert

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN6openzl4DCtx21registerCustomDecoderERK16ZL_MIDecoderDesc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl26MultiInputCodecDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2:    ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4:    ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !82, !range !78, !noundef !65
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.v, align 8, !tbaa !82
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !89
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105), i64, ptr) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !89
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !89
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !89
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22, !inline_history !2740
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6openzl9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !89
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22, !inline_history !2740
  br label %_ZN6openzl9ExceptionD2Ev.exit

_ZN6openzl9ExceptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(105) %0) #23, !inline_history !2740
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @ZL_Decoder_getOpaquePtr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl12DecoderStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.g(ptr noundef nonnull %i.f)
          to label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i10, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6 ], [ %i.r, %_ZNSt6vectorIN6openzl8InputRefESaIS1_EED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.w(ptr noundef nonnull %i.v)
          to label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i6 unwind label %bb.h, !inline_history !0

bb.h:                                             ; preds = %bb.g
end_hunk_1
