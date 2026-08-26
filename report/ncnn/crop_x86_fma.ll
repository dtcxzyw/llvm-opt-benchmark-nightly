Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/crop_x86_fma?download=true
inline.NumInlined: 86
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK4ncnn12Crop_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !25
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !32
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = mul i64 %i.aja, %i.ajd
  %i.ajf = icmp eq i64 %i.aje, 0
  br i1 %i.ajf, label %_ZNK4ncnn3Mat5emptyEv.exit686.thread, label %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge

_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge:         ; preds = %_ZNK4ncnn3Mat5emptyEv.exit686
  %.pre830 = load i32, ptr %i.f, align 4, !tbaa !49
  %.pre831 = load i32, ptr %i.g, align 4, !tbaa !49
  %.pre832 = load i32, ptr %i.h, align 4, !tbaa !49
  %.pre833 = load i32, ptr %i.i, align 4, !tbaa !49
  %.pre844 = sdiv i32 %.pre833, 8
  br label %bb.gy

bb.gp:                                            ; preds = %bb.fz
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit411

bb.gq:                                            ; preds = %bb.gg
  %i.ajh = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.aji = load ptr, ptr %.phi.trans.insert828, align 8, !tbaa !18 ; 2 uses
  %.not.i473 = icmp eq ptr %i.aji, null
  br i1 %.not.i473, label %_ZN4ncnn3MatD2Ev.exit411, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ajj = atomicrmw add ptr %i.aji, i32 -1 acq_rel, align 4
  %i.ajk = icmp eq i32 %i.ajj, 1
  br i1 %i.ajk, label %bb.gs, label %_ZN4ncnn3MatD2Ev.exit411

bb.gs:                                            ; preds = %bb.gr
  %i.ajl = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ajm = load ptr, ptr %i.ajl, align 16, !tbaa !22 ; 3 uses
  %.not3.i474 = icmp eq ptr %i.ajm, null
  %i.ajn = load ptr, ptr %11, align 16, !tbaa !23 ; 3 uses
  br i1 %.not3.i474, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ajo = load ptr, ptr %i.ajm, align 8, !tbaa !9
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8
  invoke void %i.ajq(ptr noundef nonnull align 8 dereferenceable(8) %i.ajm, ptr noundef %i.ajn)
          to label %_ZN4ncnn3MatD2Ev.exit411 unwind label %bb.gw, !inline_history !24

bb.gu:                                            ; preds = %bb.gs
  %.not.i548 = icmp eq ptr %i.ajn, null
  br i1 %.not.i548, label %_ZN4ncnn3MatD2Ev.exit411, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @free(ptr noundef nonnull %i.ajn) #13
  br label %_ZN4ncnn3MatD2Ev.exit411

bb.gw:                                            ; preds = %bb.gt
  %i.ajr = landingpad { ptr, i32 }
          catch ptr null
  %i.ajs = extractvalue { ptr, i32 } %i.ajr, 0
  call void @__clang_call_terminate(ptr %i.ajs) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit411:                         ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gq, %bb.gr, %bb.gp
  %.pn356 = phi { ptr, i32 } [ %i.ajg, %bb.gp ], [ %i.ajh, %bb.gr ], [ %i.ajh, %bb.gq ], [ %i.ajh, %bb.gt ], [ %i.ajh, %bb.gu ], [ %i.ajh, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.hh

bb.gx:                                            ; preds = %bb.gy
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.gy:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge, %bb.fy
  %.pre-phi845 = phi i32 [ %.pre844, %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge ], [ %i.afy, %bb.fy ]
  %i.aju = phi i32 [ %.pre832, %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge ], [ %i.ael, %bb.fy ]
  %i.ajv = phi i32 [ %.pre831, %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge ], [ %i.aej, %bb.fy ]
  %i.ajw = phi i32 [ %.pre830, %_ZNK4ncnn3Mat5emptyEv.exit686._crit_edge ], [ %i.aeh, %bb.fy ]
  %i.ajx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !73
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef %i.ajw, i32 noundef %i.ajv, i32 noundef %i.aju, i32 noundef %.pre-phi845, i64 noundef %i.aeg, i32 noundef 8, ptr noundef %i.ajy)
          to label %bb.gz unwind label %bb.gx

bb.gz:                                            ; preds = %bb.gy
  %i.ajz = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %_ZNK4ncnn3Mat5emptyEv.exit686.thread, label %_ZNK4ncnn3Mat5emptyEv.exit685

_ZNK4ncnn3Mat5emptyEv.exit685:                    ; preds = %bb.gz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !25
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ake = load i32, ptr %i.akd, align 8, !tbaa !32
  %i.akf = sext i32 %i.ake to i64
  %i.akg = mul i64 %i.akc, %i.akf
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %_ZNK4ncnn3Mat5emptyEv.exit686.thread, label %bb.ha

bb.ha:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit685
  %i.aki = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.akj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn12Crop_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.aa, ptr nonnull %i.h, ptr nonnull %10, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  br label %_ZNK4ncnn3Mat5emptyEv.exit686.thread

_ZNK4ncnn3Mat5emptyEv.exit686.thread:             ; preds = %bb.gz, %_ZN4ncnn3MatD2Ev.exit412, %_ZNK4ncnn3Mat5emptyEv.exit685, %_ZNK4ncnn3Mat5emptyEv.exit686, %bb.ha
  %.7 = phi i32 [ 0, %bb.ha ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit686 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit685 ], [ -100, %_ZN4ncnn3MatD2Ev.exit412 ], [ -100, %bb.gz ]
  %i.akk = load ptr, ptr %i.agk, align 8, !tbaa !18 ; 2 uses
  %.not.i477 = icmp eq ptr %i.akk, null
  br i1 %.not.i477, label %_ZN4ncnn3MatD2Ev.exit410, label %bb.hb

