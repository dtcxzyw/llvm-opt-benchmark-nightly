Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/trjcat?download=true
inline.NumInlined: 430
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z10gmx_trjcatiPPc:bb.a

.noexc366:                                        ; preds = %.peel.next.i
  %i.rp = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %i.pw, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %4, i32 noundef 21)
          to label %bb.ey unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ey:                                            ; preds = %.noexc366
  %i.rq = load ptr, ptr %i.py, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i353 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i353, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i354, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.py, ptr noundef nonnull %i.rq) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i354

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i354: ; preds = %bb.ez, %bb.ey
  %i.rr = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.pz
  br i1 %i.rs, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i354
  %i.rt = load i64, ptr %i.pz, align 8, !tbaa !22
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i356

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i356:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.rp, label %bb.fc, label %.loopexit44.i

.loopexit44.i:                                    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i356, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.peel.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc367 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc367:                                        ; preds = %.loopexit44.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 102, ptr noundef nonnull @.str.97) #21
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %.noexc367
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc366, %.noexc360
  %lpad.loopexit.split-lp1152 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.fs

bb.fb:                                            ; preds = %.noexc367
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.fs

bb.fc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i356
  %i.rw = load i8, ptr %i.qa, align 8, !tbaa !96, !range !80, !noundef !81
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.ry = load float, ptr %i.qb, align 4, !tbaa !93
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.02738.i
  store float %i.ry, ptr %i.rz, align 4, !tbaa !86
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.02738.i
  store float 0.000000e+00, ptr %i.sa, align 4, !tbaa !86
  %i.sb = load ptr, ptr @stderr, align 8, !tbaa !75
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.79, i64 45, i64 1, ptr %i.sb) #23 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.sc = load i32, ptr %i.qd, align 8, !tbaa !92 ; 2 uses
  br i1 %i.qc, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %.not30.i = icmp eq i32 %i.qv, %i.sc
  br i1 %.not30.i, label %bb.fm, label %.loopexit46.i

.loopexit46.i:                                    ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc368 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc368:                                        ; preds = %.loopexit46.i
  %i.sd = load i32, ptr %i.qd, align 8, !tbaa !92
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 124, ptr noundef nonnull @.str.98, i32 noundef %i.qv, i32 noundef %i.sd) #21
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %.noexc368
  unreachable

bb.fi:                                            ; preds = %.noexc368
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.fs

bb.fj:                                            ; preds = %bb.ff
  %.not.i357 = icmp sgt i32 %i.sc, %.1500
  br i1 %.not.i357, label %bb.fm, label %.loopexit45.i

.loopexit45.i:                                    ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc369 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc369:                                        ; preds = %.loopexit45.i
  %i.sf = load i32, ptr %i.qd, align 8, !tbaa !92
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 131, ptr noundef nonnull @.str.99, i32 noundef %i.sf, i32 noundef %.1500) #21
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %.noexc369
  unreachable

bb.fl:                                            ; preds = %.noexc369
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.fs

bb.fm:                                            ; preds = %bb.fj, %bb.fg
  %i.sh = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.si = invoke noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef %i.pw, ptr noundef %i.sh, ptr noundef nonnull %4)
          to label %.noexc370 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc370:                                        ; preds = %bb.fm
  %i.sj = load i8, ptr %i.qa, align 8, !range !80
  %i.sk = trunc nuw i8 %i.sj to i1
  %or.cond.i = select i1 %i.si, i1 %i.sk, i1 false
  br i1 %or.cond.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.noexc370
  %i.sl = load float, ptr %i.qb, align 4, !tbaa !93
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.02738.i
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !86
  %i.so = fsub float %i.sl, %i.sn
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.noexc370
  %.sink47.i = phi float [ %i.so, %bb.fn ], [ 0.000000e+00, %.noexc370 ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %.02738.i
  store float %.sink47.i, ptr %i.sp, align 4, !tbaa !86
  %i.sq = load ptr, ptr %i.c, align 8, !tbaa !95
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.sq)
          to label %.noexc371 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc371:                                        ; preds = %bb.fo
  %i.sr = load i8, ptr %i.qe, align 8, !tbaa !97, !range !80, !noundef !81
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %bb.fp, label %.noexc372

bb.fp:                                            ; preds = %.noexc371
  %i.st = load ptr, ptr %i.qf, align 8, !tbaa !98
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.53, i32 noundef 148, ptr noundef %i.st)
          to label %.noexc372 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc372:                                        ; preds = %bb.fp, %.noexc371
  %i.su = load i8, ptr %i.qg, align 8, !tbaa !99, !range !80, !noundef !81
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.fq, label %.noexc373

bb.fq:                                            ; preds = %.noexc372
  %i.sw = load ptr, ptr %i.qh, align 8, !tbaa !100
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.53, i32 noundef 152, ptr noundef %i.sw)
          to label %.noexc373 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc373:                                        ; preds = %bb.fq, %.noexc372
  %i.sx = load i8, ptr %i.qi, align 8, !tbaa !101, !range !80, !noundef !81
  %i.sy = trunc nuw i8 %i.sx to i1
  br i1 %i.sy, label %bb.fr, label %.noexc374

