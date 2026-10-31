Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_reflection?download=true
inline.NumInlined: 8094
inline.NumDeleted: 3434
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  store i16 %spec.select, ptr %i.jl, align 2, !tbaa !755
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store i32 %i.ip, ptr %i.jm, align 4, !tbaa !756
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i8 %i.jf, ptr %i.jn, align 8, !tbaa !757
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hs, i64 9 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = and i8 %i.jp, -2
  store i8 %i.jq, ptr %i.jo, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hs, i64 10 ; 2 uses
  store i16 %i.fz, ptr %i.jr, align 2, !tbaa !758
  %i.js = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 %i.iq, ptr %i.js, align 4, !tbaa !759
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  store i32 %i.gt, ptr %i.jt, align 8, !tbaa !760
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  store i16 %i.jd, ptr %i.ju, align 4, !tbaa !761
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hs, i64 22 ; 3 uses
  store i16 %i.jc, ptr %i.jv, align 2, !tbaa !762
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 4 uses
  store i32 %i.gy, ptr %i.jw, align 8, !tbaa !763
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr %i.ix, ptr %i.jx, align 8, !tbaa !764
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store ptr null, ptr %i.jy, align 8, !tbaa !765
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store ptr %.0.i90, ptr %i.jz, align 8, !tbaa !766
  %i.ka = load ptr, ptr %i.fh, align 8, !tbaa !264 ; 2 uses
  %i.kb = load ptr, ptr %i.fi, align 8, !tbaa !264 ; 2 uses
  %.not4346.i = icmp eq ptr %i.ka, %i.kb
  br i1 %.not4346.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bg, %.lr.ph.i91
  %.048.i = phi ptr [ %i.kc, %.lr.ph.i91 ], [ %.3.i, %bb.bg ] ; 3 uses
  %.sroa.040.047.i = phi ptr [ %i.ka, %.lr.ph.i91 ], [ %i.mn, %bb.bg ] ; 10 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 24
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !266 ; 2 uses
  %i.kg = icmp ne i8 %i.kf, 2
  %.not44.i = icmp eq ptr %.sroa.040.047.i, null  ; 2 uses
  %.not.i92 = or i1 %.not44.i, %i.kg
  br i1 %.not.i92, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kh = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !269 ; 2 uses
  %i.ki = add i8 %i.kh, -118
  %or.cond.i.i = icmp ult i8 %i.ki, -117
  br i1 %or.cond.i.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kj = zext nneg i8 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i: ; preds = %bb.az, %bb.ay
  %.0.i.i = phi ptr [ %i.kl, %bb.az ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.ay ]
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 2
  %i.kn = load i32, ptr %i.km, align 2
  %i.ko = zext i32 %i.kn to i64
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ax
  %i.kp = icmp ne i8 %i.kf, 1
  %.not24.i = or i1 %.not44.i, %i.kp
  br i1 %.not24.i, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !271 ; 6 uses
  %i.ks = load ptr, ptr %i.kd, align 8, !tbaa !87
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = and i8 %i.ku, 8
  %.not.i.i.i93 = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i93, label %bb.bc, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94

bb.bc:                                            ; preds = %bb.bb
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !88
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94: ; preds = %bb.bb
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i.i95 = icmp eq ptr %i.la, null
  br i1 %.not1.i.i.i95, label %bb.bd, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97