bb.hb:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit686.thread
  %i.akl = atomicrmw add ptr %i.akk, i32 -1 acq_rel, align 4
  %i.akm = icmp eq i32 %i.akl, 1
  br i1 %i.akm, label %bb.hc, label %_ZN4ncnn3MatD2Ev.exit410

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load ptr, ptr %i.agn, align 8, !tbaa !22 ; 3 uses
  %.not3.i478 = icmp eq ptr %i.akn, null
  %i.ako = load ptr, ptr %10, align 8, !tbaa !23  ; 3 uses
  br i1 %.not3.i478, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.akp = load ptr, ptr %i.akn, align 8, !tbaa !9
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 24
  %i.akr = load ptr, ptr %i.akq, align 8
  invoke void %i.akr(ptr noundef nonnull align 8 dereferenceable(8) %i.akn, ptr noundef %i.ako)
          to label %_ZN4ncnn3MatD2Ev.exit410 unwind label %bb.hg, !inline_history !24

bb.he:                                            ; preds = %bb.hc
  %.not.i546 = icmp eq ptr %i.ako, null
  br i1 %.not.i546, label %_ZN4ncnn3MatD2Ev.exit410, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @free(ptr noundef nonnull %i.ako) #13
  br label %_ZN4ncnn3MatD2Ev.exit410

bb.hg:                                            ; preds = %bb.hd
  %i.aks = landingpad { ptr, i32 }
          catch ptr null
  %i.akt = extractvalue { ptr, i32 } %i.aks, 0
  call void @__clang_call_terminate(ptr %i.akt) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit410:                         ; preds = %bb.hb, %_ZNK4ncnn3Mat5emptyEv.exit686.thread, %bb.hd, %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.hh:                                            ; preds = %bb.gx, %_ZN4ncnn3MatD2Ev.exit411
  %.pn358 = phi { ptr, i32 } [ %i.ajt, %bb.gx ], [ %.pn356, %_ZN4ncnn3MatD2Ev.exit411 ]
  %i.aku = load ptr, ptr %i.agk, align 8, !tbaa !18 ; 2 uses
  %.not.i481 = icmp eq ptr %i.aku, null
  br i1 %.not.i481, label %_ZN4ncnn3MatD2Ev.exit409, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.akv = atomicrmw add ptr %i.aku, i32 -1 acq_rel, align 4
  %i.akw = icmp eq i32 %i.akv, 1
  br i1 %i.akw, label %bb.hj, label %_ZN4ncnn3MatD2Ev.exit409

bb.hj:                                            ; preds = %bb.hi
  %i.akx = load ptr, ptr %i.agn, align 8, !tbaa !22 ; 3 uses
  %.not3.i482 = icmp eq ptr %i.akx, null
  %i.aky = load ptr, ptr %10, align 8, !tbaa !23  ; 3 uses
  br i1 %.not3.i482, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.akz = load ptr, ptr %i.akx, align 8, !tbaa !9
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 24
  %i.alb = load ptr, ptr %i.ala, align 8
  invoke void %i.alb(ptr noundef nonnull align 8 dereferenceable(8) %i.akx, ptr noundef %i.aky)
          to label %_ZN4ncnn3MatD2Ev.exit409 unwind label %bb.hn, !inline_history !24

bb.hl:                                            ; preds = %bb.hj
  %.not.i544 = icmp eq ptr %i.aky, null
  br i1 %.not.i544, label %_ZN4ncnn3MatD2Ev.exit409, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @free(ptr noundef nonnull %i.aky) #13
  br label %_ZN4ncnn3MatD2Ev.exit409

bb.hn:                                            ; preds = %bb.hk
  %i.alc = landingpad { ptr, i32 }
          catch ptr null
  %i.ald = extractvalue { ptr, i32 } %i.alc, 0
  call void @__clang_call_terminate(ptr %i.ald) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit409:                         ; preds = %bb.hi, %bb.hh, %bb.hk, %bb.hl, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.oo