bb.fr:                                            ; preds = %.noexc373
  %i.sz = load ptr, ptr %i.qj, align 8, !tbaa !102
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.53, i32 noundef 156, ptr noundef %i.sz)
          to label %.noexc374 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc374:                                        ; preds = %bb.fr, %.noexc373
  %i.ta = add nuw nsw i64 %.02738.i, 1            ; 2 uses
  %exitcond.not.i358 = icmp eq i64 %i.ta, %i.pr
  br i1 %exitcond.not.i358, label %.loopexit559, label %.peel.next.i, !llvm.loop !45

bb.fs:                                            ; preds = %bb.fl, %bb.fi, %bb.fb, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %i.se, %bb.fi ], [ %i.sg, %bb.fl ], [ %i.rv, %bb.fb ], [ %lpad.loopexit.split-lp1152, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.body375

.loopexit559:                                     ; preds = %.noexc374, %.noexc365, %bb.em
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i = call i32 @fputc(i32 10, ptr %i.tb)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.tc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.53, i32 noundef 643, i64 noundef %i.ps, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit379 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 34 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit379:       ; preds = %.loopexit559
  %i.td = ptrtoaddr ptr %i.tc to i64
  %i.te = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.53, i32 noundef 644, i64 noundef %i.ps, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit379
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.tf = icmp ugt i64 %i.pq, 9223372036854775776
  br i1 %i.tf, label %.noexc.i.i391, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i386

.noexc.i.i391:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #21
          to label %.noexc392 unwind label %bb.gz, !noalias !104

.noexc392:                                        ; preds = %.noexc.i.i391
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i386: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.tg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pq) #22
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i387 unwind label %bb.gz, !noalias !104 ; 4 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i387: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i386
  store ptr %i.tg, ptr %32, align 8, !tbaa !23, !alias.scope !104
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.pq
  %i.ti = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.th, ptr %i.ti, align 8, !tbaa !24, !alias.scope !104
  %i.tj = invoke noundef ptr @_ZSt16__do_uninit_copyIN3gmx12ArrayRefIterIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS7_ET0_T_SC_SB_(ptr nonnull %i.dz, ptr %i.ea, ptr noundef nonnull %i.tg)
          to label %bb.ft unwind label %.body.i390, !noalias !104 ; 4 uses

.body.i390:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i387
  %lpad.thr_comm.split-lp.i388 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %i.pq) #20, !noalias !104
  br label %.body394

bb.ft:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i387
  %i.tk = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  store ptr %i.tj, ptr %i.tk, align 8, !tbaa !25, !alias.scope !104
  %i.tl = load ptr, ptr %32, align 8, !tbaa !23   ; 10 uses
  %i.tm = ptrtoint ptr %i.tl to i64               ; 3 uses
  %i.tn = load i8, ptr @_ZZ10gmx_trjcatiPPcE8bSetTime, align 1, !tbaa !79, !range !80, !noundef !81
  %i.to = load i8, ptr @_ZZ10gmx_trjcatiPPcE5bSort, align 1, !tbaa !79, !range !80, !noundef !81
  %i.tp = trunc nuw i8 %i.to to i1                ; 7 uses
  %i.tq = load ptr, ptr %i.s, align 8, !tbaa !77  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_Z24output_env_get_time_unitB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.tq)
          to label %.noexc410 unwind label %bb.ha

.noexc410:                                        ; preds = %bb.ft
  %i.tr = trunc nuw i8 %i.tn to i1
  br i1 %i.tr, label %bb.fu, label %.preheader.i397

.preheader.i397:                                  ; preds = %.noexc410
  %i.ts = ptrtoint ptr %i.tj to i64
  %i.tt = sub i64 %i.ts, %i.tm                    ; 2 uses
  %i.tu = ashr exact i64 %i.tt, 5                 ; 10 uses
  %i.tv = icmp sgt i64 %i.tu, 0
  br i1 %i.tv, label %iter.check1067, label %.loopexit109.i

iter.check1067:                                   ; preds = %.preheader.i397
  %min.iters.check1053 = icmp ult i64 %i.tu, 4
  %i.tw = sub i64 %i.pu, %i.td
  %diff.check = icmp ugt i64 %i.tw, -128
  %or.cond1081 = or i1 %min.iters.check1053, %diff.check
  br i1 %or.cond1081, label %.lr.ph.i405.preheader, label %vector.main.loop.iter.check1054

vector.main.loop.iter.check1054:                  ; preds = %iter.check1067
  %min.iters.check1055 = icmp ult i64 %i.tu, 32
  br i1 %min.iters.check1055, label %vec.epilog.ph1071, label %vector.ph1056

