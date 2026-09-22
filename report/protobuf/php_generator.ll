Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/php_generator?download=true
inline.NumInlined: 4892
inline.NumDeleted: 1491
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_125GeneratedMetadataFileNameB5cxx11EPKNS0_14FileDescriptorERKNS2_7OptionsE:bb.a
bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %i.s = load i128, ptr %i.f, align 1
  %i.t = xor i128 %i.s, 63005710922238749866870542373108019047
  %i.u = getelementptr i8, ptr %i.f, i64 11
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 148148874381910739100744568049767899759
  %i.x = or i128 %i.t, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 40, ptr %i.c, align 8, !tbaa !55
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  store ptr %i.ac, ptr %0, align 8, !tbaa !51
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ac, ptr noundef nonnull align 1 dereferenceable(40) @.str.18, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !50
  %i.af = load ptr, ptr %0, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.bd

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %i.ai = load i8, ptr %2, align 8, !tbaa !24, !range !25, !noundef !26
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.j

.thread:                                          ; preds = %bb.c
  %i.ak = load i8, ptr %2, align 8, !tbaa !24, !range !25, !noundef !26
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread170

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 51, ptr %i.b, align 8, !tbaa !55
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.an, ptr %0, align 8, !tbaa !51
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.an, ptr noundef nonnull align 1 dereferenceable(51) @.str.19, i64 51, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !50
  %i.aq = load ptr, ptr %0, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bd

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.j:                                             ; preds = %bb.f
  br i1 %.not176, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread, label %.thread170

.thread170:                                       ; preds = %.thread, %bb.j
  %.not13.i.i253 = icmp eq i64 %i.h, 0
  br i1 %.not13.i.i253, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, label %.lr.ph255

bb.k:                                             ; preds = %.lr.ph255
  %.not13.i.i = icmp eq i64 %i.at, 0
  br i1 %.not13.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, label %.lr.ph255, !llvm.loop !1

.lr.ph255:                                        ; preds = %.thread170, %bb.k
  %.1.i.i75254 = phi i64 [ %i.at, %bb.k ], [ %i.h, %.thread170 ]
  %i.at = add i64 %.1.i.i75254, -1                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %i.aw = icmp eq i8 %i.av, 46
  br i1 %i.aw, label %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit_crit_edge256, label %bb.k, !llvm.loop !1

