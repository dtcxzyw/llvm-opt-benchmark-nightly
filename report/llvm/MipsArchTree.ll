Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsArchTree?download=true
inline.NumInlined: 640
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL10checkFlagsRN3lld3elf3CtxEN4llvm8ArrayRefIN12_GLOBAL__N_19FileFlagsEEE:bb.a
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, 8
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull @.str.15, i64 noundef 8) #14 ; 0 uses
  %.pre116 = load ptr, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit61

bb.ah:                                            ; preds = %bb.af
  store i64 4426582610657747002, ptr %i.cj, align 1
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit61

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit61:   ; preds = %bb.ag, %bb.ah
  %i.cr = phi ptr [ %.pre116, %bb.ag ], [ %i.cq, %bb.ah ] ; 2 uses
  %i.cs = select i1 %.not110, ptr @.str.26, ptr @.str.25 ; 2 uses
  %i.ct = select i1 %.not110, i64 6, i64 4        ; 4 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = icmp ugt i64 %i.ct, %i.cx
  br i1 %i.cy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit61
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull %i.cs, i64 noundef %i.ct) #14 ; 0 uses
  %.pre117 = load ptr, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit68

bb.aj:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cr, ptr noundef nonnull align 1 dereferenceable(4) %i.cs, i64 %i.ct, i1 false)
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ct ; 2 uses
  store ptr %i.db, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit68

_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit68: ; preds = %bb.ai, %bb.aj
  %i.dc = phi ptr [ %.pre117, %bb.ai ], [ %i.db, %bb.aj ] ; 2 uses
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, 35
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit68
  %i.di = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull @.str.16, i64 noundef 35) #14 ; 0 uses
  %.pre118 = load ptr, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit70

bb.al:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.dc, ptr noundef nonnull align 1 dereferenceable(35) @.str.16, i64 35, i1 false)
  %i.dj = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 35 ; 2 uses
  store ptr %i.dk, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit70

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit70:   ; preds = %bb.ak, %bb.al
  %i.dl = phi ptr [ %.pre118, %bb.ak ], [ %i.dk, %bb.al ] ; 2 uses
  %i.dm = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ugt i64 %i.i, %i.dp
  br i1 %i.dq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit70
  %i.dr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull %i.h, i64 noundef %i.i) #14 ; 0 uses
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit77

bb.an:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.dl, ptr noundef nonnull align 1 dereferenceable(4) %i.h, i64 %i.i, i1 false)
  %i.ds = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.i
  store ptr %i.dt, ptr %i.ci, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit77

_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit77: ; preds = %bb.am, %bb.an
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.pre119 = load i32, ptr %i.ad, align 8, !tbaa !542
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit77, %bb.ae
  %i.du = phi i32 [ %.pre119, %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit77 ], [ %i.cb, %bb.ae ]
  %i.dv = and i32 %i.du, 512                      ; 2 uses
  %.not37 = icmp eq i32 %i.e, %i.dv
  br i1 %.not37, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not111 = icmp eq i32 %i.dv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3472) %0) #14
  %i.dw = load ptr, ptr %.0113, align 8, !tbaa !544
  %i.dx = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %i.dw) #14 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 64 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 72 ; 12 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !15 ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ult i64 %i.ef, 6
  br i1 %i.eg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull @.str.17, i64 noundef 6) #14 ; 0 uses
  %.pre120 = load ptr, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit79

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ec, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false)
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6 ; 2 uses
  store ptr %i.ej, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit79

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit79:   ; preds = %bb.aq, %bb.ar
  %i.ek = phi ptr [ %.pre120, %bb.aq ], [ %i.ej, %bb.ar ] ; 2 uses
  %.str.27..str.28.i = select i1 %.not111, ptr @.str.28, ptr @.str.27 ; 2 uses
  %i.el = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 2
  br i1 %i.ep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit79
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull %.str.27..str.28.i, i64 noundef 2) #14 ; 0 uses
  %.pre121 = load ptr, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit86

bb.at:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit79
  %i.er = load i16, ptr %.str.27..str.28.i, align 1
  store i16 %i.er, ptr %i.ek, align 1
  %i.es = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2 ; 2 uses
  store ptr %i.et, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit86

_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit86: ; preds = %bb.as, %bb.at
  %i.eu = phi ptr [ %.pre121, %bb.as ], [ %i.et, %bb.at ] ; 2 uses
  %i.ev = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 33
  br i1 %i.ez, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit86
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull @.str.18, i64 noundef 33) #14 ; 0 uses
  %.pre122 = load ptr, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit88