bb.ho:                                            ; preds = %bb.cd
  switch i32 %i.v, label %_ZN4ncnn3MataSERKS0_.exit597 [
    i32 1, label %bb.hp
    i32 2, label %bb.ie
    i32 3, label %bb.iu
    i32 4, label %bb.kw
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.ale = load i32, ptr %i.f, align 4, !tbaa !49 ; 3 uses
  %i.alf = and i32 %i.ale, 3
  %i.alg = icmp eq i32 %i.alf, 0                  ; 3 uses
  %i.alh = select i1 %i.alg, i32 4, i32 1         ; 2 uses
  %i.ali = load i64, ptr %i.a, align 8, !tbaa !35
  %i.alj = lshr i64 %i.ali, 2
  %i.alk = select i1 %i.alg, i64 2, i64 0
  %i.all = shl nuw i64 %i.alj, %i.alk
  %i.alm = sdiv i32 %i.ale, %i.alh                ; 2 uses
  %i.aln = icmp eq i32 %i.alm, %i.n
  %or.cond27 = and i1 %i.alg, %i.aln
  br i1 %or.cond27, label %bb.hq, label %bb.hz

bb.hq:                                            ; preds = %bb.hp
  %i.alo = icmp eq ptr %i.aa, %i.k
  br i1 %i.alo, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.alp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !18 ; 2 uses
  %.not.i620 = icmp eq ptr %i.alq, null
  br i1 %.not.i620, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.alr = atomicrmw add ptr %i.alq, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.als = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !18 ; 2 uses
  %.not.i.i621 = icmp eq ptr %i.alt, null
  br i1 %.not.i.i621, label %_ZN4ncnn3Mat7releaseEv.exit.i622, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.alu = atomicrmw add ptr %i.alt, i32 -1 acq_rel, align 4
  %i.alv = icmp eq i32 %i.alu, 1
  br i1 %i.alv, label %bb.hv, label %_ZN4ncnn3Mat7releaseEv.exit.i622

bb.hv:                                            ; preds = %bb.hu
  %i.alw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !22 ; 3 uses
  %.not3.i.i623 = icmp eq ptr %i.alx, null
  %i.aly = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 3 uses
  br i1 %.not3.i.i623, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.alz = load ptr, ptr %i.alx, align 8, !tbaa !9
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 24
  %i.amb = load ptr, ptr %i.ama, align 8
  call void %i.amb(ptr noundef nonnull align 8 dereferenceable(8) %i.alx, ptr noundef %i.aly), !inline_history !72
  br label %_ZN4ncnn3Mat7releaseEv.exit.i622

bb.hx:                                            ; preds = %bb.hv
  %.not.i18.i624 = icmp eq ptr %i.aly, null
  br i1 %.not.i18.i624, label %_ZN4ncnn3Mat7releaseEv.exit.i622, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @free(ptr noundef nonnull %i.aly) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i622

_ZN4ncnn3Mat7releaseEv.exit.i622:                 ; preds = %bb.hx, %bb.hy, %bb.hw, %bb.hu, %bb.ht
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ame = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  store i64 0, ptr %i.amg, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ame, i8 0, i64 20, i1 false)
  %i.amh = load <2 x ptr>, ptr %i.k, align 8, !tbaa !48
  store <2 x ptr> %i.amh, ptr %i.aa, align 8, !tbaa !48
  %i.ami = load i64, ptr %i.w, align 8, !tbaa !34
  store i64 %i.ami, ptr %i.amc, align 8, !tbaa !34
  %i.amj = load i32, ptr %i.y, align 8, !tbaa !36
  store i32 %i.amj, ptr %i.amd, align 8, !tbaa !36
  %i.amk = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !22
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.aml, ptr %i.amm, align 8, !tbaa !22
  %i.amn = load <4 x i32>, ptr %i.u, align 8, !tbaa !49
  store <4 x i32> %i.amn, ptr %i.ame, align 8, !tbaa !49
  %i.amo = load i32, ptr %i.s, align 8, !tbaa !32
  store i32 %i.amo, ptr %i.amf, align 8, !tbaa !32
  %i.amp = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !25
  store i64 %i.amq, ptr %i.amg, align 8, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.hz:                                            ; preds = %bb.hp
  %i.amr = load i32, ptr %i.b, align 4, !tbaa !49
  %i.ams = or i32 %i.amr, %i.ale
  %i.amt = and i32 %i.ams, 3
  %or.cond29 = icmp eq i32 %i.amt, 0
  br i1 %or.cond29, label %bb.ia, label %_ZN4ncnn3MataSERKS0_.exit597

bb.ia:                                            ; preds = %bb.hz
  %i.amu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !73
  call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef %i.alm, i64 noundef %i.all, i32 noundef %i.alh, ptr noundef %i.amv)
  %i.amw = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.amx = icmp eq ptr %i.amw, null
  br i1 %i.amx, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %_ZNK4ncnn3Mat5emptyEv.exit684

_ZNK4ncnn3Mat5emptyEv.exit684:                    ; preds = %bb.ia
  %i.amy = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !25
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.anb = load i32, ptr %i.ana, align 8, !tbaa !32
  %i.anc = sext i32 %i.anb to i64
  %i.and = mul i64 %i.amz, %i.anc
  %i.ane = icmp eq i64 %i.and, 0
  br i1 %i.ane, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %bb.ib

bb.ib:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit684
  %i.anf = load i64, ptr %i.a, align 8, !tbaa !35
  %i.ang = icmp eq i64 %i.anf, 8
  %i.anh = load i32, ptr %i.b, align 4, !tbaa !49
  %i.ani = sdiv i32 %i.anh, 4                     ; 2 uses
  br i1 %i.ang, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  call fastcc void @_ZN4ncnnL26crop_pack4_bf16s_fp16s_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef 0, i32 noundef %i.ani)
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.id:                                            ; preds = %bb.ib
  call fastcc void @_ZN4ncnnL14crop_pack4_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef 0, i32 noundef %i.ani)
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.ie:                                            ; preds = %bb.ho
  %i.anj = load i32, ptr %i.g, align 4, !tbaa !49 ; 4 uses
  %i.ank = and i32 %i.anj, 3
  %i.anl = icmp eq i32 %i.ank, 0                  ; 4 uses
  %i.anm = load i64, ptr %i.a, align 8, !tbaa !35
  %i.ann = lshr i64 %i.anm, 2
  %i.ano = select i1 %i.anl, i64 2, i64 0
  %i.anp = shl nuw i64 %i.ann, %i.ano
  %i.anq = load i32, ptr %i.f, align 4, !tbaa !49 ; 2 uses
  %i.anr = icmp eq i32 %i.anq, %i.n
  br i1 %i.anr, label %bb.if, label %bb.ip

bb.if:                                            ; preds = %bb.ie
  %i.ans = sdiv i32 %i.anj, 4
  %i.ant = select i1 %i.anl, i32 %i.ans, i32 %i.anj
  %i.anu = icmp eq i32 %i.ant, %i.p
  %or.cond31 = and i1 %i.anl, %i.anu
  br i1 %or.cond31, label %bb.ig, label %bb.ip

bb.ig:                                            ; preds = %bb.if
  %i.anv = icmp eq ptr %i.aa, %i.k
  br i1 %i.anv, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.anw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !18 ; 2 uses
  %.not.i613 = icmp eq ptr %i.anx, null
  br i1 %.not.i613, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.any = atomicrmw add ptr %i.anx, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.anz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !18 ; 2 uses
  %.not.i.i614 = icmp eq ptr %i.aoa, null
  br i1 %.not.i.i614, label %_ZN4ncnn3Mat7releaseEv.exit.i615, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aob = atomicrmw add ptr %i.aoa, i32 -1 acq_rel, align 4
  %i.aoc = icmp eq i32 %i.aob, 1
  br i1 %i.aoc, label %bb.il, label %_ZN4ncnn3Mat7releaseEv.exit.i615

