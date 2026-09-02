Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/arch-x86-64.cc.X86_64?download=true
inline.NumInlined: 1418
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4mold12InputSectionINS_6X86_64EE17apply_reloc_allocERNS_7ContextIS1_EEPh:bb.a
_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i:  ; preds = %bb.ak, %bb.aj
  %.0.i1.i.i.i = phi ptr [ %i.hp, %bb.ak ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.aj ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i1.i.i.i, i64 4
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = and i8 %i.hr, 15
  %i.ht = icmp eq i8 %i.hs, 10
  br i1 %i.ht, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435, label %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i

_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i, %bb.ai
  br i1 %i.gb, label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !301
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sext i32 %i.hv to i64
  %i.hy = shl nsw i64 %i.hx, 2
  %i.hz = add nsw i64 %i.hy, %i.hw
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !310
  %i.ie = sext i32 %i.id to i64
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !312
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.ie
  br label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i: ; preds = %bb.al, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ %i.ig, %bb.al ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 6
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ih, align 1
  %i.ii = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.ik = load i8, ptr %i.ij, align 1
  %.mask.i.i.i.i.i.i = and i8 %i.ik, -16
  %i.il = icmp eq i8 %.mask.i.i.i.i.i.i, 32
  %i.im = select i1 %i.ii, i1 %i.il, i1 false
  br i1 %i.im, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i
  %i.in = load i64, ptr %i.az, align 8, !tbaa !369 ; 3 uses
  %i.io = and i64 %i.in, 3                        ; 3 uses
  %.not3.i.i.i.i.i = icmp ne i64 %i.io, 2
  %.not210.i.i.i = icmp ult i64 %i.in, 4          ; 2 uses
  %.not2.i.i.i = or i1 %.not210.i.i.i, %.not3.i.i.i.i.i
  br i1 %.not2.i.i.i, label %bb.an, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

bb.an:                                            ; preds = %bb.am
  %.not3.i.i6.i.i.i = icmp ne i64 %i.io, 0
  %.not311.i.i.i = icmp eq i64 %i.in, 0
  %.not3.i.i.i = or i1 %.not311.i.i.i, %.not3.i.i6.i.i.i
  %.not3.i.i8.i.i.i = icmp ne i64 %i.io, 1
  %.not4.i.i.i = or i1 %.not210.i.i.i, %.not3.i.i8.i.i.i
  %or.cond.i = and i1 %.not3.i.i.i, %.not4.i.i.i
  br i1 %or.cond.i, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i, %bb.an
  %i.ip = load i8, ptr %i.aj, align 1, !tbaa !474, !range !336, !noundef !337
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread: ; preds = %bb.an, %bb.am, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit
  %i.ir = add i64 %.0.copyload.i222, %i.dr
  %i.is = sub i64 %i.ir, %i.dx                    ; 2 uses
  %i.it = add i64 %i.is, 2147483648
  %i.iu = icmp ult i64 %i.it, 4294967296
  br i1 %i.iu, label %bb.ao, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435

bb.ao:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread
  %i.iv = icmp eq i32 %.0.copyload.i229, 41
  br i1 %i.iv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iw = getelementptr inbounds i8, ptr %i.dq, i64 -2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !343
  %i.iy = zext i8 %i.ix to i16
  %i.iz = shl nuw i16 %i.iy, 8
  %i.ja = getelementptr inbounds i8, ptr %i.dq, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !343
  %i.jc = zext i8 %i.jb to i16
  %trunc.i = or disjoint i16 %i.iz, %i.jc
  switch i16 %trunc.i, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435 [
    i16 -235, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i16 -219, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split
  ]

bb.aq:                                            ; preds = %bb.ao
  %i.jd = getelementptr inbounds i8, ptr %i.dq, i64 -3
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !343
  %i.jf = zext i8 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jf, 16
  %i.jh = getelementptr inbounds i8, ptr %i.dq, i64 -2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !343
  %i.jj = zext i8 %i.ji to i32
  %i.jk = shl nuw nsw i32 %i.jj, 8
  %i.jl = or disjoint i32 %i.jk, %i.jg
  %i.jm = getelementptr inbounds i8, ptr %i.dq, i64 -1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !343
  %i.jo = zext i8 %i.jn to i32
  %i.jp = or disjoint i32 %i.jl, %i.jo
  switch i32 %i.jp, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435 [
    i32 4754181, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i32 4754189, label %bb.ar
    i32 4754197, label %bb.as
    i32 4754205, label %bb.at
    i32 4754213, label %bb.au
    i32 4754221, label %bb.av
    i32 4754229, label %bb.aw
    i32 4754237, label %bb.ax
    i32 5016325, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i32 5016333, label %bb.ar
    i32 5016341, label %bb.as
    i32 5016349, label %bb.at
    i32 5016357, label %bb.au
    i32 5016365, label %bb.av
    i32 5016373, label %bb.aw
    i32 5016381, label %bb.ax
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.as:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.at:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.au:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.av:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.ax:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split: ; preds = %bb.ap
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread: ; preds = %bb.ap, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.aq
  %.0.i231438 = phi i32 [ 16616, %bb.ap ], [ 36101, %bb.aq ], [ 36157, %bb.ax ], [ 36149, %bb.aw ], [ 36141, %bb.av ], [ 36133, %bb.au ], [ 36125, %bb.at ], [ 36117, %bb.as ], [ 36109, %bb.ar ], [ 36101, %bb.aq ], [ 16617, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split ] ; 2 uses
  %i.jq = lshr i32 %.0.i231438, 8
  %i.jr = trunc nuw i32 %i.jq to i8
  %i.js = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !343
  %i.jt = trunc i32 %.0.i231438 to i8
  %i.ju = getelementptr inbounds i8, ptr %i.dq, i64 -1
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !343
  %i.jv = trunc nsw i64 %i.is to i32
  store i32 %i.jv, ptr %i.dq, align 1
  %i.jw = load i8, ptr %i.ak, align 8, !tbaa !475, !range !336, !noundef !337
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.ay, label %bb.dy

bb.ay:                                            ; preds = %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
  store i32 2, ptr %i.am, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435: ; preds = %bb.ap, %bb.aq, %bb.af, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit
  %i.jy = sub i64 %.0.copyload.i222, %i.dx
  %i.jz = add i64 %i.jy, %i.el                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.jz, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ka = trunc i64 %i.jz to i32
  store i32 %i.ka, ptr %i.dq, align 1
  br label %bb.dy

bb.az:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread, label %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit: ; preds = %bb.az
  %i.kb = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !476 ; 2 uses
  %.not455 = icmp eq i32 %i.kd, -1
  br i1 %.not455, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit
  %i.ke = sext i32 %i.kd to i64
  %i.kf = shl nsw i64 %i.ke, 3
  %i.kg = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.kh = sub i64 %i.kg, %i.dx
  %i.ki = add i64 %i.kh, %i.kf                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.ki, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.kj = trunc i64 %i.ki to i32
  store i32 %i.kj, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !477 ; 2 uses
  %.not456 = icmp eq i32 %i.kl, -1
  br i1 %.not456, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit
  %i.km = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.km
  %6 = shl i32 %i.kl, 3
  %i.ko = sub i64 %.0.copyload.i.i225, %i.dx
  %i.kp = getelementptr i8, ptr %i.kn, i64 8
  %.val211 = load i32, ptr %i.kp, align 1
  %i.kq = icmp eq i32 %.val211, 31
  br i1 %i.kq, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit
  %i.kr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kr, ptr noundef nonnull align 16 dereferenceable(16) @_ZZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn, i64 12, i1 false)
  br label %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

bb.bb:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit
  %i.ks = getelementptr inbounds i8, ptr %i.dq, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ks, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn_0, i64 22, i1 false)
  br label %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit: ; preds = %bb.ba, %bb.bb
  %.sink3.i = phi i32 [ -13, %bb.bb ], [ -12, %bb.ba ]
  %.sink2.i = phi i64 [ 9, %bb.bb ], [ 8, %bb.ba ]
  %i.kt = trunc i64 %i.ko to i32
  %7 = add i32 %6, %i.kt
  %i.ku = add i32 %.sink3.i, %7
  %i.kv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink2.i
  store i32 %i.ku, ptr %i.kv, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread: ; preds = %bb.az, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit
  %i.kw = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.kw
  %i.ky = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.kz = sub i64 %i.dr, %i.ky
  %i.la = getelementptr i8, ptr %i.kx, i64 8
  %.val212 = load i32, ptr %i.la, align 1
  %i.lb = icmp eq i32 %.val212, 31
  br i1 %i.lb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread
  %i.lc = getelementptr inbounds i8, ptr %i.dq, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.lc, ptr noundef nonnull align 16 dereferenceable(16) @_ZZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn, i64 12, i1 false)
  br label %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