vector.ph1056:                                    ; preds = %vector.main.loop.iter.check1054
  %n.vec1057 = and i64 %i.tu, 9223372036854775776 ; 4 uses
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.ph1056, %vector.body1058
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1064, %vector.body1058 ] ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index1059 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 96
  %wide.load1060 = load <8 x float>, ptr %i.tx, align 4, !tbaa !86
  %wide.load1061 = load <8 x float>, ptr %i.ty, align 4, !tbaa !86
  %wide.load1062 = load <8 x float>, ptr %i.tz, align 4, !tbaa !86
  %wide.load1063 = load <8 x float>, ptr %i.ua, align 4, !tbaa !86
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %index1059 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 32
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 96
  store <8 x float> %wide.load1060, ptr %i.ub, align 4, !tbaa !86
  store <8 x float> %wide.load1061, ptr %i.uc, align 4, !tbaa !86
  store <8 x float> %wide.load1062, ptr %i.ud, align 4, !tbaa !86
  store <8 x float> %wide.load1063, ptr %i.ue, align 4, !tbaa !86
  %index.next1064 = add nuw i64 %index1059, 32    ; 2 uses
  %i.uf = icmp eq i64 %index.next1064, %n.vec1057
  br i1 %i.uf, label %middle.block1065, label %vector.body1058, !llvm.loop !48

middle.block1065:                                 ; preds = %vector.body1058
  %cmp.n1066 = icmp eq i64 %i.tu, %n.vec1057
  br i1 %cmp.n1066, label %.loopexit109.i, label %vec.epilog.iter.check1068

vec.epilog.iter.check1068:                        ; preds = %middle.block1065
  %i.ug = and i64 %i.tt, 896
  %min.epilog.iters.check1070 = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check1070, label %.lr.ph.i405.preheader, label %vec.epilog.ph1071, !prof !105

vec.epilog.ph1071:                                ; preds = %vector.main.loop.iter.check1054, %vec.epilog.iter.check1068
  %vec.epilog.resume.val1072 = phi i64 [ %n.vec1057, %vec.epilog.iter.check1068 ], [ 0, %vector.main.loop.iter.check1054 ]
  %n.vec1073 = and i64 %i.tu, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body1074

vec.epilog.vector.body1074:                       ; preds = %vec.epilog.vector.body1074, %vec.epilog.ph1071
  %index1075 = phi i64 [ %vec.epilog.resume.val1072, %vec.epilog.ph1071 ], [ %index.next1077, %vec.epilog.vector.body1074 ] ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index1075
  %wide.load1076 = load <4 x float>, ptr %i.uh, align 4, !tbaa !86
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %index1075
  store <4 x float> %wide.load1076, ptr %i.ui, align 4, !tbaa !86
  %index.next1077 = add nuw i64 %index1075, 4     ; 2 uses
  %i.uj = icmp eq i64 %index.next1077, %n.vec1073
  br i1 %i.uj, label %vec.epilog.middle.block1078, label %vec.epilog.vector.body1074, !llvm.loop !49

vec.epilog.middle.block1078:                      ; preds = %vec.epilog.vector.body1074
  %cmp.n1079 = icmp eq i64 %i.tu, %n.vec1073
  br i1 %cmp.n1079, label %.loopexit109.i, label %.lr.ph.i405.preheader

.lr.ph.i405.preheader:                            ; preds = %iter.check1067, %vec.epilog.iter.check1068, %vec.epilog.middle.block1078
  %.064114.i.ph = phi i64 [ 0, %iter.check1067 ], [ %n.vec1057, %vec.epilog.iter.check1068 ], [ %n.vec1073, %vec.epilog.middle.block1078 ] ; 4 uses
  %i.uk = sub nsw i64 %i.tu, %.064114.i.ph
  %xtraiter = and i64 %i.uk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i405.prol.loopexit, label %.lr.ph.i405.prol

.lr.ph.i405.prol:                                 ; preds = %.lr.ph.i405.preheader, %.lr.ph.i405.prol
  %.064114.i.prol = phi i64 [ %i.uo, %.lr.ph.i405.prol ], [ %.064114.i.ph, %.lr.ph.i405.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i405.prol ], [ 0, %.lr.ph.i405.preheader ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.064114.i.prol
  %i.um = load float, ptr %i.ul, align 4, !tbaa !86
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.064114.i.prol
  store float %i.um, ptr %i.un, align 4, !tbaa !86
  %i.uo = add nuw nsw i64 %.064114.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i405.prol.loopexit, label %.lr.ph.i405.prol, !llvm.loop !50

.lr.ph.i405.prol.loopexit:                        ; preds = %.lr.ph.i405.prol, %.lr.ph.i405.preheader
  %.064114.i.unr = phi i64 [ %.064114.i.ph, %.lr.ph.i405.preheader ], [ %i.uo, %.lr.ph.i405.prol ]
  %i.up = sub nsw i64 %.064114.i.ph, %i.tu
  %i.uq = icmp ugt i64 %i.up, -8
  br i1 %i.uq, label %.loopexit109.i, label %.lr.ph.i405

bb.fu:                                            ; preds = %.noexc410
  %i.ur = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.us = load ptr, ptr %2, align 8, !tbaa !21
  %i.ut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ur, ptr noundef nonnull @.str.103, ptr noundef %i.us) #24 ; 0 uses
  %i.uu = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.uv = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.uw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uu, ptr noundef nonnull @.str.104, ptr noundef %i.uv, ptr noundef %i.uv) #24 ; 0 uses
  %i.ux = ptrtoint ptr %i.tj to i64
  %i.uy = sub i64 %i.ux, %i.tm
  %i.uz = ashr exact i64 %i.uy, 5                 ; 4 uses
  %i.va = icmp sgt i64 %i.uz, 0
  br i1 %i.va, label %.lr.ph120.i, label %._crit_edge121.i