bb.il:                                            ; preds = %bb.ik
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !22 ; 3 uses
  %.not3.i.i616 = icmp eq ptr %i.aoe, null
  %i.aof = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 3 uses
  br i1 %.not3.i.i616, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aog = load ptr, ptr %i.aoe, align 8, !tbaa !9
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aoi = load ptr, ptr %i.aoh, align 8
  call void %i.aoi(ptr noundef nonnull align 8 dereferenceable(8) %i.aoe, ptr noundef %i.aof), !inline_history !72
  br label %_ZN4ncnn3Mat7releaseEv.exit.i615

bb.in:                                            ; preds = %bb.il
  %.not.i18.i617 = icmp eq ptr %i.aof, null
  br i1 %.not.i18.i617, label %_ZN4ncnn3Mat7releaseEv.exit.i615, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @free(ptr noundef nonnull %i.aof) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i615

_ZN4ncnn3Mat7releaseEv.exit.i615:                 ; preds = %bb.in, %bb.io, %bb.im, %bb.ik, %bb.ij
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  store i64 0, ptr %i.aon, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aol, i8 0, i64 20, i1 false)
  %i.aoo = load <2 x ptr>, ptr %i.k, align 8, !tbaa !48
  store <2 x ptr> %i.aoo, ptr %i.aa, align 8, !tbaa !48
  %i.aop = load i64, ptr %i.w, align 8, !tbaa !34
  store i64 %i.aop, ptr %i.aoj, align 8, !tbaa !34
  %i.aoq = load i32, ptr %i.y, align 8, !tbaa !36
  store i32 %i.aoq, ptr %i.aok, align 8, !tbaa !36
  %i.aor = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !22
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.aos, ptr %i.aot, align 8, !tbaa !22
  %i.aou = load <4 x i32>, ptr %i.u, align 8, !tbaa !49
  store <4 x i32> %i.aou, ptr %i.aol, align 8, !tbaa !49
  %i.aov = load i32, ptr %i.s, align 8, !tbaa !32
  store i32 %i.aov, ptr %i.aom, align 8, !tbaa !32
  %i.aow = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !25
  store i64 %i.aox, ptr %i.aon, align 8, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.ip:                                            ; preds = %bb.if, %bb.ie
  %i.aoy = load i32, ptr %i.c, align 4, !tbaa !49
  %i.aoz = and i32 %i.aoy, 3
  %i.apa = icmp eq i32 %i.aoz, 0
  %or.cond33 = select i1 %i.apa, i1 %i.anl, i1 false
  br i1 %or.cond33, label %bb.iq, label %_ZN4ncnn3MataSERKS0_.exit597

bb.iq:                                            ; preds = %bb.ip
  %i.apb = ashr exact i32 %i.anj, 2
  %i.apc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !73
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef %i.anq, i32 noundef %i.apb, i64 noundef %i.anp, i32 noundef 4, ptr noundef %i.apd)
  %i.ape = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.apf = icmp eq ptr %i.ape, null
  br i1 %i.apf, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %_ZNK4ncnn3Mat5emptyEv.exit683

_ZNK4ncnn3Mat5emptyEv.exit683:                    ; preds = %bb.iq
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !25
  %i.api = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.apj = load i32, ptr %i.api, align 8, !tbaa !32
  %i.apk = sext i32 %i.apj to i64
  %i.apl = mul i64 %i.aph, %i.apk
  %i.apm = icmp eq i64 %i.apl, 0
  br i1 %i.apm, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %bb.ir

bb.ir:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit683
  %i.apn = load i64, ptr %i.a, align 8, !tbaa !35
  %i.apo = icmp eq i64 %i.apn, 8
  %i.app = load i32, ptr %i.c, align 4, !tbaa !49
  %i.apq = sdiv i32 %i.app, 4                     ; 2 uses
  %i.apr = load i32, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  br i1 %i.apo, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call fastcc void @_ZN4ncnnL26crop_pack4_bf16s_fp16s_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef %i.apq, i32 noundef %i.apr)
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.it:                                            ; preds = %bb.ir
  call fastcc void @_ZN4ncnnL14crop_pack4_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i32 noundef %i.apq, i32 noundef %i.apr)
  br label %_ZN4ncnn3MataSERKS0_.exit670.thread

bb.iu:                                            ; preds = %bb.ho
  %i.aps = load i32, ptr %i.i, align 4, !tbaa !49 ; 5 uses
  %i.apt = and i32 %i.aps, 3
  %i.apu = icmp eq i32 %i.apt, 0                  ; 4 uses
  %i.apv = load i64, ptr %i.a, align 8, !tbaa !35
  %i.apw = lshr i64 %i.apv, 2
  %i.apx = select i1 %i.apu, i64 2, i64 0
  %i.apy = shl nuw i64 %i.apw, %i.apx
  %i.apz = load i32, ptr %i.f, align 4, !tbaa !49 ; 2 uses
  %i.aqa = icmp eq i32 %i.apz, %i.n
  %i.aqb = load i32, ptr %i.g, align 4            ; 2 uses
  %i.aqc = icmp eq i32 %i.aqb, %i.p
  %or.cond389 = select i1 %i.aqa, i1 %i.aqc, i1 false ; 2 uses
  br i1 %or.cond389, label %bb.iv, label %bb.jf

bb.iv:                                            ; preds = %bb.iu
  %i.aqd = sdiv i32 %i.aps, 4
  %i.aqe = select i1 %i.apu, i32 %i.aqd, i32 %i.aps
  %i.aqf = icmp eq i32 %i.aqe, %i.t
  %or.cond35 = and i1 %i.apu, %i.aqf
  br i1 %or.cond35, label %bb.iw, label %bb.jf