bb.bd:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i94
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !89
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97: ; preds = %bb.bd, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96, %bb.bc
  %.sink7.in.i.i.i98 = phi ptr [ %i.le, %bb.bd ], [ %i.lb, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i96 ], [ %i.ky, %bb.bc ]
  %.sink7.i.i.i99 = load ptr, ptr %.sink7.in.i.i.i98, align 8, !tbaa !41
  %i.lf = ptrtoint ptr %i.kr to i64
  %i.lg = ptrtoint ptr %.sink7.i.i.i99 to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %.0.in.i.i.i100 = sdiv exact i64 %i.lh, 88
  %i.li = shl i64 %.0.in.i.i.i100, 32
  %i.lj = ashr exact i64 %i.li, 30
  %i.lk = getelementptr inbounds i8, ptr %i.ks, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !13
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.ln = load i8, ptr %i.lm, align 2, !tbaa !83
  %switch.tableidx = add i8 %i.ln, -9             ; 2 uses
  %i.lo = icmp ult i8 %switch.tableidx, 4
  br i1 %i.lo, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97
  %i.lp = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.lp
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97, %switch.lookup
  %.sink.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i97 ]
  %i.lq = and i32 %.sink.i.i.i, %i.ll             ; 2 uses
  %i.lr = icmp samesign ult i32 %i.lq, 65536
  br i1 %i.lr, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ls = zext nneg i32 %i.lq to i64
  %i.lt = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !272 ; 2 uses
  %i.lu = add i8 %i.lt, -118
  %or.cond.i26.i = icmp ult i8 %i.lu, -117
  br i1 %or.cond.i26.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lv = zext nneg i8 %i.lt to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !82
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i: ; preds = %bb.bf, %bb.be
  %.0.i27.i = phi ptr [ %i.lx, %bb.bf ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.be ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 16
  %i.lz = load i16, ptr %i.ly, align 8, !tbaa !273
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 18
  %i.mb = load i8, ptr %i.ma, align 2, !tbaa !274
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 19
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !275
  %i.me = shl nuw i64 %i.ls, 48
  %i.mf = zext i8 %i.md to i64
  %i.mg = shl nuw nsw i64 %i.mf, 24
  %i.mh = or disjoint i64 %i.mg, %i.me
  %i.mi = zext i8 %i.mb to i64
  %i.mj = shl nuw nsw i64 %i.mi, 16
  %i.mk = or disjoint i64 %i.mh, %i.mj
  %i.ml = zext i16 %i.lz to i64
  %i.mm = or disjoint i64 %i.mk, %i.ml
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i, %bb.ba, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %.0.i.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %.0.i27.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.ba ]
  %.sink.i = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %i.ko, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %i.mm, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ 0, %bb.ba ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i, ptr %.048.i, align 8, !tbaa !82
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  store i64 %.sink.i, ptr %.sroa.4.0..0.sroa_idx.i, align 8, !tbaa !38
  %.3.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 32 ; 2 uses
  %.not43.i = icmp eq ptr %i.mn, %i.kb
  br i1 %.not43.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, label %bb.ax

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit: ; preds = %bb.bg
  %.pre215 = load i16, ptr %i.jr, align 2, !tbaa !758
  br label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit: ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.mo = phi i16 [ %.pre215, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit ], [ %i.fz, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ]
  %i.mp = ptrtoint ptr %i.hs to i64               ; 4 uses
  %i.mq = zext i16 %i.mo to i64
  %i.mr = add i64 %i.mq, %i.mp
  %i.ms = inttoptr i64 %i.mr to ptr               ; 2 uses
  %.val = load ptr, ptr %i.gb, align 8, !tbaa !745 ; 2 uses
  %.val64 = load ptr, ptr %i.gd, align 8, !tbaa !745 ; 2 uses
  %.not12.i = icmp eq ptr %.val, %.val64
  br i1 %.not12.i, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, %._crit_edge.i
  %.014.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ms, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %.sroa.05.013.i = phi ptr [ %i.no, %._crit_edge.i ], [ %.val, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %i.mt = load i32, ptr %.sroa.05.013.i, align 8, !tbaa !771
  store i32 %i.mt, ptr %.014.i, align 2
  %i.mu = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !746 ; 3 uses
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !319 ; 8 uses
  %i.mz = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.na = ptrtoint ptr %i.my to i64               ; 2 uses
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = lshr exact i64 %i.nb, 2
  %i.nd = trunc i64 %i.nc to i16
  %i.ne = getelementptr i8, ptr %.014.i, i64 6    ; 6 uses
  store i16 %i.nd, ptr %i.mu, align 2, !tbaa !285
  %.not89.i = icmp eq ptr %i.my, %i.mx
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.i101.preheader

.lr.ph.i101.preheader:                            ; preds = %.lr.ph16.i
  %i.nf = add i64 %i.mz, -4
  %i.ng = sub i64 %i.nf, %i.na                    ; 3 uses
  %i.nh = lshr i64 %i.ng, 2
  %i.ni = add nuw nsw i64 %i.nh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ng, 28
  br i1 %min.iters.check, label %.lr.ph.i101.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i101.preheader
  %7 = and i64 %i.ng, -4                          ; 2 uses
  %8 = getelementptr i8, ptr %.014.i, i64 %7
  %scevgep287 = getelementptr i8, ptr %8, i64 10
  %scevgep288 = getelementptr i8, ptr %i.my, i64 %7
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 4
  %bound0 = icmp ult ptr %i.ne, %scevgep289
  %bound1 = icmp ult ptr %i.my, %scevgep287
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i101.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ni, 9223372036854775804     ; 3 uses
  %i.nj = shl i64 %n.vec, 2                       ; 2 uses
  %i.nk = getelementptr i8, ptr %i.ne, i64 %i.nj  ; 2 uses
  %i.nl = getelementptr i8, ptr %i.my, i64 %i.nj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ne, i64 %i.nm
  %next.gep290 = getelementptr i8, ptr %i.my, i64 %i.nm
  %wide.vec = load <8 x i16>, ptr %next.gep290, align 2, !tbaa !285, !alias.scope !772
  store <8 x i16> %wide.vec, ptr %next.gep, align 2, !tbaa !285, !alias.scope !773, !noalias !772
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nn = icmp eq i64 %index.next, %n.vec
  br i1 %i.nn, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ni, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i101.preheader297

.lr.ph.i101.preheader297:                         ; preds = %vector.memcheck, %.lr.ph.i101.preheader, %middle.block
  %.111.i.ph = phi ptr [ %i.ne, %vector.memcheck ], [ %i.ne, %.lr.ph.i101.preheader ], [ %i.nk, %middle.block ]
  %.sroa.01.010.i.ph = phi ptr [ %i.my, %vector.memcheck ], [ %i.my, %.lr.ph.i101.preheader ], [ %i.nl, %middle.block ]
  br label %.lr.ph.i101

._crit_edge.i:                                    ; preds = %.lr.ph.i101, %middle.block, %.lr.ph16.i
  %.1.lcssa.i = phi ptr [ %i.ne, %.lr.ph16.i ], [ %i.nk, %middle.block ], [ %i.np, %.lr.ph.i101 ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 32 ; 2 uses
  %.not.i103 = icmp eq ptr %i.no, %.val64
  br i1 %.not.i103, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader297, %.lr.ph.i101
  %.111.i = phi ptr [ %i.np, %.lr.ph.i101 ], [ %.111.i.ph, %.lr.ph.i101.preheader297 ] ; 2 uses
  %.sroa.01.010.i = phi ptr [ %i.nr, %.lr.ph.i101 ], [ %.sroa.01.010.i.ph, %.lr.ph.i101.preheader297 ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.111.i, i64 4 ; 2 uses
  %i.nq = load <2 x i16>, ptr %.sroa.01.010.i, align 2, !tbaa !285
  store <2 x i16> %i.nq, ptr %.111.i, align 2, !tbaa !285
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4 ; 2 uses
  %.not8.i102 = icmp eq ptr %i.nr, %i.mx
  br i1 %.not8.i102, label %._crit_edge.i, label %.lr.ph.i101, !llvm.loop !721

_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit: ; preds = %._crit_edge.i, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit
  %.0.lcssa.i104 = phi ptr [ %i.ms, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.lcssa.i104, i64 2
  store i16 -1, ptr %.0.lcssa.i104, align 2, !tbaa !285
  store i16 -1, ptr %i.ns, align 2, !tbaa !285
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !277 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !277 ; 2 uses
  %.not2527.i = icmp eq ptr %i.nu, %i.nw
  br i1 %.not2527.i, label %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit
  %i.nx = load i32, ptr %i.jt, align 8, !tbaa !760
  %i.ny = zext i32 %i.nx to i64
  %i.nz = add i64 %i.ny, %i.mp
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !87
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oe = load i32, ptr %i.od, align 8
  %i.of = load i32, ptr %i.hx, align 8            ; 2 uses
  %.not26.i = icmp eq i32 %i.of, -1
  %i.og = shl i32 %i.of, 3
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bo, %.lr.ph.i105
  %.029.i = phi ptr [ %i.oa, %.lr.ph.i105 ], [ %i.qd, %bb.bo ] ; 4 uses
  %.sroa.022.028.i = phi ptr [ %i.nu, %.lr.ph.i105 ], [ %i.qe, %bb.bo ] ; 4 uses
  %i.oh = load ptr, ptr %.sroa.022.028.i, align 8, !tbaa !280 ; 8 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 3
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = and i8 %i.oj, 8
  %.not.i.i106 = icmp eq i8 %i.ok, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br i1 %.not.i.i106, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.om = load ptr, ptr %i.ol, align 8, !nonnull !57
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i108 = phi ptr [ %i.om, %bb.bi ], [ null, %bb.bh ] ; 3 uses
  %i.on = and i8 %.pre.i, 8
  %.not.i.i21.i = icmp eq i8 %i.on, 0
  br i1 %.not.i.i21.i, label %bb.bj, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109

bb.bj:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !88
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i.i110 = icmp eq ptr %i.os, null
  br i1 %.not1.i.i.i110, label %bb.bk, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112

bb.bk:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112: ; preds = %bb.bk, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111, %bb.bj
  %.sink7.in.i.i.i113 = phi ptr [ %i.ow, %bb.bk ], [ %i.ot, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111 ], [ %i.oq, %bb.bj ]
  %.sink7.i.i.i114 = load ptr, ptr %.sink7.in.i.i.i113, align 8, !tbaa !41
  %i.ox = ptrtoint ptr %i.oh to i64
  %i.oy = ptrtoint ptr %.sink7.i.i.i114 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %.0.in.i.i.i115 = sdiv exact i64 %i.oz, 88
  %i.pa = shl i64 %.0.in.i.i.i115, 32
  %i.pb = ashr exact i64 %i.pa, 30
  %i.pc = getelementptr inbounds i8, ptr %i.oc, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !13
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.pf = load i8, ptr %i.pe, align 2, !tbaa !83
  %switch.tableidx293 = add i8 %i.pf, -9          ; 2 uses
  %i.pg = icmp ult i8 %switch.tableidx293, 4
  br i1 %i.pg, label %switch.lookup294, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i116

switch.lookup294:                                 ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112
  %i.ph = zext nneg i8 %switch.tableidx293 to i64
  %switch.gep295 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ph
  %switch.load296 = load i32, ptr %switch.gep295, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i116

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i116: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112, %switch.lookup294
  %.sink.i.i.i117 = phi i32 [ %switch.load296, %switch.lookup294 ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i112 ]
  %i.pi = and i32 %.sink.i.i.i117, %i.pd
  store i32 %i.pi, ptr %.029.i, align 4, !tbaa !282
  %.not.i118 = icmp eq ptr %.0.i.i108, null
  br i1 %.not.i118, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i116
  %i.pj = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !60
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 72
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !69
  %i.pn = ptrtoint ptr %.0.i.i108 to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = sdiv exact i64 %i.pp, 56
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = shl nsw i32 %i.pr, 2
  %i.pt = add nsw i32 %i.ps, %i.oe
  br label %bb.bo

bb.bm:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i116
  br i1 %.not26.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !283 ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, -1
  %i.px = add i32 %i.pv, %i.og
  %i.py = select i1 %i.pw, i32 %i.px, i32 -1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sink.i119 = phi i32 [ %i.py, %bb.bn ], [ %i.pt, %bb.bl ], [ 0, %bb.bm ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.029.i, i64 4
  store i32 %.sink.i119, ptr %i.pz, align 4, !tbaa !284
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 12
  %i.qb = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.qc = load <2 x i16>, ptr %i.qa, align 4, !tbaa !285
  store <2 x i16> %i.qc, ptr %i.qb, align 4, !tbaa !285
  %i.qd = getelementptr inbounds nuw i8, ptr %.029.i, i64 12
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 24 ; 2 uses
  %.not25.i = icmp eq ptr %i.qe, %i.nw
  br i1 %.not25.i, label %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit, label %bb.bh

_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit: ; preds = %bb.bo, %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit
  %i.qf = load i32, ptr %i.jw, align 8, !tbaa !763
  %i.qg = zext i32 %i.qf to i64
  %i.qh = add i64 %i.qg, %i.mp
  %i.qi = inttoptr i64 %i.qh to ptr
  invoke void @_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef %i.qi)
          to label %bb.bp unwind label %bb.bv

bb.bp:                                            ; preds = %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit
  %i.qj = load ptr, ptr %i.hj, align 8, !tbaa !181 ; 5 uses
  %i.qk = load ptr, ptr %i.hk, align 8, !tbaa !181 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %bb.br, label %bb.bq
end_hunk_0