._crit_edge121.i:                                 ; preds = %bb.gi, %bb.fu
  %.072.lcssa.i = phi i1 [ %i.tp, %bb.fu ], [ %.274.ph.i, %bb.gi ] ; 2 uses
  %i.vb = load i32, ptr %i.te, align 4, !tbaa !61
  %.not.i407 = icmp eq i32 %i.vb, 0
  br i1 %.not.i407, label %.loopexit109.i, label %.split.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ge, %bb.gq, %bb.gr, %.lr.ph120.i, %bb.gn, %bb.gm
  %lpad.loopexit.split-lp1146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.lr.ph120.i:                                      ; preds = %bb.fu, %bb.gi
  %.069118.i = phi i64 [ %i.wl, %bb.gi ], [ 0, %bb.fu ] ; 7 uses
  %.072117.i = phi i1 [ %.274.ph.i, %bb.gi ], [ %i.tp, %bb.fu ]
  %i.vc = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.vd = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %.069118.i
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !21
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.069118.i
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !86
  %i.vh = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tq, float noundef %i.vg)
          to label %bb.fv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %.lr.ph120.i
  %i.vi = fpext float %i.vh to double
  %i.vj = load ptr, ptr %2, align 8, !tbaa !21
  %i.vk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vc, ptr noundef nonnull @.str.105, ptr noundef %i.ve, double noundef %i.vi, ptr noundef %i.vj) #24 ; 0 uses
  %i.vl = load ptr, ptr @stdin, align 8, !tbaa !75
  %i.vm = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4095, ptr noundef %i.vl)
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %._crit_edge.i408, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.fv
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.069118.i ; 3 uses
  br label %bb.gb

._crit_edge.i408:                                 ; preds = %bb.fv, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %bb.fw unwind label %bb.fy

bb.fw:                                            ; preds = %._crit_edge.i408
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 229, ptr noundef nonnull @.str.106) #21
          to label %bb.fx unwind label %bb.fz

bb.fx:                                            ; preds = %bb.fw
  unreachable