bb.iw:                                            ; preds = %bb.iv
  %i.aqg = icmp eq ptr %i.aa, %i.k
  br i1 %i.aqg, label %_ZN4ncnn3MataSERKS0_.exit670.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !18 ; 2 uses
  %.not.i606 = icmp eq ptr %i.aqi, null
  br i1 %.not.i606, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aqj = atomicrmw add ptr %i.aqi, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.iz
end_hunk_0
begin_hunk_1_@_ZNK4ncnn12Crop_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

_ZNK4ncnn3Mat5emptyEv.exit605:                    ; preds = %_ZN4ncnn3MatD2Ev.exit371
  %i.xh = load i64, ptr %i.wg, align 8, !tbaa !25
  %i.xi = load i32, ptr %i.wf, align 8, !tbaa !32
  %i.xj = sext i32 %i.xi to i64
  %i.xk = mul i64 %i.xh, %i.xj
  %i.xl = icmp eq i64 %i.xk, 0
  br i1 %i.xl, label %_ZNK4ncnn3Mat5emptyEv.exit605.thread, label %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge

_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge:         ; preds = %_ZNK4ncnn3Mat5emptyEv.exit605
  %.pre669 = load i32, ptr %i.f, align 4, !tbaa !49
  %.pre670 = load i32, ptr %i.g, align 4, !tbaa !49
  %.pre671 = load i32, ptr %i.h, align 4, !tbaa !49
  %.pre672 = load i32, ptr %i.i, align 4, !tbaa !49
  %.pre677 = sdiv i32 %.pre672, 8
  br label %bb.fg

bb.ex:                                            ; preds = %bb.eh
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit370

bb.ey:                                            ; preds = %bb.en
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.xo = load ptr, ptr %i.vp, align 8, !tbaa !18 ; 2 uses
  %.not.i412 = icmp eq ptr %i.xo, null
  br i1 %.not.i412, label %_ZN4ncnn3MatD2Ev.exit370, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xp = atomicrmw add ptr %i.xo, i32 -1 acq_rel, align 4
  %i.xq = icmp eq i32 %i.xp, 1
  br i1 %i.xq, label %bb.fa, label %_ZN4ncnn3MatD2Ev.exit370

bb.fa:                                            ; preds = %bb.ez
  %i.xr = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.xs = load ptr, ptr %i.xr, align 16, !tbaa !22 ; 3 uses
  %.not3.i413 = icmp eq ptr %i.xs, null
  %i.xt = load ptr, ptr %9, align 16, !tbaa !23   ; 3 uses
  br i1 %.not3.i413, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xu = load ptr, ptr %i.xs, align 8, !tbaa !9
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8
  invoke void %i.xw(ptr noundef nonnull align 8 dereferenceable(8) %i.xs, ptr noundef %i.xt)
          to label %_ZN4ncnn3MatD2Ev.exit370 unwind label %bb.fe, !inline_history !24

bb.fc:                                            ; preds = %bb.fa
  %.not.i487 = icmp eq ptr %i.xt, null
  br i1 %.not.i487, label %_ZN4ncnn3MatD2Ev.exit370, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @free(ptr noundef nonnull %i.xt) #13
  br label %_ZN4ncnn3MatD2Ev.exit370

bb.fe:                                            ; preds = %bb.fb
  %i.xx = landingpad { ptr, i32 }
          catch ptr null
  %i.xy = extractvalue { ptr, i32 } %i.xx, 0
  call void @__clang_call_terminate(ptr %i.xy) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit370:                         ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.ey, %bb.ez, %bb.ex
  %.pn320 = phi { ptr, i32 } [ %i.xm, %bb.ex ], [ %i.xn, %bb.ez ], [ %i.xn, %bb.ey ], [ %i.xn, %bb.fb ], [ %i.xn, %bb.fc ], [ %i.xn, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.fp

bb.ff:                                            ; preds = %bb.fg
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge, %bb.eg
  %.pre-phi678 = phi i32 [ %.pre677, %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge ], [ %i.uh, %bb.eg ]
  %i.ya = phi i32 [ %.pre671, %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge ], [ %i.su, %bb.eg ]
  %i.yb = phi i32 [ %.pre670, %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge ], [ %i.ss, %bb.eg ]
  %i.yc = phi i32 [ %.pre669, %_ZNK4ncnn3Mat5emptyEv.exit605._crit_edge ], [ %i.sq, %bb.eg ]
  %i.yd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !73
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.yc, i32 noundef %i.yb, i32 noundef %i.ya, i32 noundef %.pre-phi678, i64 noundef %i.sp, i32 noundef 8, ptr noundef %i.ye)
          to label %bb.fh unwind label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  %i.yf = load ptr, ptr %2, align 8, !tbaa !23
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %_ZNK4ncnn3Mat5emptyEv.exit605.thread, label %_ZNK4ncnn3Mat5emptyEv.exit604

_ZNK4ncnn3Mat5emptyEv.exit604:                    ; preds = %bb.fh
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !25
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !32
  %i.yl = sext i32 %i.yk to i64
  %i.ym = mul i64 %i.yi, %i.yl
  %i.yn = icmp eq i64 %i.ym, 0
  br i1 %i.yn, label %_ZNK4ncnn3Mat5emptyEv.exit605.thread, label %bb.fi

bb.fi:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit604
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.yp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn12Crop_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %2, ptr nonnull %i.h, ptr nonnull %8, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  br label %_ZNK4ncnn3Mat5emptyEv.exit605.thread

_ZNK4ncnn3Mat5emptyEv.exit605.thread:             ; preds = %bb.fh, %_ZN4ncnn3MatD2Ev.exit371, %_ZNK4ncnn3Mat5emptyEv.exit604, %_ZNK4ncnn3Mat5emptyEv.exit605, %bb.fi
  %.7 = phi i32 [ 0, %bb.fi ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit605 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit604 ], [ -100, %_ZN4ncnn3MatD2Ev.exit371 ], [ -100, %bb.fh ]
  %i.yq = load ptr, ptr %i.ut, align 8, !tbaa !18 ; 2 uses
  %.not.i416 = icmp eq ptr %i.yq, null
  br i1 %.not.i416, label %_ZN4ncnn3MatD2Ev.exit369, label %bb.fj

