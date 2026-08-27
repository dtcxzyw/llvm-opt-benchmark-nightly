Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_Z22test_find_first_not_ofv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %i.fl = load i8, ptr %0, align 8, !tbaa !35
  %i.fm = trunc i8 %i.fl to i1
  br i1 %i.fm, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = load ptr, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !47 ; 2 uses
  %i.fq = icmp ne ptr %i.fn, null
  %i.fr = icmp ugt i64 %i.fp, 23
  %or.cond.i.i = and i1 %i.fq, %i.fr
  br i1 %or.cond.i.i, label %bb.t, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fp) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.u:                                             ; preds = %.loopexit94
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ab

bb.v:                                             ; preds = %.loopexit92
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.ab

bb.w:                                             ; preds = %.loopexit90
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.ab

bb.x:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcm.exit58
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.ab

bb.y:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcm.exit73
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.ab

bb.z:                                             ; preds = %.loopexit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEcm.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.pn17.pn = phi { ptr, i32 } [ %i.fy, %bb.aa ], [ %i.fx, %bb.z ], [ %i.fw, %bb.y ], [ %i.fv, %bb.x ], [ %i.fu, %bb.w ], [ %i.ft, %bb.v ], [ %i.fs, %bb.u ]
  %i.fz = load i8, ptr %0, align 8, !tbaa !35
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gb = load ptr, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !47 ; 2 uses
  %i.ge = icmp ne ptr %i.gb, null
  %i.gf = icmp ugt i64 %i.gd, 23
  %or.cond.i.i79 = and i1 %i.ge, %i.gf
  br i1 %or.cond.i.i79, label %bb.ad, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit80

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gd) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit80

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit80: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z21test_find_last_not_ofv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::basic_string", align 8 ; 44 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i8 1, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store i8 0, ptr %i.n, align 1, !tbaa !35
  %i.p = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 9)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.p, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.q = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.r = trunc i8 %i.q to i1
  %i.s = lshr i8 %i.q, 1
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = load i64, ptr %0, align 8
  %i.x = lshr i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = select i1 %i.r, ptr %i.u, ptr %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !35
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc.i
  %i.aa = load i8, ptr %0, align 8, !tbaa !35
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ad = select i1 %i.ab, ptr %i.n, ptr %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ad, ptr noundef nonnull align 1 dereferenceable(9) @.str.300, i64 9, i1 false)
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.gep165 = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %.sroa.sel = select i1 %i.ab, ptr %.sroa.gep, ptr %.sroa.gep165
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !35
  %i.ae = load i8, ptr %0, align 8, !tbaa !35
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  store i8 19, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = load i8, ptr %0, align 8, !tbaa !35
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = icmp ne ptr %i.aj, null
  %i.an = icmp ugt i64 %i.al, 23
  %or.cond.i.i80 = and i1 %i.am, %i.an
  br i1 %or.cond.i.i80, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.al) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %bb.d, %bb.c, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79
  %common.resume.op = phi { ptr, i32 } [ %.pn17.pn, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79 ], [ %i.ag, %bb.c ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  %i.ao = load i64, ptr %0, align 8
  %i.ap = and i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 18               ; 2 uses
  store i64 %i.aq, ptr %0, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread
  %i.ar = phi i64 [ %i.aq, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %.pre, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.as = trunc i64 %i.ar to i1                   ; 11 uses
  %i.at = load ptr, ptr %i.o, align 8             ; 11 uses
  %i.au = select i1 %i.as, ptr %i.n, ptr %i.at    ; 2 uses
  %.sroa.gep278 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.gep279 = getelementptr i8, ptr %i.at, i64 9
  %.sroa.sel280 = select i1 %i.as, ptr %.sroa.gep278, ptr %.sroa.gep279
  %.sroa.gep278.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.gep279.sroa.gep = getelementptr i8, ptr %i.at, i64 8
  %.sroa.sel280.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep, ptr %.sroa.gep279.sroa.gep ; 3 uses
  %i.av = load i8, ptr %.sroa.sel280.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.aw = icmp eq i8 %i.av, 99
  br i1 %i.aw, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a: ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a, %.lr.ph.i.i.i
  %.lcssa244 = phi ptr [ %.sroa.sel280, %.lr.ph.i.i.i ], [ %.sroa.sel280.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i ]
  %.lcssa242 = phi ptr [ %.sroa.sel280.sroa.sel, %.lr.ph.i.i.i ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a ], [ %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a ], [ %.sroa.sel248.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i ]
  %i.ax = icmp eq ptr %.lcssa244, %i.au
  br i1 %i.ax, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit, label %bb.f

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a: ; preds = %.lr.ph.i.i.i
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 7
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.ay = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.az = icmp eq i8 %i.ay, 99
  br i1 %i.az, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.1.a
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 6
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.ba = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bb = icmp eq i8 %i.ba, 99
  br i1 %i.bb, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.2.a
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 5
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.bc = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bd = icmp eq i8 %i.bc, 99
  br i1 %i.bd, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.3.a
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 4
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.be = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bf = icmp eq i8 %i.be, 99
  br i1 %i.bf, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.4.a
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 3
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.bg = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bh = icmp eq i8 %i.bg, 99
  br i1 %i.bh, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.5.a
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 2
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep279.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.bi = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bj = icmp eq i8 %i.bi, 99
  br i1 %i.bj, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.6.a
  %.sroa.gep246.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr i8, ptr %i.at, i64 1
  %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep246.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %.sroa.gep278.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep ; 3 uses
  %i.bk = load i8, ptr %.sroa.sel280.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %i.bl = icmp eq i8 %i.bk, 99
  br i1 %i.bl, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.7.a
  %.sroa.gep246.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.sel248.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = select i1 %i.as, ptr %.sroa.gep246.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep.sroa.gep, ptr %i.at ; 2 uses
  %1 = load i8, ptr %.sroa.sel248.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !tbaa !35, !noalias !207
  %.not.i.i = icmp eq i8 %1, 99
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a

bb.f:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a
  %i.bm = ptrtoint ptr %.lcssa242 to i64
  %i.bn = ptrtoint ptr %i.au to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit: ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i, %bb.f, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a
  %.0.i.i = phi i64 [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i.a ], [ %i.bo, %bb.f ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i ]
  store i64 %.0.i.i, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 5, ptr %i.b, align 4, !tbaa !43
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1851, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.g unwind label %bb.x       ; 0 uses

bb.g:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bq = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.br = trunc i8 %i.bq to i1
  %i.bs = lshr i8 %i.bq, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = load i64, ptr %0, align 8               ; 2 uses
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = select i1 %i.br, i64 %i.bt, i64 %i.bv   ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %bb.g
  %i.by = trunc i64 %i.bu to i1
  %i.bz = load ptr, ptr %i.o, align 8
  %i.ca = select i1 %i.by, ptr %i.n, ptr %i.bz    ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bw
  br label %.lr.ph.i.i.preheader.i.i.i22

.lr.ph.i.i.preheader.i.i.i22:                     ; preds = %.lr.ph.i.i.i20, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30
  %i.cc = phi ptr [ %i.cd, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30 ], [ %i.cb, %.lr.ph.i.i.i20 ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -1 ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !35, !noalias !210
  %i.cf = and i8 %i.ce, -2
  %switch = icmp eq i8 %i.cf, 98
  br i1 %switch, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i26

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i26: ; preds = %.lr.ph.i.i.preheader.i.i.i22
  %.not.i.i28 = icmp eq ptr %i.cc, %i.ca
  br i1 %.not.i.i28, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32, label %bb.h

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30: ; preds = %.lr.ph.i.i.preheader.i.i.i22
  %.not.i.i.i31 = icmp eq ptr %i.cd, %i.ca
  br i1 %.not.i.i.i31, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32, label %.lr.ph.i.i.preheader.i.i.i22, !llvm.loop !213

bb.h:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i26
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.ca to i64
  %i.ci = sub i64 %i.cg, %i.ch
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30, %bb.h, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i26, %bb.g
  %.0.i.i29 = phi i64 [ -1, %bb.g ], [ %i.ci, %bb.h ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i26 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i30 ]
  store i64 %.0.i.i29, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 2, ptr %i.d, align 4, !tbaa !43
  %i.cj = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.313, ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.1, i32 noundef 1852, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.i unwind label %bb.y       ; 0 uses

bb.i:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ck = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.cl = trunc i8 %i.ck to i1
  %i.cm = lshr i8 %i.ck, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = load i64, ptr %0, align 8               ; 2 uses
  %i.cp = lshr i64 %i.co, 1
  %i.cq = select i1 %i.cl, i64 %i.cn, i64 %i.cp   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.i
  %i.cs = trunc i64 %i.co to i1
  %i.ct = load ptr, ptr %i.o, align 8
  %i.cu = select i1 %i.cs, ptr %i.n, ptr %i.ct    ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cq
  br label %.lr.ph.i.i.preheader.i.i.i35

.lr.ph.i.i.preheader.i.i.i35:                     ; preds = %.lr.ph.i.i.i33, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43
  %i.cw = phi ptr [ %i.cx, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43 ], [ %i.cv, %.lr.ph.i.i.i33 ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -1 ; 4 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35, !noalias !214
  %.off222 = add i8 %i.cy, -97
  %switch223 = icmp ult i8 %.off222, 3
  br i1 %switch223, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i39

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i39: ; preds = %.lr.ph.i.i.preheader.i.i.i35
  %.not.i.i41 = icmp eq ptr %i.cw, %i.cu
  br i1 %.not.i.i41, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45, label %bb.j

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43: ; preds = %.lr.ph.i.i.preheader.i.i.i35
  %.not.i.i.i44 = icmp eq ptr %i.cx, %i.cu
  br i1 %.not.i.i.i44, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45, label %.lr.ph.i.i.preheader.i.i.i35, !llvm.loop !213

bb.j:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i39
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = sub i64 %i.cz, %i.da
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43, %bb.j, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i39, %bb.i
  %.0.i.i42 = phi i64 [ -1, %bb.i ], [ %i.db, %bb.j ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i39 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i43 ]
  store i64 %.0.i.i42, ptr %i.e, align 8, !tbaa !41
  %i.dc = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmmEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1853, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE4nposE)
          to label %bb.k unwind label %bb.z       ; 0 uses

bb.k:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.dd = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.de = trunc i8 %i.dd to i1
  %i.df = lshr i8 %i.dd, 1
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = load i64, ptr %0, align 8               ; 2 uses
  %i.di = lshr i64 %i.dh, 1
  %i.dj = select i1 %i.de, i64 %i.dg, i64 %i.di   ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %bb.k
  %i.dl = trunc i64 %i.dh to i1
  %i.dm = load ptr, ptr %i.o, align 8
  %i.dn = select i1 %i.dl, ptr %i.n, ptr %i.dm    ; 3 uses
  %i.do = add nsw i64 %i.dj, -1                   ; 6 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.do, i64 5)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.speculated.i.i ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !35, !noalias !217
  %i.ds = icmp eq i8 %i.dr, 99
  br i1 %i.ds, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.1.a, label %.lr.ph.i.i.preheader.i.i.i48.1.a

.lr.ph.i.i.preheader.i.i.i48.1.a:                 ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52, %.lr.ph.i.i.preheader.i.i.i48.5.a, %.lr.ph.i.i.preheader.i.i.i48.4.a, %.lr.ph.i.i.preheader.i.i.i48.3.a, %.lr.ph.i.i.preheader.i.i.i48.2.a, %.lr.ph.i.i.i46
  %.lcssa232 = phi ptr [ %i.dq, %.lr.ph.i.i.i46 ], [ %i.dp, %.lr.ph.i.i.preheader.i.i.i48.2.a ], [ %i.du, %.lr.ph.i.i.preheader.i.i.i48.3.a ], [ %i.dx, %.lr.ph.i.i.preheader.i.i.i48.4.a ], [ %i.ea, %.lr.ph.i.i.preheader.i.i.i48.5.a ], [ %i.ed, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52 ]
  %.lcssa230 = phi ptr [ %i.dp, %.lr.ph.i.i.i46 ], [ %i.du, %.lr.ph.i.i.preheader.i.i.i48.2.a ], [ %i.dx, %.lr.ph.i.i.preheader.i.i.i48.3.a ], [ %i.ea, %.lr.ph.i.i.preheader.i.i.i48.4.a ], [ %i.ed, %.lr.ph.i.i.preheader.i.i.i48.5.a ], [ %2, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52 ]
  %i.dt = icmp eq ptr %.lcssa232, %i.dn
  br i1 %i.dt, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %bb.l

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.1.a: ; preds = %.lr.ph.i.i.i46
  %.not.i.i.i57.1.a = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i57.1.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.preheader.i.i.i48.2.a

.lr.ph.i.i.preheader.i.i.i48.2.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.1.a
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 -1 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !35, !noalias !217
  %i.dw = icmp eq i8 %i.dv, 99
  br i1 %i.dw, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.2.a, label %.lr.ph.i.i.preheader.i.i.i48.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.2.a: ; preds = %.lr.ph.i.i.preheader.i.i.i48.2.a
  %.not.i.i.i57.2.a = icmp eq i64 %i.do, 1
  br i1 %.not.i.i.i57.2.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.preheader.i.i.i48.3.a

.lr.ph.i.i.preheader.i.i.i48.3.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.2.a
  %i.dx = getelementptr inbounds i8, ptr %i.dp, i64 -2 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !35, !noalias !217
  %i.dz = icmp eq i8 %i.dy, 99
  br i1 %i.dz, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.3.a, label %.lr.ph.i.i.preheader.i.i.i48.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.3.a: ; preds = %.lr.ph.i.i.preheader.i.i.i48.3.a
  %.not.i.i.i57.3.a = icmp eq i64 %i.do, 2
  br i1 %.not.i.i.i57.3.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.preheader.i.i.i48.4.a

.lr.ph.i.i.preheader.i.i.i48.4.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.3.a
  %i.ea = getelementptr inbounds i8, ptr %i.dp, i64 -3 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !35, !noalias !217
  %i.ec = icmp eq i8 %i.eb, 99
  br i1 %i.ec, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4.a, label %.lr.ph.i.i.preheader.i.i.i48.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4.a: ; preds = %.lr.ph.i.i.preheader.i.i.i48.4.a
  %.not.i.i.i57.4.a = icmp eq i64 %i.do, 3
  br i1 %.not.i.i.i57.4.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.preheader.i.i.i48.5.a

.lr.ph.i.i.preheader.i.i.i48.5.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4.a
  %i.ed = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !35, !noalias !217
  %i.ef = icmp eq i8 %i.ee, 99
  br i1 %i.ef, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4, label %.lr.ph.i.i.preheader.i.i.i48.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4: ; preds = %.lr.ph.i.i.preheader.i.i.i48.5.a
  %.not.i.i.i57.4 = icmp eq i64 %i.do, 4
  br i1 %.not.i.i.i57.4, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4
  %2 = getelementptr inbounds i8, ptr %i.dp, i64 -5 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !35, !noalias !217
  %.not.i.i54 = icmp eq i8 %3, 99
  br i1 %.not.i.i54, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58, label %.lr.ph.i.i.preheader.i.i.i48.1.a

bb.l:                                             ; preds = %.lr.ph.i.i.preheader.i.i.i48.1.a
  %i.eg = ptrtoint ptr %.lcssa230 to i64
  %i.eh = ptrtoint ptr %i.dn to i64
  %i.ei = sub i64 %i.eg, %i.eh
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.1.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.2.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.3.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52, %bb.l, %.lr.ph.i.i.preheader.i.i.i48.1.a, %bb.k
  %.0.i.i55 = phi i64 [ -1, %bb.k ], [ %i.ei, %bb.l ], [ -1, %.lr.ph.i.i.preheader.i.i.i48.1.a ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i52 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.4.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.3.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.2.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i56.1.a ]
  store i64 %.0.i.i55, ptr %i.f, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 5, ptr %i.g, align 4, !tbaa !43
  %i.ej = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1856, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.m unwind label %bb.aa      ; 0 uses

bb.m:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.ek = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.el = trunc i8 %i.ek to i1
  %i.em = lshr i8 %i.ek, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = load i64, ptr %0, align 8               ; 2 uses
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = select i1 %i.el, i64 %i.en, i64 %i.ep   ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.i59

.lr.ph.i.i.i59:                                   ; preds = %bb.m
  %i.es = trunc i64 %i.eo to i1
  %i.et = load ptr, ptr %i.o, align 8
  %i.eu = select i1 %i.es, ptr %i.n, ptr %i.et    ; 3 uses
  %i.ev = add nsw i64 %i.eq, -1                   ; 6 uses
  %.sroa.speculated.i.i60 = call i64 @llvm.umin.i64(i64 %i.ev, i64 5)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.speculated.i.i60 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !35, !noalias !220
  %i.ez = icmp eq i8 %i.ey, 98
  br i1 %i.ez, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.1.a, label %.lr.ph.i.i.preheader.i.i.i62.1.a

.lr.ph.i.i.preheader.i.i.i62.1.a:                 ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66, %.lr.ph.i.i.preheader.i.i.i62.5.a, %.lr.ph.i.i.preheader.i.i.i62.4.a, %.lr.ph.i.i.preheader.i.i.i62.3.a, %.lr.ph.i.i.preheader.i.i.i62.2.a, %.lr.ph.i.i.i59
  %.lcssa228 = phi ptr [ %i.ex, %.lr.ph.i.i.i59 ], [ %i.ew, %.lr.ph.i.i.preheader.i.i.i62.2.a ], [ %i.fb, %.lr.ph.i.i.preheader.i.i.i62.3.a ], [ %i.fe, %.lr.ph.i.i.preheader.i.i.i62.4.a ], [ %i.fh, %.lr.ph.i.i.preheader.i.i.i62.5.a ], [ %i.fk, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66 ]
  %.lcssa226 = phi ptr [ %i.ew, %.lr.ph.i.i.i59 ], [ %i.fb, %.lr.ph.i.i.preheader.i.i.i62.2.a ], [ %i.fe, %.lr.ph.i.i.preheader.i.i.i62.3.a ], [ %i.fh, %.lr.ph.i.i.preheader.i.i.i62.4.a ], [ %i.fk, %.lr.ph.i.i.preheader.i.i.i62.5.a ], [ %4, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66 ]
  %i.fa = icmp eq ptr %.lcssa228, %i.eu
  br i1 %i.fa, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %bb.n

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.1.a: ; preds = %.lr.ph.i.i.i59
  %.not.i.i.i71.1.a = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i71.1.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.preheader.i.i.i62.2.a

.lr.ph.i.i.preheader.i.i.i62.2.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.1.a
  %i.fb = getelementptr inbounds i8, ptr %i.ew, i64 -1 ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !35, !noalias !220
  %i.fd = icmp eq i8 %i.fc, 98
  br i1 %i.fd, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.2.a, label %.lr.ph.i.i.preheader.i.i.i62.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.2.a: ; preds = %.lr.ph.i.i.preheader.i.i.i62.2.a
  %.not.i.i.i71.2.a = icmp eq i64 %i.ev, 1
  br i1 %.not.i.i.i71.2.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.preheader.i.i.i62.3.a

.lr.ph.i.i.preheader.i.i.i62.3.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.2.a
  %i.fe = getelementptr inbounds i8, ptr %i.ew, i64 -2 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !35, !noalias !220
  %i.fg = icmp eq i8 %i.ff, 98
  br i1 %i.fg, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.3.a, label %.lr.ph.i.i.preheader.i.i.i62.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.3.a: ; preds = %.lr.ph.i.i.preheader.i.i.i62.3.a
  %.not.i.i.i71.3.a = icmp eq i64 %i.ev, 2
  br i1 %.not.i.i.i71.3.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.preheader.i.i.i62.4.a

.lr.ph.i.i.preheader.i.i.i62.4.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.3.a
  %i.fh = getelementptr inbounds i8, ptr %i.ew, i64 -3 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !35, !noalias !220
  %i.fj = icmp eq i8 %i.fi, 98
  br i1 %i.fj, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4.a, label %.lr.ph.i.i.preheader.i.i.i62.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4.a: ; preds = %.lr.ph.i.i.preheader.i.i.i62.4.a
  %.not.i.i.i71.4.a = icmp eq i64 %i.ev, 3
  br i1 %.not.i.i.i71.4.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.preheader.i.i.i62.5.a

.lr.ph.i.i.preheader.i.i.i62.5.a:                 ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4.a
  %i.fk = getelementptr inbounds i8, ptr %i.ew, i64 -4 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !35, !noalias !220
  %i.fm = icmp eq i8 %i.fl, 98
  br i1 %i.fm, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4, label %.lr.ph.i.i.preheader.i.i.i62.1.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4: ; preds = %.lr.ph.i.i.preheader.i.i.i62.5.a
  %.not.i.i.i71.4 = icmp eq i64 %i.ev, 4
  br i1 %.not.i.i.i71.4, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4
  %4 = getelementptr inbounds i8, ptr %i.ew, i64 -5 ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !35, !noalias !220
  %.not.i.i68 = icmp eq i8 %5, 98
  br i1 %.not.i.i68, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72, label %.lr.ph.i.i.preheader.i.i.i62.1.a

bb.n:                                             ; preds = %.lr.ph.i.i.preheader.i.i.i62.1.a
  %i.fn = ptrtoint ptr %.lcssa226 to i64
  %i.fo = ptrtoint ptr %i.eu to i64
  %i.fp = sub i64 %i.fn, %i.fo
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.1.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.2.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.3.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4.a, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66, %bb.n, %.lr.ph.i.i.preheader.i.i.i62.1.a, %bb.m
  %.0.i.i69 = phi i64 [ -1, %bb.m ], [ %i.fp, %bb.n ], [ -1, %.lr.ph.i.i.preheader.i.i.i62.1.a ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i.i66 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4 ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.4.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.3.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.2.a ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.i70.1.a ]
  store i64 %.0.i.i69, ptr %i.h, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 2, ptr %i.i, align 4, !tbaa !43
  %i.fq = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.1, i32 noundef 1857, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.o unwind label %bb.ab      ; 0 uses

bb.o:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.fr = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.fs = trunc i8 %i.fr to i1
  %i.ft = lshr i8 %i.fr, 1
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = load i64, ptr %0, align 8               ; 2 uses
  %i.fw = lshr i64 %i.fv, 1
  %i.fx = select i1 %i.fs, i64 %i.fu, i64 %i.fw   ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.fz = trunc i64 %i.fv to i1
  %i.ga = load ptr, ptr %i.o, align 8
  %i.gb = select i1 %i.fz, ptr %i.n, ptr %i.ga    ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.fx
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, %.lr.ph.i.i
  %i.gd = phi ptr [ %i.ge, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i ], [ %i.gc, %.lr.ph.i.i ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -1 ; 4 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !35, !noalias !223
  %i.gg = icmp eq i8 %i.gf, 97
  br i1 %i.gg, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.a

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.a: ; preds = %.lr.ph.i.i.preheader.i.i
  %.not.i.i73.a = icmp eq ptr %i.gd, %i.gb
  br i1 %.not.i.i73.a, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %bb.p

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i: ; preds = %.lr.ph.i.i.preheader.i.i
  %.not.i = icmp eq ptr %i.ge, %i.gb
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !213

bb.p:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.a
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = ptrtoint ptr %i.gb to i64
  %i.gj = sub i64 %i.gh, %i.gi
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit: ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, %bb.p, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.a, %bb.o
  %.0.i = phi i64 [ -1, %bb.o ], [ %i.gj, %bb.p ], [ -1, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i.a ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i ]
  store i64 %.0.i, ptr %i.j, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  store i32 8, ptr %i.k, align 4, !tbaa !43
  %i.gk = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.1, i32 noundef 1861, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %bb.q unwind label %bb.ac      ; 0 uses

bb.q:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  %i.gl = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.gm = trunc i8 %i.gl to i1
  %i.gn = lshr i8 %i.gl, 1
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = load i64, ptr %0, align 8               ; 2 uses
  %i.gq = lshr i64 %i.gp, 1
  %i.gr = select i1 %i.gm, i64 %i.go, i64 %i.gq   ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gt = trunc i64 %i.gp to i1
  %i.gu = load ptr, ptr %i.o, align 8
  %i.gv = select i1 %i.gt, ptr %i.n, ptr %i.gu    ; 4 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gr
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %bb.s, %bb.r
  %i.gx = phi ptr [ %i.gy, %bb.s ], [ %i.gw, %bb.r ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -1 ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !35, !noalias !226
  %.not1.i.i = icmp eq i8 %i.gz, 99
  br i1 %.not1.i.i, label %bb.s, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i74
  %.not.i.i77 = icmp eq ptr %i.gy, %i.gv
  br i1 %.not.i.i77, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit, label %.lr.ph.i.i74, !llvm.loop !229

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.i: ; preds = %.lr.ph.i.i74
  %.not.i75 = icmp eq ptr %i.gx, %i.gv
  br i1 %.not.i75, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.i
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gv to i64
  %i.hc = sub i64 %i.ha, %i.hb
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit: ; preds = %bb.s, %bb.t, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.i, %bb.q
  %.0.i76 = phi i64 [ -1, %bb.q ], [ %i.hc, %bb.t ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.i ], [ -1, %bb.s ]
  store i64 %.0.i76, ptr %i.l, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  store i32 5, ptr %i.m, align 4, !tbaa !43
  %i.hd = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1864, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_find_last_not_ofv, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.u unwind label %bb.ad      ; 0 uses

bb.u:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %i.he = load i8, ptr %0, align 8, !tbaa !35
  %i.hf = trunc i8 %i.he to i1
  br i1 %i.hf, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hg = load ptr, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !47 ; 2 uses
  %i.hj = icmp ne ptr %i.hg, null
  %i.hk = icmp ugt i64 %i.hi, 23
  %or.cond.i.i = and i1 %i.hj, %i.hk
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hi) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.x:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ae

bb.y:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit32
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.ae

bb.z:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit45
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.ae

bb.aa:                                            ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit58
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm.exit72
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %i.hr, %bb.ad ], [ %i.hq, %bb.ac ], [ %i.hp, %bb.ab ], [ %i.ho, %bb.aa ], [ %i.hn, %bb.z ], [ %i.hm, %bb.y ], [ %i.hl, %bb.x ]
  %i.hs = load i8, ptr %0, align 8, !tbaa !35
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = load ptr, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !47 ; 2 uses
  %i.hx = icmp ne ptr %i.hu, null
  %i.hy = icmp ugt i64 %i.hw, 23
  %or.cond.i.i78 = and i1 %i.hx, %i.hy
  br i1 %or.cond.i.i78, label %bb.ag, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hw) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit79: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27test_concatenation_operatorv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i83 = alloca [24 x i8], align 8    ; 4 uses
  %0 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i = alloca [24 x i8], align 8        ; 4 uses
  %1 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i72 = alloca [24 x i8], align 8    ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.sroa.0.i.i.i70 = alloca [24 x i8], align 8    ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.sroa.0.i.i.i58 = alloca [24 x i8], align 8    ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %.sroa.0.i.i.i46 = alloca [24 x i8], align 8    ; 4 uses
  %5 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %6 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %7 = alloca %"class.boost::container::basic_string", align 16 ; 35 uses
  %8 = alloca %"class.boost::container::basic_string", align 8 ; 22 uses
  %9 = alloca %"class.boost::container::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.boost::container::basic_string", align 16 ; 17 uses
  %11 = alloca %"class.boost::container::basic_string", align 16 ; 24 uses
  %12 = alloca %"class.boost::container::basic_string", align 16 ; 17 uses
  %13 = alloca %"class.boost::container::basic_string", align 16 ; 23 uses
  %14 = alloca %"class.boost::container::basic_string", align 16 ; 17 uses
  %15 = alloca %"class.boost::container::basic_string", align 16 ; 27 uses
  %16 = alloca %"class.boost::container::basic_string", align 16 ; 17 uses
  %17 = alloca %"class.boost::container::basic_string", align 16 ; 28 uses
  %18 = alloca %"class.boost::container::basic_string", align 8 ; 24 uses
  %19 = alloca %"class.boost::container::basic_string", align 16 ; 17 uses
  %20 = alloca %"class.boost::container::basic_string", align 16 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i8 1, ptr %7, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store i8 0, ptr %i.d, align 1, !tbaa !35
  %i.f = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 5)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.g = load i8, ptr %7, align 16, !tbaa !35     ; 2 uses
  %i.h = trunc i8 %i.g to i1
end_hunk_0