._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit_crit_edge256: ; preds = %.lr.ph255
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, !llvm.loop !1

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit: ; preds = %bb.k, %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit_crit_edge256, %.thread170
  %.09.i.i = phi i64 [ -1, %.thread170 ], [ %i.at, %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit_crit_edge256 ], [ -1, %bb.k ] ; 2 uses
  br i1 %i.r, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit
  %i.ax = load i128, ptr %i.f, align 1
  %i.ay = xor i128 %i.ax, 63005710922238749866870542373108019047
  %i.az = getelementptr i8, ptr %i.f, i64 11
  %i.ba = load i128, ptr %i.az, align 1
  %i.bb = xor i128 %i.ba, 148148874381910739100744568049767899759
  %i.bc = or i128 %i.ay, %i.bb
  %i.bd = icmp ne i128 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit78, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit78: ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 40, ptr %i.a, align 8, !tbaa !55
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit78
  store ptr %i.bh, ptr %0, align 8, !tbaa !51
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bh, ptr noundef nonnull align 1 dereferenceable(40) @.str.18, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !50
  %i.bk = load ptr, ptr %0, align 8, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bd

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit78
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread: ; preds = %bb.j, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, %bb.l
  %.09.i.i173.ph = phi i64 [ %.09.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit ], [ %.09.i.i, %bb.l ], [ -1, %bb.j ]
  %sext = shl i64 %.09.i.i173.ph, 32
  %i.bn = ashr exact i64 %sext, 32
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.bn) ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !201 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.bs = and i32 %i.br, 256
  %.not177 = icmp eq i32 %i.bs, 0
  br i1 %.not177, label %bb.z, label %bb.o

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !203
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, -4
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !50 ; 2 uses
  switch i64 %i.ca, label %bb.p [
    i64 0, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.o
  %lhsc = load i8, ptr %i.by, align 1
  %i.cb = icmp eq i8 %lhsc, 92
  br i1 %i.cb, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.ca, ptr %5, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.by, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !134
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cc = load ptr, ptr %3, align 8, !tbaa !51    ; 44 uses
  %i.cd = load i64, ptr %i.o, align 8, !tbaa !50  ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %.not6.i = icmp samesign eq i64 %i.cd, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.q
  %min.iters.check = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check263 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check263, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cf = and i64 %i.cd, 24
  %n.vec = and i64 %i.cd, -32                     ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cc, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue357, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue357 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %index ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep264 = getelementptr i8, ptr %i.ch, i64 1
  %i.ci = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep265 = getelementptr i8, ptr %i.ci, i64 2
  %i.cj = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep266 = getelementptr i8, ptr %i.cj, i64 3
  %i.ck = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep267 = getelementptr i8, ptr %i.ck, i64 4
  %i.cl = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep268 = getelementptr i8, ptr %i.cl, i64 5
  %i.cm = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep269 = getelementptr i8, ptr %i.cm, i64 6
  %i.cn = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep270 = getelementptr i8, ptr %i.cn, i64 7
  %i.co = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep271 = getelementptr i8, ptr %i.co, i64 8
  %i.cp = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep272 = getelementptr i8, ptr %i.cp, i64 9
  %i.cq = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep273 = getelementptr i8, ptr %i.cq, i64 10
  %i.cr = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep274 = getelementptr i8, ptr %i.cr, i64 11
  %i.cs = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep275 = getelementptr i8, ptr %i.cs, i64 12
  %i.ct = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep276 = getelementptr i8, ptr %i.ct, i64 13
  %i.cu = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep277 = getelementptr i8, ptr %i.cu, i64 14
  %i.cv = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep278 = getelementptr i8, ptr %i.cv, i64 15
  %i.cw = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep279 = getelementptr i8, ptr %i.cw, i64 16
  %i.cx = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep280 = getelementptr i8, ptr %i.cx, i64 17
  %i.cy = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep281 = getelementptr i8, ptr %i.cy, i64 18
  %i.cz = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep282 = getelementptr i8, ptr %i.cz, i64 19
  %i.da = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep283 = getelementptr i8, ptr %i.da, i64 20
  %i.db = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep284 = getelementptr i8, ptr %i.db, i64 21
  %i.dc = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep285 = getelementptr i8, ptr %i.dc, i64 22
  %i.dd = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep286 = getelementptr i8, ptr %i.dd, i64 23
  %i.de = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep287 = getelementptr i8, ptr %i.de, i64 24
  %i.df = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep288 = getelementptr i8, ptr %i.df, i64 25
  %i.dg = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep289 = getelementptr i8, ptr %i.dg, i64 26
  %i.dh = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep290 = getelementptr i8, ptr %i.dh, i64 27
  %i.di = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep291 = getelementptr i8, ptr %i.di, i64 28
  %i.dj = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep292 = getelementptr i8, ptr %i.dj, i64 29
  %i.dk = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep293 = getelementptr i8, ptr %i.dk, i64 30
  %i.dl = getelementptr i8, ptr %i.cc, i64 %index
  %next.gep294 = getelementptr i8, ptr %i.dl, i64 31
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !56
  %wide.load295 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !56
  %i.dn = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.do = icmp eq <16 x i8> %wide.load295, splat (i8 92) ; 16 uses
  %i.dp = extractelement <16 x i1> %i.dn, i64 0
  br i1 %i.dp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !56
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dq = extractelement <16 x i1> %i.dn, i64 1
  br i1 %i.dq, label %pred.store.if296, label %pred.store.continue297

pred.store.if296:                                 ; preds = %pred.store.continue
  store i8 47, ptr %next.gep264, align 1, !tbaa !56
  br label %pred.store.continue297

pred.store.continue297:                           ; preds = %pred.store.if296, %pred.store.continue
  %i.dr = extractelement <16 x i1> %i.dn, i64 2
  br i1 %i.dr, label %pred.store.if298, label %pred.store.continue299

pred.store.if298:                                 ; preds = %pred.store.continue297
  store i8 47, ptr %next.gep265, align 1, !tbaa !56
  br label %pred.store.continue299

pred.store.continue299:                           ; preds = %pred.store.if298, %pred.store.continue297
  %i.ds = extractelement <16 x i1> %i.dn, i64 3
  br i1 %i.ds, label %pred.store.if300, label %pred.store.continue301

pred.store.if300:                                 ; preds = %pred.store.continue299
  store i8 47, ptr %next.gep266, align 1, !tbaa !56
  br label %pred.store.continue301

pred.store.continue301:                           ; preds = %pred.store.if300, %pred.store.continue299
  %i.dt = extractelement <16 x i1> %i.dn, i64 4
  br i1 %i.dt, label %pred.store.if302, label %pred.store.continue303

pred.store.if302:                                 ; preds = %pred.store.continue301
  store i8 47, ptr %next.gep267, align 1, !tbaa !56
  br label %pred.store.continue303

pred.store.continue303:                           ; preds = %pred.store.if302, %pred.store.continue301
  %i.du = extractelement <16 x i1> %i.dn, i64 5
  br i1 %i.du, label %pred.store.if304, label %pred.store.continue305

pred.store.if304:                                 ; preds = %pred.store.continue303
  store i8 47, ptr %next.gep268, align 1, !tbaa !56
  br label %pred.store.continue305

pred.store.continue305:                           ; preds = %pred.store.if304, %pred.store.continue303
  %i.dv = extractelement <16 x i1> %i.dn, i64 6
  br i1 %i.dv, label %pred.store.if306, label %pred.store.continue307

pred.store.if306:                                 ; preds = %pred.store.continue305
  store i8 47, ptr %next.gep269, align 1, !tbaa !56
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %pred.store.if306, %pred.store.continue305
  %i.dw = extractelement <16 x i1> %i.dn, i64 7
  br i1 %i.dw, label %pred.store.if308, label %pred.store.continue309

pred.store.if308:                                 ; preds = %pred.store.continue307
  store i8 47, ptr %next.gep270, align 1, !tbaa !56
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.if308, %pred.store.continue307
  %i.dx = extractelement <16 x i1> %i.dn, i64 8
  br i1 %i.dx, label %pred.store.if310, label %pred.store.continue311

pred.store.if310:                                 ; preds = %pred.store.continue309
  store i8 47, ptr %next.gep271, align 1, !tbaa !56
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.if310, %pred.store.continue309
  %i.dy = extractelement <16 x i1> %i.dn, i64 9
  br i1 %i.dy, label %pred.store.if312, label %pred.store.continue313

pred.store.if312:                                 ; preds = %pred.store.continue311
  store i8 47, ptr %next.gep272, align 1, !tbaa !56
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.if312, %pred.store.continue311
  %i.dz = extractelement <16 x i1> %i.dn, i64 10
  br i1 %i.dz, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %pred.store.continue313
  store i8 47, ptr %next.gep273, align 1, !tbaa !56
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %pred.store.continue313
  %i.ea = extractelement <16 x i1> %i.dn, i64 11
  br i1 %i.ea, label %pred.store.if316, label %pred.store.continue317

pred.store.if316:                                 ; preds = %pred.store.continue315
  store i8 47, ptr %next.gep274, align 1, !tbaa !56
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.if316, %pred.store.continue315
  %i.eb = extractelement <16 x i1> %i.dn, i64 12
  br i1 %i.eb, label %pred.store.if318, label %pred.store.continue319

pred.store.if318:                                 ; preds = %pred.store.continue317
  store i8 47, ptr %next.gep275, align 1, !tbaa !56
  br label %pred.store.continue319

pred.store.continue319:                           ; preds = %pred.store.if318, %pred.store.continue317
  %i.ec = extractelement <16 x i1> %i.dn, i64 13
  br i1 %i.ec, label %pred.store.if320, label %pred.store.continue321

pred.store.if320:                                 ; preds = %pred.store.continue319
  store i8 47, ptr %next.gep276, align 1, !tbaa !56
  br label %pred.store.continue321

pred.store.continue321:                           ; preds = %pred.store.if320, %pred.store.continue319
  %i.ed = extractelement <16 x i1> %i.dn, i64 14
  br i1 %i.ed, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %pred.store.continue321
  store i8 47, ptr %next.gep277, align 1, !tbaa !56
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %pred.store.continue321
  %i.ee = extractelement <16 x i1> %i.dn, i64 15
  br i1 %i.ee, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  store i8 47, ptr %next.gep278, align 1, !tbaa !56
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %i.ef = extractelement <16 x i1> %i.do, i64 0
  br i1 %i.ef, label %pred.store.if326, label %pred.store.continue327

end_hunk_0