bb.fj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit605.thread
  %i.yr = atomicrmw add ptr %i.yq, i32 -1 acq_rel, align 4
  %i.ys = icmp eq i32 %i.yr, 1
  br i1 %i.ys, label %bb.fk, label %_ZN4ncnn3MatD2Ev.exit369

bb.fk:                                            ; preds = %bb.fj
  %i.yt = load ptr, ptr %i.uw, align 8, !tbaa !22 ; 3 uses
  %.not3.i417 = icmp eq ptr %i.yt, null
  %i.yu = load ptr, ptr %8, align 8, !tbaa !23    ; 3 uses
  br i1 %.not3.i417, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.yv = load ptr, ptr %i.yt, align 8, !tbaa !9
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.yx = load ptr, ptr %i.yw, align 8
  invoke void %i.yx(ptr noundef nonnull align 8 dereferenceable(8) %i.yt, ptr noundef %i.yu)
          to label %_ZN4ncnn3MatD2Ev.exit369 unwind label %bb.fo, !inline_history !24

bb.fm:                                            ; preds = %bb.fk
  %.not.i485 = icmp eq ptr %i.yu, null
  br i1 %.not.i485, label %_ZN4ncnn3MatD2Ev.exit369, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @free(ptr noundef nonnull %i.yu) #13
  br label %_ZN4ncnn3MatD2Ev.exit369

bb.fo:                                            ; preds = %bb.fl
  %i.yy = landingpad { ptr, i32 }
          catch ptr null
  %i.yz = extractvalue { ptr, i32 } %i.yy, 0
  call void @__clang_call_terminate(ptr %i.yz) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit369:                         ; preds = %bb.fj, %_ZNK4ncnn3Mat5emptyEv.exit605.thread, %bb.fl, %bb.fm, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.fp:                                            ; preds = %bb.ff, %_ZN4ncnn3MatD2Ev.exit370
  %.pn322 = phi { ptr, i32 } [ %i.xz, %bb.ff ], [ %.pn320, %_ZN4ncnn3MatD2Ev.exit370 ]
  %i.za = load ptr, ptr %i.ut, align 8, !tbaa !18 ; 2 uses
  %.not.i420 = icmp eq ptr %i.za, null
  br i1 %.not.i420, label %_ZN4ncnn3MatD2Ev.exit368, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zb = atomicrmw add ptr %i.za, i32 -1 acq_rel, align 4
  %i.zc = icmp eq i32 %i.zb, 1
  br i1 %i.zc, label %bb.fr, label %_ZN4ncnn3MatD2Ev.exit368

bb.fr:                                            ; preds = %bb.fq
  %i.zd = load ptr, ptr %i.uw, align 8, !tbaa !22 ; 3 uses
  %.not3.i421 = icmp eq ptr %i.zd, null
  %i.ze = load ptr, ptr %8, align 8, !tbaa !23    ; 3 uses
  br i1 %.not3.i421, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.zf = load ptr, ptr %i.zd, align 8, !tbaa !9
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8
  invoke void %i.zh(ptr noundef nonnull align 8 dereferenceable(8) %i.zd, ptr noundef %i.ze)
          to label %_ZN4ncnn3MatD2Ev.exit368 unwind label %bb.fv, !inline_history !24

bb.ft:                                            ; preds = %bb.fr
  %.not.i483 = icmp eq ptr %i.ze, null
  br i1 %.not.i483, label %_ZN4ncnn3MatD2Ev.exit368, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @free(ptr noundef nonnull %i.ze) #13
  br label %_ZN4ncnn3MatD2Ev.exit368

bb.fv:                                            ; preds = %bb.fs
  %i.zi = landingpad { ptr, i32 }
          catch ptr null
  %i.zj = extractvalue { ptr, i32 } %i.zi, 0
  call void @__clang_call_terminate(ptr %i.zj) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit368:                         ; preds = %bb.fq, %bb.fp, %bb.fs, %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.mb