bb.av:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.eu, ptr noundef nonnull align 1 dereferenceable(33) @.str.18, i64 33, i1 false)
  %i.fb = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 33 ; 2 uses
  store ptr %i.fc, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit88

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit88:   ; preds = %bb.au, %bb.av
  %i.fd = phi ptr [ %.pre122, %bb.au ], [ %i.fc, %bb.av ] ; 2 uses
  %i.fe = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 2
  br i1 %i.fi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit88
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull %.str.27..str.28.i89, i64 noundef 2) #14 ; 0 uses
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit96

bb.ax:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit88
  store i16 %i.j, ptr %i.fd, align 1
  %i.fk = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store ptr %i.fl, ptr %i.eb, align 8, !tbaa !15
  br label %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit96

_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit96: ; preds = %bb.aw, %bb.ax
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN3lld3elflsIN4llvm9StringRefEEENSt9enable_ifIXntsr3stdE12is_pointer_vINSt16remove_referenceIT_E4typeEEERKNS0_13ELFSyncStreamEE4typeESB_OS6_.exit96, %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %.0113, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.fm, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 7) i32 @_ZL11getPicFlagsRN3lld3elf3CtxEN4llvm8ArrayRefIN12_GLOBAL__N_19FileFlagsEEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %4 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.idx = shl i64 %2, 4                           ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 %.idx      ; 3 uses
  %.not3257 = icmp eq i64 %.idx, 16
  %i.d = load i32, ptr %i.a, align 8, !tbaa !542
  %.fr65 = freeze i32 %i.d
  %i.e = and i32 %.fr65, 6                        ; 2 uses
  br i1 %.not3257, label %._crit_edge64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not31 = icmp eq i32 %i.e, 0
  br i1 %.not31, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.03058.us = phi ptr [ %i.y, %bb.e ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03058.us, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !542
  %i.h = and i32 %i.g, 6
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %4, ptr noundef nonnull align 8 dereferenceable(3472) %0) #14
  %i.i = load ptr, ptr %.03058.us, align 8, !tbaa !544
  %i.j = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %i.i) #14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 47
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.n, ptr noundef nonnull align 1 dereferenceable(47) @.str.30, i64 47, i1 false)
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 47
  store ptr %i.t, ptr %i.m, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit51.us

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.30, i64 noundef 47) #14 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit51.us

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit51.us: ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !544
  %i.x = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef %i.w) #14 ; 0 uses
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit51.us, %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %.03058.us, i64 16 ; 2 uses
  %.not32.us = icmp eq ptr %i.y, %i.c
  br i1 %.not32.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.z = load i32, ptr %i.a, align 8, !tbaa !542
  %i.aa = and i32 %i.z, 6                         ; 2 uses
  %i.ab = add i64 %.idx, -32                      ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol

.lr.ph63.prol:                                    ; preds = %._crit_edge, %.lr.ph63.prol
  %.061.prol = phi ptr [ %i.ah, %.lr.ph63.prol ], [ %i.b, %._crit_edge ] ; 2 uses
  %.02960.prol = phi i32 [ %i.ag, %.lr.ph63.prol ], [ %i.aa, %._crit_edge ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph63.prol ], [ 0, %._crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.061.prol, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !542
  %i.ag = and i32 %.02960.prol, %i.af             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.061.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol, !llvm.loop !579

.lr.ph63.prol.loopexit:                           ; preds = %.lr.ph63.prol, %._crit_edge
  %.lcssa.unr = phi i32 [ poison, %._crit_edge ], [ %i.ag, %.lr.ph63.prol ]
  %.061.unr = phi ptr [ %i.b, %._crit_edge ], [ %i.ah, %.lr.ph63.prol ]
  %.02960.unr = phi i32 [ %i.aa, %._crit_edge ], [ %i.ag, %.lr.ph63.prol ]
  %i.ai = icmp ult i64 %i.ab, 112
  br i1 %i.ai, label %._crit_edge64, label %.lr.ph63

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.03058 = phi ptr [ %i.bc, %bb.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03058, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !542
  %i.al = and i32 %i.ak, 6
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3472) %0) #14
  %i.am = load ptr, ptr %.03058, align 8, !tbaa !544
  %i.an = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %i.am) #14 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 47
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull @.str.29, i64 noundef 47) #14 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ar, ptr noundef nonnull align 1 dereferenceable(47) @.str.29, i64 47, i1 false)
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 47
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g
  %i.ba = load ptr, ptr %1, align 8, !tbaa !544
  %i.bb = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, ptr noundef %i.ba) #14 ; 0 uses
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split, %.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %.03058, i64 16 ; 2 uses
  %.not32 = icmp eq ptr %i.bc, %i.c
  br i1 %.not32, label %._crit_edge, label %.lr.ph.split