bb.fy:                                            ; preds = %._crit_edge.i408
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fw
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #19
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.pn.i409 = phi { ptr, i32 } [ %i.vq, %bb.fz ], [ %i.vp, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.gb:                                            ; preds = %bb.gh, %.lr.ph115.i
  %i.vr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.vs = getelementptr i8, ptr %i.a, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 -1
  store i8 0, ptr %i.vt, align 1, !tbaa !22
  %i.vu = load i8, ptr %i.a, align 16, !tbaa !22
  %i.vv = and i8 %i.vu, -33
  switch i8 %i.vv, label %bb.ge [
    i8 67, label %bb.gc
    i8 76, label %bb.gd
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.069118.i
  store i32 1, ptr %i.vw, align 4, !tbaa !61
  store float f0x7B4097CE, ptr %i.vo, align 4, !tbaa !86
  br label %bb.gi

bb.gd:                                            ; preds = %bb.gb
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.069118.i
  store i32 2, ptr %i.vx, align 4, !tbaa !61
  store float f0x7B4097CE, ptr %i.vo, align 4, !tbaa !86
  br label %bb.gi

bb.ge:                                            ; preds = %bb.gb
  %i.vy = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19
  %i.vz = invoke noundef float @_Z29output_env_get_time_invfactorPK16gmx_output_env_t(ptr noundef %i.tq)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gf:                                            ; preds = %bb.ge
  %i.wa = fpext float %i.vz to double
  %i.wb = fmul double %i.vy, %i.wa
  %i.wc = fptrunc double %i.wb to float
  store float %i.wc, ptr %i.vo, align 4, !tbaa !86
  %i.wd = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.we = icmp eq ptr %i.wd, %i.a
  br i1 %i.we, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.069118.i
  store i32 0, ptr %i.wf, align 4, !tbaa !61
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  %i.wg = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.wh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wg, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.wi = load ptr, ptr @stdin, align 8, !tbaa !75
  %i.wj = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4095, ptr noundef %i.wi)
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %._crit_edge.i408, label %bb.gb

bb.gi:                                            ; preds = %bb.gg, %bb.gd, %bb.gc
  %.274.ph.i = phi i1 [ %.072117.i, %bb.gg ], [ false, %bb.gd ], [ false, %bb.gc ] ; 2 uses
  %i.wl = add nuw nsw i64 %.069118.i, 1           ; 2 uses
  %exitcond131.not.i = icmp eq i64 %i.wl, %i.uz
  br i1 %exitcond131.not.i, label %._crit_edge121.i, label %.lr.ph120.i, !llvm.loop !51

.split.i:                                         ; preds = %._crit_edge121.i
  store i32 0, ptr %i.te, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.tc, align 4, !tbaa !86
  br i1 %.072.lcssa.i, label %.loopexit109.i._crit_edge737, label %.loopexit109.i._crit_edge

.lr.ph.i405:                                      ; preds = %.lr.ph.i405.prol.loopexit, %.lr.ph.i405
  %.064114.i = phi i64 [ %i.xr, %.lr.ph.i405 ], [ %.064114.i.unr, %.lr.ph.i405.prol.loopexit ] ; 10 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.064114.i
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !86
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.064114.i
  store float %i.wn, ptr %i.wo, align 4, !tbaa !86
  %i.wp = add nuw nsw i64 %.064114.i, 1           ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.wp
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !86
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.wp
  store float %i.wr, ptr %i.ws, align 4, !tbaa !86
  %i.wt = add nuw nsw i64 %.064114.i, 2           ; 2 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.wt
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !86
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.wt
  store float %i.wv, ptr %i.ww, align 4, !tbaa !86
  %i.wx = add nuw nsw i64 %.064114.i, 3           ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.wx
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !86
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.wx
  store float %i.wz, ptr %i.xa, align 4, !tbaa !86
  %i.xb = add nuw nsw i64 %.064114.i, 4           ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.xb
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !86
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.xb
  store float %i.xd, ptr %i.xe, align 4, !tbaa !86
  %i.xf = add nuw nsw i64 %.064114.i, 5           ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.xf
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !86
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.xf
  store float %i.xh, ptr %i.xi, align 4, !tbaa !86
  %i.xj = add nuw nsw i64 %.064114.i, 6           ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.xj
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !86
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.xj
  store float %i.xl, ptr %i.xm, align 4, !tbaa !86
  %i.xn = add nuw nsw i64 %.064114.i, 7           ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.xn
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !86
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.xn
  store float %i.xp, ptr %i.xq, align 4, !tbaa !86
  %i.xr = add nuw nsw i64 %.064114.i, 8           ; 2 uses
  %exitcond.not.i406.7 = icmp eq i64 %i.xr, %i.tu
  br i1 %exitcond.not.i406.7, label %.loopexit109.i, label %.lr.ph.i405, !llvm.loop !52

.loopexit109.i:                                   ; preds = %.lr.ph.i405.prol.loopexit, %.lr.ph.i405, %middle.block1065, %vec.epilog.middle.block1078, %._crit_edge121.i, %.preheader.i397
  %.3.i = phi i1 [ %i.tp, %.preheader.i397 ], [ %.072.lcssa.i, %._crit_edge121.i ], [ %i.tp, %middle.block1065 ], [ %i.tp, %vec.epilog.middle.block1078 ], [ %i.tp, %.lr.ph.i405 ], [ %i.tp, %.lr.ph.i405.prol.loopexit ]
  %.pre740 = ptrtoint ptr %i.tj to i64
  %.pre742 = sub i64 %.pre740, %i.tm
  %.pre744 = ashr exact i64 %.pre742, 5           ; 2 uses
  br i1 %.3.i, label %.loopexit109.i._crit_edge737, label %.loopexit109.i._crit_edge

.loopexit109.i._crit_edge:                        ; preds = %.loopexit109.i, %.split.i
  %.pre143.i.pre-phi = phi i64 [ %i.uz, %.split.i ], [ %.pre744, %.loopexit109.i ]
  %i.xs = load ptr, ptr @stderr, align 8, !tbaa !75
  %fwrite.i398 = call i64 @fwrite(ptr nonnull @.str.108, i64 18, i64 1, ptr %i.xs) #23 ; 0 uses
  br label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i

.loopexit109.i._crit_edge737:                     ; preds = %.loopexit109.i, %.split.i
  %.pre-phi745 = phi i64 [ %i.uz, %.split.i ], [ %.pre744, %.loopexit109.i ] ; 8 uses
  %i.xt = icmp sgt i64 %.pre-phi745, 0
  br i1 %i.xt, label %.lr.ph32.i.i.preheader, label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i

.lr.ph32.i.i.preheader:                           ; preds = %.loopexit109.i._crit_edge737
  %i.xu = add nsw i64 %.pre-phi745, -2
  br label %.lr.ph32.i.i

_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i: ; preds = %.loopexit109.i._crit_edge737
  %i.xv = load ptr, ptr @stderr, align 8, !tbaa !75
  %fwrite77157.i = call i64 @fwrite(ptr nonnull @.str.109, i64 156, i64 1, ptr %i.xv) #23 ; 0 uses
  br label %._crit_edge125.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader, %._crit_edge.thread.i.i
  %.030.i.i = phi i64 [ %i.xx, %._crit_edge.thread.i.i ], [ 0, %.lr.ph32.i.i.preheader ] ; 8 uses
  %i.xw = sub i64 %i.xu, %.030.i.i
  %i.xx = add nuw nsw i64 %.030.i.i, 1            ; 5 uses
  %i.xy = icmp slt i64 %i.xx, %.pre-phi745
  br i1 %i.xy, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph32.i.i
  %i.xz = xor i64 %.030.i.i, -1
  %i.ya = add nsw i64 %.pre-phi745, %i.xz
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.030.i.i ; 2 uses
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !86 ; 3 uses
  %xtraiter1162 = and i64 %i.ya, 7                ; 2 uses
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1163.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %51 = phi float [ %52, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02329.i.i.prol.a = phi i64 [ %i.ye, %.lr.ph.i.i.prol ], [ %i.xx, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02428.i.i.prol = phi i64 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %.030.i.i, %.lr.ph.preheader.i.i ]
  %prol.iter1164 = phi i64 [ %prol.iter1164.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.02329.i.i.prol.a
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !86 ; 2 uses
  %i.yd = fcmp olt float %i.yc, %51               ; 2 uses
  %spec.select.i.i.prol = select i1 %i.yd, i64 %.02329.i.i.prol.a, i64 %.02428.i.i.prol ; 3 uses
  %i.ye = add nuw nsw i64 %.02329.i.i.prol.a, 1   ; 2 uses
  %52 = select i1 %i.yd, float %i.yc, float %51   ; 2 uses
  %prol.iter1164.next = add i64 %prol.iter1164, 1 ; 2 uses
  %prol.iter1164.cmp.not = icmp eq i64 %prol.iter1164.next, %xtraiter1162
  br i1 %prol.iter1164.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !53

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi float [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %52, %.lr.ph.i.i.prol ]
  %.02329.i.i.unr = phi i64 [ %i.xx, %.lr.ph.preheader.i.i ], [ %i.ye, %.lr.ph.i.i.prol ]
  %.02428.i.i.unr = phi i64 [ %.030.i.i, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.yf = icmp ult i64 %i.xw, 7
  br i1 %i.yf, label %._crit_edge.i.i403, label %.lr.ph.i.i

._crit_edge.i.i403:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %spec.select.i.i.lcssa = phi i64 [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i404 = icmp eq i64 %spec.select.i.i.lcssa, %.030.i.i
  br i1 %.not.i.i404, label %._crit_edge.thread.i.i, label %bb.gj

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %53 = phi float [ %61, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02329.i.i.a = phi i64 [ %i.zl, %.lr.ph.i.i ], [ %.02329.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.02428.i.i = phi i64 [ %spec.select.i.i.7, %.lr.ph.i.i ], [ %.02428.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.02329.i.i.a
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !86 ; 2 uses
  %i.yi = fcmp olt float %i.yh, %53               ; 2 uses
  %spec.select.i.i = select i1 %i.yi, i64 %.02329.i.i.a, i64 %.02428.i.i
  %i.yj = add nuw nsw i64 %.02329.i.i.a, 1        ; 2 uses
  %54 = select i1 %i.yi, float %i.yh, float %53   ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.yj
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !86 ; 2 uses
  %i.ym = fcmp olt float %i.yl, %54               ; 2 uses
  %spec.select.i.i.1 = select i1 %i.ym, i64 %i.yj, i64 %spec.select.i.i
  %i.yn = add nuw nsw i64 %.02329.i.i.a, 2        ; 2 uses
  %55 = select i1 %i.ym, float %i.yl, float %54   ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.yn
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !86 ; 2 uses
  %i.yq = fcmp olt float %i.yp, %55               ; 2 uses
  %spec.select.i.i.2 = select i1 %i.yq, i64 %i.yn, i64 %spec.select.i.i.1
  %i.yr = add nuw nsw i64 %.02329.i.i.a, 3        ; 2 uses
  %56 = select i1 %i.yq, float %i.yp, float %55   ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.yr
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !86 ; 2 uses
  %i.yu = fcmp olt float %i.yt, %56               ; 2 uses
  %spec.select.i.i.3 = select i1 %i.yu, i64 %i.yr, i64 %spec.select.i.i.2
  %i.yv = add nuw nsw i64 %.02329.i.i.a, 4        ; 2 uses
  %57 = select i1 %i.yu, float %i.yt, float %56   ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.yv
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !86 ; 2 uses
  %i.yy = fcmp olt float %i.yx, %57               ; 2 uses
  %spec.select.i.i.4 = select i1 %i.yy, i64 %i.yv, i64 %spec.select.i.i.3
  %i.yz = add nuw nsw i64 %.02329.i.i.a, 5        ; 2 uses
  %58 = select i1 %i.yy, float %i.yx, float %57   ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.yz
  %i.zb = load float, ptr %i.za, align 4, !tbaa !86 ; 2 uses
  %i.zc = fcmp olt float %i.zb, %58               ; 2 uses
  %spec.select.i.i.5 = select i1 %i.zc, i64 %i.yz, i64 %spec.select.i.i.4
  %i.zd = add nuw nsw i64 %.02329.i.i.a, 6        ; 2 uses
  %59 = select i1 %i.zc, float %i.zb, float %58   ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.zd
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !86 ; 2 uses
  %i.zg = fcmp olt float %i.zf, %59               ; 2 uses
  %spec.select.i.i.6 = select i1 %i.zg, i64 %i.zd, i64 %spec.select.i.i.5
  %i.zh = add nuw nsw i64 %.02329.i.i.a, 7        ; 2 uses
  %60 = select i1 %i.zg, float %i.zf, float %59   ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.zh
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !86 ; 2 uses
  %i.zk = fcmp olt float %i.zj, %60               ; 2 uses
  %spec.select.i.i.7 = select i1 %i.zk, i64 %i.zh, i64 %spec.select.i.i.6 ; 2 uses
  %i.zl = add nuw nsw i64 %.02329.i.i.a, 8        ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.zl, %.pre-phi745
  %61 = select i1 %i.zk, float %i.zj, float %60
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i403, label %.lr.ph.i.i, !llvm.loop !54

bb.gj:                                            ; preds = %._crit_edge.i.i403
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %spec.select.i.i.lcssa ; 2 uses
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !86
  store float %i.zn, ptr %.phi.trans.insert.i.i, align 4, !tbaa !86
  store float %.pre.i.i, ptr %i.zm, align 4, !tbaa !86
  %i.zo = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %.030.i.i
  %i.zp = getelementptr inbounds [32 x i8], ptr %i.tl, i64 %spec.select.i.i.lcssa
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.zo, ptr noundef nonnull align 8 dereferenceable(32) %i.zp) #19
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.gj, %._crit_edge.i.i403, %.lr.ph32.i.i
  %exitcond34.not.i.i = icmp eq i64 %i.xx, %.pre-phi745
  br i1 %exitcond34.not.i.i, label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i, label %.lr.ph32.i.i, !llvm.loop !55

_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i: ; preds = %._crit_edge.thread.i.i, %.loopexit109.i._crit_edge
  %.pre-phi144.i = phi i64 [ %.pre143.i.pre-phi, %.loopexit109.i._crit_edge ], [ %.pre-phi745, %._crit_edge.thread.i.i ] ; 5 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !75
  %fwrite77.i = call i64 @fwrite(ptr nonnull @.str.109, i64 156, i64 1, ptr %i.zq) #23 ; 0 uses
  %i.zr = icmp sgt i64 %.pre-phi144.i, 0
  br i1 %i.zr, label %.lr.ph124.preheader.i, label %._crit_edge125.i

.lr.ph124.preheader.i:                            ; preds = %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i
  %i.zs = load i32, ptr %i.te, align 4, !tbaa !61
  switch i32 %i.zs, label %bb.gp [
    i32 0, label %bb.gm
    i32 1, label %bb.gl
    i32 2, label %bb.gk
  ]

bb.gk:                                            ; preds = %.lr.ph124.preheader.i
  %i.zt = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.zu = load ptr, ptr %i.tl, align 8, !tbaa !21
  %i.zv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zt, ptr noundef nonnull @.str.113, ptr noundef %i.zu) #24 ; 0 uses
  br label %bb.gp

bb.gl:                                            ; preds = %.lr.ph124.preheader.i
  %i.zw = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.zx = load ptr, ptr %i.tl, align 8, !tbaa !21
  %i.zy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zw, ptr noundef nonnull @.str.112, ptr noundef %i.zx) #24 ; 0 uses
  br label %bb.gp

bb.gm:                                            ; preds = %.lr.ph124.preheader.i
  %i.zz = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aaa = load ptr, ptr %i.tl, align 8, !tbaa !21
  %i.aab = load float, ptr %i.tc, align 4, !tbaa !86
  %i.aac = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tq, float noundef %i.aab)
          to label %bb.gn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gn:                                            ; preds = %bb.gm
  %i.aad = load ptr, ptr %2, align 8, !tbaa !21
  %i.aae = load float, ptr %i.pv, align 4, !tbaa !86
  %i.aaf = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tq, float noundef %i.aae)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.go:                                            ; preds = %bb.gn
  %i.aag = fpext float %i.aac to double
  %i.aah = fpext float %i.aaf to double
  %i.aai = load ptr, ptr %2, align 8, !tbaa !21
  %i.aaj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zz, ptr noundef nonnull @.str.110, ptr noundef %i.aaa, double noundef %i.aag, ptr noundef %i.aad, double noundef %i.aah, ptr noundef %i.aai) #24 ; 0 uses
  %i.aak = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc82.peel.i = call i32 @fputc(i32 10, ptr %i.aak) ; 0 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gl, %bb.gk, %.lr.ph124.preheader.i
  %exitcond132.peel.not.i = icmp eq i64 %.pre-phi144.i, 1
  br i1 %exitcond132.peel.not.i, label %._crit_edge125.i, label %.lr.ph124.i

._crit_edge125.i:                                 ; preds = %bb.gy, %bb.gp, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i
  %.pre-phi144158.i = phi i64 [ %.pre-phi745, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i ], [ %.pre-phi144.i, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i ], [ 1, %bb.gp ], [ %.pre-phi144.i, %bb.gy ] ; 3 uses
  %i.aal = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i400 = call i32 @fputc(i32 10, ptr %i.aal) ; 0 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.pre-phi144158.i
  store float f0x7B4097CE, ptr %i.aam, align 4, !tbaa !86
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.pre-phi144158.i
  store i32 0, ptr %i.aan, align 4, !tbaa !61
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.pre-phi144158.i
  store float f0x7B4097CE, ptr %i.aao, align 4, !tbaa !86
  %i.aap = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401: ; preds = %._crit_edge125.i
  %i.aas = load i64, ptr %i.aaq, align 8, !tbaa !22
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aat) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402

.lr.ph124.i:                                      ; preds = %bb.gp, %bb.gy
  %.0122.i = phi i64 [ %i.acc, %bb.gy ], [ 1, %bb.gp ] ; 8 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.0122.i
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !61
  switch i32 %i.aav, label %bb.gy [
    i32 0, label %bb.gq
    i32 1, label %bb.gw
    i32 2, label %bb.gx
  ]

bb.gq:                                            ; preds = %.lr.ph124.i
  %i.aaw = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aax = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %.0122.i
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !21
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.0122.i ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !86
  %i.abb = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tq, float noundef %i.aba)
          to label %bb.gr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gr:                                            ; preds = %bb.gq
  %i.abc = load ptr, ptr %2, align 8, !tbaa !21
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %.0122.i
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !86
  %i.abf = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tq, float noundef %i.abe)
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %bb.gr
  %i.abg = fpext float %i.abb to double
  %i.abh = fpext float %i.abf to double
  %i.abi = load ptr, ptr %2, align 8, !tbaa !21
  %i.abj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aaw, ptr noundef nonnull @.str.110, ptr noundef %i.aay, double noundef %i.abg, ptr noundef %i.abc, double noundef %i.abh, ptr noundef %i.abi) #24 ; 0 uses
  %i.abk = add nsw i64 %.0122.i, -1               ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !61
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.abo = load float, ptr %i.aaz, align 4, !tbaa !86
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.abk
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !86
  %i.abr = fcmp oeq float %i.abo, %i.abq
  br i1 %i.abr, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.abs = load ptr, ptr @stderr, align 8, !tbaa !75
  %fwrite80.i = call i64 @fwrite(ptr nonnull @.str.111, i64 37, i64 1, ptr %i.abs) #23 ; 0 uses
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %i.abt = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc82.i = call i32 @fputc(i32 10, ptr %i.abt) ; 0 uses
  br label %bb.gy