bb.fw:                                            ; preds = %bb.al
  switch i32 %i.t, label %_ZN4ncnn3MataSERKS0_.exit516 [
    i32 1, label %bb.fx
    i32 2, label %bb.gm
    i32 3, label %bb.hc
    i32 4, label %bb.je
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.zk = load i32, ptr %i.f, align 4, !tbaa !49  ; 3 uses
  %i.zl = and i32 %i.zk, 3
  %i.zm = icmp eq i32 %i.zl, 0                    ; 3 uses
  %i.zn = select i1 %i.zm, i32 4, i32 1           ; 2 uses
  %i.zo = load i64, ptr %i.a, align 8, !tbaa !35
  %i.zp = lshr i64 %i.zo, 2
  %i.zq = select i1 %i.zm, i64 2, i64 0
  %i.zr = shl nuw i64 %i.zp, %i.zq
  %i.zs = sdiv i32 %i.zk, %i.zn                   ; 2 uses
  %i.zt = icmp eq i32 %i.zs, %i.l
  %or.cond25 = and i1 %i.zm, %i.zt
  br i1 %or.cond25, label %bb.fy, label %bb.gh

bb.fy:                                            ; preds = %bb.fx
  %i.zu = icmp eq ptr %2, %1
  br i1 %i.zu, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !18 ; 2 uses
  %.not.i539 = icmp eq ptr %i.zw, null
  br i1 %.not.i539, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zx = atomicrmw add ptr %i.zw, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.zy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !18 ; 2 uses
  %.not.i.i540 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i540, label %_ZN4ncnn3Mat7releaseEv.exit.i541, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aaa = atomicrmw add ptr %i.zz, i32 -1 acq_rel, align 4
  %i.aab = icmp eq i32 %i.aaa, 1
  br i1 %i.aab, label %bb.gd, label %_ZN4ncnn3Mat7releaseEv.exit.i541

bb.gd:                                            ; preds = %bb.gc
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !22 ; 3 uses
  %.not3.i.i542 = icmp eq ptr %i.aad, null
  %i.aae = load ptr, ptr %2, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i.i542, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aaf = load ptr, ptr %i.aad, align 8, !tbaa !9
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8
  call void %i.aah(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef %i.aae), !inline_history !72
  br label %_ZN4ncnn3Mat7releaseEv.exit.i541

bb.gf:                                            ; preds = %bb.gd
  %.not.i18.i543 = icmp eq ptr %i.aae, null
  br i1 %.not.i18.i543, label %_ZN4ncnn3Mat7releaseEv.exit.i541, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @free(ptr noundef nonnull %i.aae) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i541

_ZN4ncnn3Mat7releaseEv.exit.i541:                 ; preds = %bb.gf, %bb.gg, %bb.ge, %bb.gc, %bb.gb
  %i.aai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aaj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aam = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aam, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aak, i8 0, i64 20, i1 false)
  %i.aan = load <2 x ptr>, ptr %1, align 8, !tbaa !48
  store <2 x ptr> %i.aan, ptr %2, align 8, !tbaa !48
  %i.aao = load i64, ptr %i.u, align 8, !tbaa !34
  store i64 %i.aao, ptr %i.aai, align 8, !tbaa !34
  %i.aap = load i32, ptr %i.w, align 8, !tbaa !36
  store i32 %i.aap, ptr %i.aaj, align 8, !tbaa !36
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !22
  %i.aas = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.aar, ptr %i.aas, align 8, !tbaa !22
  %i.aat = load <4 x i32>, ptr %i.s, align 8, !tbaa !49
  store <4 x i32> %i.aat, ptr %i.aak, align 8, !tbaa !49
  %i.aau = load i32, ptr %i.q, align 8, !tbaa !32
  store i32 %i.aau, ptr %i.aal, align 8, !tbaa !32
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !25
  store i64 %i.aaw, ptr %i.aam, align 8, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.gh:                                            ; preds = %bb.fx
  %i.aax = load i32, ptr %i.b, align 4, !tbaa !49
  %i.aay = or i32 %i.aax, %i.zk
  %i.aaz = and i32 %i.aay, 3
  %or.cond27 = icmp eq i32 %i.aaz, 0
  br i1 %or.cond27, label %bb.gi, label %_ZN4ncnn3MataSERKS0_.exit516

bb.gi:                                            ; preds = %bb.gh
  %i.aba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !73
  call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.zs, i64 noundef %i.zr, i32 noundef %i.zn, ptr noundef %i.abb)
  %i.abc = load ptr, ptr %2, align 8, !tbaa !23
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %_ZNK4ncnn3Mat5emptyEv.exit603

_ZNK4ncnn3Mat5emptyEv.exit603:                    ; preds = %bb.gi
  %i.abe = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !25
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !32
  %i.abi = sext i32 %i.abh to i64
  %i.abj = mul i64 %i.abf, %i.abi
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %bb.gj

bb.gj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit603
  %i.abl = load i64, ptr %i.a, align 8, !tbaa !35
  %i.abm = icmp eq i64 %i.abl, 8
  %i.abn = load i32, ptr %i.b, align 4, !tbaa !49
  %i.abo = sdiv i32 %i.abn, 4                     ; 2 uses
  br i1 %i.abm, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call fastcc void @_ZN4ncnnL26crop_pack4_bf16s_fp16s_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0, i32 noundef %i.abo)
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.gl:                                            ; preds = %bb.gj
  call fastcc void @_ZN4ncnnL14crop_pack4_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0, i32 noundef %i.abo)
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.gm:                                            ; preds = %bb.fw
  %i.abp = load i32, ptr %i.g, align 4, !tbaa !49 ; 4 uses
  %i.abq = and i32 %i.abp, 3
  %i.abr = icmp eq i32 %i.abq, 0                  ; 4 uses
  %i.abs = load i64, ptr %i.a, align 8, !tbaa !35
  %i.abt = lshr i64 %i.abs, 2
  %i.abu = select i1 %i.abr, i64 2, i64 0
  %i.abv = shl nuw i64 %i.abt, %i.abu
  %i.abw = load i32, ptr %i.f, align 4, !tbaa !49 ; 2 uses
  %i.abx = icmp eq i32 %i.abw, %i.l
  br i1 %i.abx, label %bb.gn, label %bb.gx

bb.gn:                                            ; preds = %bb.gm
  %i.aby = sdiv i32 %i.abp, 4
  %i.abz = select i1 %i.abr, i32 %i.aby, i32 %i.abp
  %i.aca = icmp eq i32 %i.abz, %i.n
  %or.cond29 = and i1 %i.abr, %i.aca
  br i1 %or.cond29, label %bb.go, label %bb.gx

bb.go:                                            ; preds = %bb.gn
  %i.acb = icmp eq ptr %2, %1
  br i1 %i.acb, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !18 ; 2 uses
  %.not.i532 = icmp eq ptr %i.acd, null
  br i1 %.not.i532, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ace = atomicrmw add ptr %i.acd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.acf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !18 ; 2 uses
  %.not.i.i533 = icmp eq ptr %i.acg, null
  br i1 %.not.i.i533, label %_ZN4ncnn3Mat7releaseEv.exit.i534, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ach = atomicrmw add ptr %i.acg, i32 -1 acq_rel, align 4
  %i.aci = icmp eq i32 %i.ach, 1
  br i1 %i.aci, label %bb.gt, label %_ZN4ncnn3Mat7releaseEv.exit.i534