bb.bd:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread
  %i.ld = getelementptr inbounds i8, ptr %i.dq, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ld, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn_0, i64 22, i1 false)
  br label %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit: ; preds = %bb.bc, %bb.bd
  %.sink1.i = phi i64 [ 9, %bb.bd ], [ 8, %bb.bc ]
  %i.le = trunc i64 %i.kz to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink1.i
  store i32 %i.le, ptr %i.lf, align 1
  br label %bb.dy

bb.be:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.dy, i64 280
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !484
  %.not454 = icmp eq i64 %i.lh, -1
  br i1 %.not454, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.li = call noundef i64 @_ZNK4mold10GotSectionINS_6X86_64EE14get_tlsld_addrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(288) %i.dy, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.lj = sub i64 %.0.copyload.i222, %i.dx
  %i.lk = add i64 %i.lj, %i.li                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.lk, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ll = trunc i64 %i.lk to i32
  store i32 %i.ll, ptr %i.dq, align 1
  br label %bb.dy

bb.bg:                                            ; preds = %bb.be
  %i.lm = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.lm
  %i.lo = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.lp = load i64, ptr %i.ai, align 8, !tbaa !485
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = getelementptr i8, ptr %i.ln, i64 8
  %.val213 = load i32, ptr %i.lr, align 1
  %i.ls = getelementptr inbounds i8, ptr %i.dq, i64 -3 ; 3 uses
  switch i32 %.val213, label %bb.bk [
    i32 4, label %bb.bh
    i32 2, label %bb.bh
    i32 9, label %bb.bi
    i32 41, label %bb.bi
    i32 31, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i64 3262858528244940849, ptr %i.ls, align 1
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ls, ptr noundef nonnull align 1 dereferenceable(13) @_ZZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEElE4insn_0, i64 9, i1 false)
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ls, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEElE4insn_1, i64 22, i1 false)
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bk:                                            ; preds = %bb.bg
  unreachable