bb.gw:                                            ; preds = %.lr.ph124.i
  %i.abu = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.abv = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %.0122.i
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !21
  %i.abx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.112, ptr noundef %i.abw) #24 ; 0 uses
  br label %bb.gy

bb.gx:                                            ; preds = %.lr.ph124.i
  %i.aby = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.abz = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %.0122.i
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !21
  %i.acb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aby, ptr noundef nonnull @.str.113, ptr noundef %i.aca) #24 ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %.lr.ph124.i
  %i.acc = add nuw nsw i64 %.0122.i, 1            ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.acc, %.pre-phi144.i
  br i1 %exitcond132.not.i, label %._crit_edge125.i, label %.lr.ph124.i, !llvm.loop !56

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ga
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i409, %bb.ga ], [ %lpad.loopexit.split-lp1146, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.acd = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.acf = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i
  %i.acg = load i64, ptr %i.ace, align 8, !tbaa !22
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.ach) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402: ; preds = %._crit_edge125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  %i.aci = load ptr, ptr %i.ez, align 8, !tbaa !21 ; 2 uses
  store ptr %i.aci, ptr %i.u, align 8, !tbaa !16
  %i.acj = invoke noundef i32 @_Z6fn2ftpPKc(ptr noundef %i.aci)
          to label %.preheader540 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader540:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402
  %i.ack = load ptr, ptr %i.tk, align 8, !tbaa !25 ; 2 uses
  %i.acl = load ptr, ptr %32, align 8, !tbaa !23  ; 3 uses
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = sub i64 %i.acm, %i.acn
  %i.acp = ashr exact i64 %i.aco, 5
  %.not645 = icmp eq ptr %i.ack, %i.acl
  br i1 %.not645, label %._crit_edge622.thread, label %.lr.ph621

.lr.ph621:                                        ; preds = %.preheader540
  %i.acq = load ptr, ptr %i.u, align 8, !tbaa !16
  br label %bb.hb

._crit_edge622:                                   ; preds = %bb.hb
end_hunk_0
