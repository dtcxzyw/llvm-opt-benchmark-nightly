Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_load_balancing?download=true
inline.NumInlined: 504
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmxL9printGridEP8_IO_FILERKNS_8MDLoggerEPKcS6_RKNS_11pme_setup_tEd:bb.a
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn20.pn.pn
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZNK3gmx18nonbonded_verlet_t19changePairlistRadiiEff(ptr noundef nonnull align 8 dereferenceable(65), float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

declare void @_Z29init_interaction_const_tablesP8_IO_FILEP19interaction_const_tff(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z14gmx_pme_reinitPP9gmx_pme_tPK12gmx_domdec_tS0_PK10t_inputrecPKiff(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z23gmx_pme_send_switchgridRK12gmx_domdec_tPiff(ptr noundef nonnull align 8 dereferenceable(1097), ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare float @erfcf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #13

declare noundef i32 @_Z12pme_run_modePK9gmx_pme_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx16PmeLoadBalancing4Impl12addTwoStagesEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((140, 144)) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !156
  %i.c = add nsw i32 %i.b, 2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !156
  %i.d = load i8, ptr %0, align 8, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %1, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !313
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.g, ptr %i.h, align 8, !tbaa !313
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.i, ptr %i.j, align 4, !tbaa !314
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16PmeLoadBalancing4Impl9addCyclesEP8_IO_FILEP10t_forcerecPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEPK13gmx_wallcyclell(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.206", align 1 ; 3 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %13 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !437
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !438
  tail call void @_Z13wallcycle_getPK13gmx_wallcycle16WallCycleCounterPiPd(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !301
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 20
  %.val32 = load i32, ptr %i.n, align 4, !tbaa !187
  %i.o = icmp eq i32 %.val32, 0
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.p = tail call noundef double @_Z11gmx_gettimev()
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load double, ptr %i.q, align 8, !tbaa !188
  %i.s = fsub double %i.p, %i.r
  %i.t = fcmp olt double %i.s, 5.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 8, !tbaa !439
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %.not49 = icmp eq ptr %.pre, null
  br i1 %.not49, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre, %bb.e ], [ %i.i, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_Z8dd_bcastPK12gmx_domdec_tiPv(ptr noundef nonnull %i.w, i32 noundef 1, ptr noundef nonnull %i.x)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.y = load i32, ptr %i.d, align 4, !tbaa !437  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !205, !nonnull !14, !align !206
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !207 ; 3 uses
  %i.ae = mul nsw i32 %i.ad, 5
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %8, %i.af
  br i1 %i.ag, label %bb.ba, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !439, !range !13, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.ba, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = sub nsw i32 %i.y, %i.e
  %.not = icmp eq i32 %i.ak, %i.ad
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA73_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(73) @.str.4, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1095) #22
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ao = load ptr, ptr %9, align 8, !tbaa !202   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !203
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bb

bb.r:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 10 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !204, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.thread80, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32, !range !13, !noundef !14
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.t, label %.thread78

.thread78:                                        ; preds = %bb.s
  store i8 0, ptr %i.at, align 1, !tbaa !204
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = load i8, ptr %0, align 8, !tbaa !31, !range !13, !noundef !14 ; 2 uses
  %i.ba = xor i8 %i.az, 1
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !204
  %.not84.not = icmp eq i8 %i.az, 0
  br i1 %.not84.not, label %.thread80, label %bb.u

bb.u:                                             ; preds = %.thread78, %bb.t
  %i.bb = load i8, ptr %0, align 8, !tbaa !31, !range !13, !noundef !14
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.v, label %.thread81

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !155, !range !13, !noundef !14
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.bh = tail call noundef zeroext i1 @_Z12dd_dlb_is_onPK12gmx_domdec_t(ptr noundef %i.bg) ; 2 uses
  %i.bi = zext i1 %i.bh to i8
  store i8 %i.bi, ptr %i.at, align 1, !tbaa !204
  br i1 %i.bh, label %.thread83, label %.thread79

bb.w:                                             ; preds = %bb.v
  %i.bj = mul nsw i32 %i.ad, 3
  %i.bk = sext i32 %i.bj to i64
  %.not28 = icmp slt i64 %8, %i.bk
  br i1 %.not28, label %.thread79, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !153 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 20
  %.val = load i32, ptr %i.bm, align 4, !tbaa !187
  %i.bn = icmp eq i32 %.val, 0
  br i1 %i.bn, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !33, !range !13, !noundef !14
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = tail call noundef float @_Z14dd_pme_f_ratioPK12gmx_domdec_t(ptr noundef nonnull %i.bl)
  %i.bs = fcmp oge float %i.br, 1.050000e+00
  %i.bt = zext i1 %i.bs to i8
  %.pre54.pre = load ptr, ptr %i.h, align 8, !tbaa !153
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.pre54 = phi ptr [ %.pre54.pre, %bb.z ], [ %i.bl, %bb.y ]
  %i.bu = phi i8 [ %i.bt, %bb.z ], [ 1, %bb.y ]
  store i8 %i.bu, ptr %i.at, align 1, !tbaa !204
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %i.bv = phi ptr [ %.pre54, %bb.aa ], [ %i.bl, %bb.x ]
  tail call void @_Z8dd_bcastPK12gmx_domdec_tiPv(ptr noundef %i.bv, i32 noundef 1, ptr noundef nonnull %i.at)
  %.pre55 = load i8, ptr %i.at, align 1, !tbaa !204, !range !13
  %i.bw = trunc nuw i8 %.pre55 to i1
  br i1 %i.bw, label %.thread83, label %.thread79

.thread83:                                        ; preds = %bb.ab, %.split
  store i8 1, ptr %i.a, align 1, !tbaa !34
  br label %.thread80

.thread79:                                        ; preds = %bb.w, %bb.ab, %.split
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !208
  %i.bz = icmp sle i64 %8, %i.by
  %i.ca = zext i1 %i.bz to i8
  store i8 %i.ca, ptr %i.a, align 1, !tbaa !34
  br label %.thread81

.thread80:                                        ; preds = %bb.r, %bb.t, %.thread83
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !317
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !156
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.ac, label %.thread81

bb.ac:                                            ; preds = %.thread80
  store i8 0, ptr %i.at, align 1, !tbaa !204
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %.not50 = icmp eq ptr %i.cg, null
  br i1 %.not50, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = tail call noundef zeroext i1 @_Z16dd_dlb_is_lockedPK12gmx_domdec_t(ptr noundef nonnull %i.cg)
  br i1 %i.ch, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !153
  tail call void @_Z13dd_dlb_unlockP12gmx_domdec_t(ptr noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !318, !nonnull !14, !align !206
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !191 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.co, ptr %12, align 8, !tbaa !194
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !196
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.cq, align 8, !tbaa !199
  %i.cr = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter10appendTextEPKc(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull @.str.35)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !201
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %i.cr)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.ah, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.ag
  %i.cv = load ptr, ptr %12, align 8, !tbaa !202  ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.co
  br i1 %i.cw, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.cx = load i64, ptr %i.co, align 8, !tbaa !203
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #23
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %12, align 8, !tbaa !202  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.co
  br i1 %i.db, label %_ZN3gmx14LogEntryWriterD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.ah
  %i.dc = load i64, ptr %i.co, align 8, !tbaa !203
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #23
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit35

_ZN3gmx14LogEntryWriterD2Ev.exit35:               ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ae, %_ZN3gmx14LogEntryWriterD2Ev.exit
  %i.de = load i32, ptr %i.cd, align 4, !tbaa !156
  %i.df = add nsw i32 %i.de, 2
  store i32 %i.df, ptr %i.cd, align 4, !tbaa !156
  %i.dg = load i8, ptr %0, align 8, !range !13
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.aj, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !313
  br label %_ZN3gmx16PmeLoadBalancing4Impl12addTwoStagesEb.exit

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !158 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !313
  br label %_ZN3gmx16PmeLoadBalancing4Impl12addTwoStagesEb.exit

_ZN3gmx16PmeLoadBalancing4Impl12addTwoStagesEb.exit: ; preds = %._crit_edge.i, %bb.aj
  %i.dl = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.dj, %bb.aj ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !314
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dn, align 8, !tbaa !155
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !205, !nonnull !14, !align !206
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !207
  %i.dr = mul nsw i32 %i.dq, 50
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %8, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !208
  br label %bb.al

bb.ak:                                            ; preds = %bb.ad, %bb.ac
  store i8 0, ptr %i.a, align 1, !tbaa !34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN3gmx16PmeLoadBalancing4Impl12addTwoStagesEb.exit
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %.not51 = icmp eq ptr %i.dv, null
  br i1 %.not51, label %.thread81, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !441
  %i.dy = call noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistOuterRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %i.dx)
  call void @_Z21set_dd_dlb_max_cutoffP12gmx_domdec_tf(ptr noundef nonnull %i.dv, float noundef %i.dy)
  br label %.thread81

.thread81:                                        ; preds = %bb.u, %.thread79, %bb.al, %bb.am, %.thread80
end_hunk_0