_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit: ; preds = %bb.bh, %bb.bi, %bb.bj
  %.sink1.i246 = phi i64 [ 8, %bb.bj ], [ 6, %bb.bi ], [ 5, %bb.bh ]
  %i.lt = trunc i64 %i.lq to i32
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink1.i246
  store i32 %i.lt, ptr %i.lu, align 1
  br label %bb.dy

bb.bl:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lv = add i64 %.0.copyload.i222, %i.dr
  %i.lw = load i64, ptr %i.ah, align 8, !tbaa !370
  %i.lx = sub i64 %i.lv, %i.lw                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.lx, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ly = trunc i64 %i.lx to i32
  store i32 %i.ly, ptr %i.dq, align 1
  br label %bb.dy

bb.bm:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lz = add i64 %.0.copyload.i222, %i.dr
  %i.ma = load i64, ptr %i.ah, align 8, !tbaa !370
  %i.mb = sub i64 %i.lz, %i.ma
  store i64 %i.mb, ptr %i.dq, align 1
  br label %bb.dy

bb.bn:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.mc = add i64 %.0.copyload.i222, %i.dr
  %i.md = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.me, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.mf = trunc i64 %i.me to i32
  store i32 %i.mf, ptr %i.dq, align 1
  br label %bb.dy

bb.bo:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.mg = add i64 %.0.copyload.i222, %i.dr
  %i.mh = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.mi = sub i64 %i.mg, %i.mh
  store i64 %i.mi, ptr %i.dq, align 1
  br label %bb.dy

bb.bp:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250: ; preds = %bb.bp
  %i.mj = inttoptr i64 %i.ef to ptr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !477 ; 2 uses
  %.not453 = icmp eq i32 %i.ml, -1
  br i1 %.not453, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250
  %i.mm = sext i32 %i.ml to i64
  %i.mn = shl nsw i64 %i.mm, 3
  %i.mo = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.mp = sub i64 %i.mo, %i.dx
  %i.mq = add i64 %i.mp, %i.mn                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.mq, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.mr = trunc i64 %i.mq to i32
  store i32 %i.mr, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread: ; preds = %bb.bp, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250
  %i.ms = call fastcc noundef i32 @_ZN4moldL14relax_gottpoffEPhRKNS_6ElfRelINS_6X86_64EEE(ptr noundef %i.dq, i32 %.0.copyload.i229) ; 3 uses
  %i.mt = lshr i32 %i.ms, 16
  %i.mu = trunc nuw nsw i32 %i.mt to i8
  %i.mv = getelementptr inbounds i8, ptr %i.dq, i64 -3
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !343
  %i.mw = lshr i32 %i.ms, 8
  %i.mx = trunc i32 %i.mw to i8
  %i.my = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !343
  %i.mz = trunc i32 %i.ms to i8
  %i.na = getelementptr inbounds i8, ptr %i.dq, i64 -1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !343
  %i.nb = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.nc = sub i64 %i.dr, %i.nb                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.nc, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.nd = trunc i64 %i.nc to i32
  store i32 %i.nd, ptr %i.dq, align 1
  br label %bb.dy

bb.bq:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ne = inttoptr i64 %i.ef to ptr
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !477
  %i.nh = sext i32 %i.ng to i64
  %i.ni = shl nsw i64 %i.nh, 3
  br label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260: ; preds = %bb.bq, %bb.br
  %i.nj = phi i64 [ %i.ni, %bb.br ], [ -8, %bb.bq ]
  %i.nk = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.nl = sub i64 %i.nk, %i.dx
  %i.nm = add i64 %i.nl, %i.nj                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.nm, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.nn = trunc i64 %i.nm to i32
  store i32 %i.nn, ptr %i.dq, align 1
  br label %bb.dy

bb.bs:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread, label %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit: ; preds = %bb.bs
  %i.no = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !486 ; 2 uses
  %.not451 = icmp eq i32 %i.nq, -1
  br i1 %.not451, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271, label %_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl nsw i64 %i.nr, 3
  %i.nt = sub i64 %.0.copyload.i222, %i.dx
  %i.nu = add i64 %i.nt, %.0.copyload.i.i225
  %i.nv = add i64 %i.nu, %i.ns                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.nv, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.nw = trunc i64 %i.nv to i32
  store i32 %i.nw, ptr %i.dq, align 1
  br label %bb.dy

end_hunk_0