bb.gt:                                            ; preds = %bb.gs
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !22 ; 3 uses
  %.not3.i.i535 = icmp eq ptr %i.ack, null
  %i.acl = load ptr, ptr %2, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i.i535, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acm = load ptr, ptr %i.ack, align 8, !tbaa !9
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = load ptr, ptr %i.acn, align 8
  call void %i.aco(ptr noundef nonnull align 8 dereferenceable(8) %i.ack, ptr noundef %i.acl), !inline_history !72
  br label %_ZN4ncnn3Mat7releaseEv.exit.i534

bb.gv:                                            ; preds = %bb.gt
  %.not.i18.i536 = icmp eq ptr %i.acl, null
  br i1 %.not.i18.i536, label %_ZN4ncnn3Mat7releaseEv.exit.i534, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @free(ptr noundef nonnull %i.acl) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i534

_ZN4ncnn3Mat7releaseEv.exit.i534:                 ; preds = %bb.gv, %bb.gw, %bb.gu, %bb.gs, %bb.gr
  %i.acp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.acr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.act, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.acr, i8 0, i64 20, i1 false)
  %i.acu = load <2 x ptr>, ptr %1, align 8, !tbaa !48
  store <2 x ptr> %i.acu, ptr %2, align 8, !tbaa !48
  %i.acv = load i64, ptr %i.u, align 8, !tbaa !34
  store i64 %i.acv, ptr %i.acp, align 8, !tbaa !34
  %i.acw = load i32, ptr %i.w, align 8, !tbaa !36
  store i32 %i.acw, ptr %i.acq, align 8, !tbaa !36
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !22
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.acy, ptr %i.acz, align 8, !tbaa !22
  %i.ada = load <4 x i32>, ptr %i.s, align 8, !tbaa !49
  store <4 x i32> %i.ada, ptr %i.acr, align 8, !tbaa !49
  %i.adb = load i32, ptr %i.q, align 8, !tbaa !32
  store i32 %i.adb, ptr %i.acs, align 8, !tbaa !32
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !25
  store i64 %i.add, ptr %i.act, align 8, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.gx:                                            ; preds = %bb.gn, %bb.gm
  %i.ade = load i32, ptr %i.c, align 4, !tbaa !49
  %i.adf = and i32 %i.ade, 3
  %i.adg = icmp eq i32 %i.adf, 0
  %or.cond31 = select i1 %i.adg, i1 %i.abr, i1 false
  br i1 %or.cond31, label %bb.gy, label %_ZN4ncnn3MataSERKS0_.exit516

bb.gy:                                            ; preds = %bb.gx
  %i.adh = ashr exact i32 %i.abp, 2
  %i.adi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !73
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.abw, i32 noundef %i.adh, i64 noundef %i.abv, i32 noundef 4, ptr noundef %i.adj)
  %i.adk = load ptr, ptr %2, align 8, !tbaa !23
  %i.adl = icmp eq ptr %i.adk, null
  br i1 %i.adl, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %_ZNK4ncnn3Mat5emptyEv.exit602

_ZNK4ncnn3Mat5emptyEv.exit602:                    ; preds = %bb.gy
  %i.adm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !25
  %i.ado = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !32
  %i.adq = sext i32 %i.adp to i64
  %i.adr = mul i64 %i.adn, %i.adq
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %bb.gz

bb.gz:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit602
  %i.adt = load i64, ptr %i.a, align 8, !tbaa !35
  %i.adu = icmp eq i64 %i.adt, 8
  %i.adv = load i32, ptr %i.c, align 4, !tbaa !49
  %i.adw = sdiv i32 %i.adv, 4                     ; 2 uses
  %i.adx = load i32, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  br i1 %i.adu, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  call fastcc void @_ZN4ncnnL26crop_pack4_bf16s_fp16s_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.adw, i32 noundef %i.adx)
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.hb:                                            ; preds = %bb.gz
  call fastcc void @_ZN4ncnnL14crop_pack4_sseERKNS_3MatERS0_ii(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.adw, i32 noundef %i.adx)
  br label %_ZN4ncnn3MataSERKS0_.exit589.thread

bb.hc:                                            ; preds = %bb.fw
  %i.ady = load i32, ptr %i.i, align 4, !tbaa !49 ; 5 uses
  %i.adz = and i32 %i.ady, 3
  %i.aea = icmp eq i32 %i.adz, 0                  ; 4 uses
  %i.aeb = load i64, ptr %i.a, align 8, !tbaa !35
  %i.aec = lshr i64 %i.aeb, 2
  %i.aed = select i1 %i.aea, i64 2, i64 0
  %i.aee = shl nuw i64 %i.aec, %i.aed
  %i.aef = load i32, ptr %i.f, align 4, !tbaa !49 ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, %i.l
  %i.aeh = load i32, ptr %i.g, align 4            ; 2 uses
  %i.aei = icmp eq i32 %i.aeh, %i.n
  %or.cond348 = select i1 %i.aeg, i1 %i.aei, i1 false ; 2 uses
  br i1 %or.cond348, label %bb.hd, label %bb.hn

bb.hd:                                            ; preds = %bb.hc
  %i.aej = sdiv i32 %i.ady, 4
  %i.aek = select i1 %i.aea, i32 %i.aej, i32 %i.ady
  %i.ael = icmp eq i32 %i.aek, %i.r
  %or.cond33 = and i1 %i.aea, %i.ael
  br i1 %or.cond33, label %bb.he, label %bb.hn

bb.he:                                            ; preds = %bb.hd
  %i.aem = icmp eq ptr %2, %1
  br i1 %i.aem, label %_ZN4ncnn3MataSERKS0_.exit589.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !18 ; 2 uses
  %.not.i525 = icmp eq ptr %i.aeo, null
  br i1 %.not.i525, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aep = atomicrmw add ptr %i.aeo, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.hh
end_hunk_1