._crit_edge64:                                    ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63, %bb.a
  %.029.lcssa = phi i32 [ %i.e, %bb.a ], [ %.lcssa.unr, %.lr.ph63.prol.loopexit ], [ %i.ca, %.lr.ph63 ] ; 2 uses
  %5 = and i32 %.029.lcssa, 2
  %.not34 = icmp eq i32 %5, 0
  %spec.select = select i1 %.not34, i32 %.029.lcssa, i32 6
  ret i32 %spec.select

.lr.ph63:                                         ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63
  %.061 = phi ptr [ %i.cb, %.lr.ph63 ], [ %.061.unr, %.lr.ph63.prol.loopexit ] ; 9 uses
  %.02960 = phi i32 [ %i.ca, %.lr.ph63 ], [ %.02960.unr, %.lr.ph63.prol.loopexit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !542
  %i.bf = and i32 %.02960, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.061, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !542
  %i.bi = and i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.061, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !542
  %i.bl = and i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.061, i64 56
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !542
  %i.bo = and i32 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.061, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !542
  %i.br = and i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.061, i64 88
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !542
  %i.bu = and i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.061, i64 104
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !542
  %i.bx = and i32 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.061, i64 120
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !542
  %i.ca = and i32 %i.bx, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.061, i64 128 ; 2 uses
  %.not33.7 = icmp eq ptr %i.cb, %i.c
  br i1 %.not33.7, label %._crit_edge64, label %.lr.ph63
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, -251723775) i32 @_ZL12getArchFlagsRN3lld3elf3CtxEN4llvm8ArrayRefIN12_GLOBAL__N_19FileFlagsEEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !542
  %i.c = and i32 %i.b, -251723776                 ; 2 uses
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %.idx
  %.not49 = icmp eq i64 %.idx, 16
  br i1 %.not49, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02148 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.02152 = phi ptr [ %.021, %bb.l ], [ %.02148, %.lr.ph.preheader ] ; 3 uses
  %.pn51 = phi ptr [ %.02152, %bb.l ], [ %1, %.lr.ph.preheader ]
  %.02250 = phi i32 [ %.123.ph, %bb.l ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.pn51, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !542
  %i.g = and i32 %i.f, -251723776                 ; 4 uses
  %i.h = tail call fastcc noundef zeroext i1 @_ZL13isArchMatchedjj(i32 noundef %i.g, i32 noundef %.02250)
  br i1 %i.h, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call fastcc noundef zeroext i1 @_ZL13isArchMatchedjj(i32 noundef %.02250, i32 noundef %i.g)
  br i1 %i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3472) %0) #14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 29
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str.31, i64 noundef 29) #14 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.m, ptr noundef nonnull align 1 dereferenceable(29) @.str.31, i64 29, i1 false)
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 29
  store ptr %i.u, ptr %i.l, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit:     ; preds = %bb.d, %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !544
  %i.w = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %i.v) #14 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.32, i64 noundef 2) #14 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit34

bb.g:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit
  store i16 8250, ptr %i.ab, align 1
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit34

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit34:   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call fastcc void @_ZL15getFullArchNameB5cxx11j(ptr dead_on_unwind noalias writable align 8 %4, i32 noundef %.02250)
  %i.aj = load ptr, ptr %4, align 8, !tbaa !580
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !545
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.aj, i64 noundef %i.al) #14 ; 0 uses
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 5
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit34
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.33, i64 noundef 5) #14 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit36

bb.i:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, i64 5, i1 false)
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 5
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit36

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit36:   ; preds = %bb.h, %bb.i
  %i.aw = load ptr, ptr %.02152, align 8, !tbaa !544
  %i.ax = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef %i.aw) #14 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 72 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, 2
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit36
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull @.str.32, i64 noundef 2) #14 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit38

bb.k:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit36
  store i16 8250, ptr %i.bc, align 1
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !15
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit38

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit38:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @_ZL15getFullArchNameB5cxx11j(ptr dead_on_unwind noalias writable align 8 %5, i32 noundef %i.g)
  %i.bk = load ptr, ptr %5, align 8, !tbaa !580
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !545
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.bk, i64 noundef %i.bm) #14 ; 0 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !580   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit38
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !546
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bt = load ptr, ptr %4, align 8, !tbaa !580   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !546
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
end_hunk_0
