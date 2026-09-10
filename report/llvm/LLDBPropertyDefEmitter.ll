Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLDBPropertyDefEmitter?download=true
inline.NumInlined: 306
inline.NumDeleted: 148
begin_hunk_0_@_ZN12lldb_private16EmitPropertyDefsERKN4llvm12RecordKeeperERNS0_11raw_ostreamE:bb.a
  %i.jd = icmp ult i64 %i.jc, 13
  br i1 %i.jd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit43.i
  %i.je = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, ptr noundef nonnull @.str.14, i64 noundef 13) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46.i

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit43.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.iz, ptr noundef nonnull align 1 dereferenceable(13) @.str.14, i64 13, i1 false)
  %i.jf = load ptr, ptr %i.iy, align 8, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 13
  store ptr %i.jg, ptr %i.iy, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46.i

_ZN4llvm11raw_ostreamlsEPKc.exit46.i:             ; preds = %bb.ae, %bb.ad
  br i1 %.not6.i.not.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit58.i, label %bb.dh

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit31.i, %_ZL12emitPropertyPKN4llvm6RecordERNS_11raw_ostreamE.exit.i
  %.sroa.079.091.i = phi ptr [ %i.xy, %_ZL12emitPropertyPKN4llvm6RecordERNS_11raw_ostreamE.exit.i ], [ %i.hc, %_ZN4llvm11raw_ostreamlsEPKc.exit31.i ] ; 2 uses
  %i.jh = load ptr, ptr %.sroa.079.091.i, align 8, !tbaa !31 ; 9 uses
  %i.ji = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.jj = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = icmp ult i64 %i.jm, 3
  br i1 %i.jn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i
  %i.jo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.22, i64 noundef 3) #9 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.ag:                                            ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jj, ptr noundef nonnull align 1 dereferenceable(3) @.str.22, i64 3, i1 false)
  %i.jp = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 3 ; 2 uses
  store ptr %i.jq, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.ag, %bb.af
  %i.jr = phi ptr [ %.pre.i.i, %bb.af ], [ %i.jq, %bb.ag ] ; 2 uses
  %i.js = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.jt = icmp eq ptr %i.js, %i.jr
  br i1 %i.jt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.ju = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 1) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68.i.i

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  store i8 34, ptr %i.jr, align 1
  %i.jv = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store ptr %i.jw, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit68.i.i:           ; preds = %bb.ai, %bb.ah
  %.0.i.i67.i.i = phi ptr [ %i.ju, %bb.ah ], [ %1, %bb.ai ] ; 5 uses
  %i.jx = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.24, i64 4) #9 ; 2 uses
  %i.jy = extractvalue { ptr, i64 } %i.jx, 0      ; 2 uses
  %i.jz = extractvalue { ptr, i64 } %i.jx, 1      ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i67.i.i, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !36
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.i67.i.i, i64 32 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !37 ; 3 uses
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = icmp ugt i64 %i.jz, %i.kg
  br i1 %i.kh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68.i.i
  %i.ki = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i67.i.i, ptr noundef %i.jy, i64 noundef %i.jz) #9 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %.pre240.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68.i.i
  %.not.i.i47.i = icmp eq i64 %i.jz, 0
  br i1 %.not.i.i47.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 1 %i.jy, i64 %i.jz, i1 false)
  %i.kj = load ptr, ptr %i.kc, align 8, !tbaa !37
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.jz ; 2 uses
  store ptr %i.kk, ptr %i.kc, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.al, %bb.ak, %bb.aj
  %i.kl = phi ptr [ %.pre240.i.i, %bb.aj ], [ %i.kk, %bb.al ], [ %i.kd, %bb.ak ] ; 2 uses
  %.0.i.i48.i = phi ptr [ %i.ki, %bb.aj ], [ %.0.i.i67.i.i, %bb.al ], [ %.0.i.i67.i.i, %bb.ak ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !36
  %i.ko = icmp eq ptr %i.kn, %i.kl
  br i1 %i.ko, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.kp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i48.i, ptr noundef nonnull @.str.23, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 32 ; 2 uses
  store i8 34, ptr %i.kl, align 1
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !37
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store ptr %i.ks, ptr %i.kq, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i:           ; preds = %bb.an, %bb.am
  %i.kt = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ku = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp ult i64 %i.kx, 2
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i
  %i.kz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i
  store i16 8236, ptr %i.ku, align 1
  %i.la = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  store ptr %i.lb, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i:           ; preds = %bb.ap, %bb.ao
  %i.lc = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.26, i64 4) #9 ; 2 uses
  %i.ld = extractvalue { ptr, i64 } %i.lc, 0      ; 2 uses
  %i.le = extractvalue { ptr, i64 } %i.lc, 1      ; 5 uses
  %i.lf = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = icmp ult i64 %i.lj, 18
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i
  %i.ll = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.27, i64 noundef 18) #9 ; 0 uses
  %.pre241.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77.i.i

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.lg, ptr noundef nonnull align 1 dereferenceable(18) @.str.27, i64 18, i1 false)
  %i.lm = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 18 ; 2 uses
  store ptr %i.ln, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit77.i.i:           ; preds = %bb.ar, %bb.aq
  %i.lo = phi ptr [ %.pre241.i.i, %bb.aq ], [ %i.ln, %bb.ar ] ; 3 uses
  %i.lp = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = icmp ugt i64 %i.le, %i.ls
  br i1 %i.lt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77.i.i
  %i.lu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ld, i64 noundef %i.le) #9 ; 0 uses
  %.pre242.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77.i.i
  %.not.i78.i.i = icmp eq i64 %i.le, 0
  br i1 %.not.i78.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 1 %i.ld, i64 %i.le, i1 false)
  %i.lv = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.le ; 2 uses
  store ptr %i.lw, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i: ; preds = %bb.au, %bb.at, %bb.as
  %i.lx = phi ptr [ %.pre242.i.i, %bb.as ], [ %i.lo, %bb.at ], [ %i.lw, %bb.au ] ; 2 uses
  %i.ly = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = icmp ult i64 %i.mb, 2
  br i1 %i.mc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i
  %i.md = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit80.i.i
  store i16 8236, ptr %i.lx, align 1
  %i.me = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  store ptr %i.mf, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i:           ; preds = %bb.aw, %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jh, i64 168 ; 8 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.mi = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.mh, ptr nonnull @.str.28, i64 6, i32 noundef 0) #9
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jh, i64 104 ; 8 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jh, i64 112 ; 8 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.mn, 56
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i.i
  %.not18.i.i.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not18.i.i.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i, %bb.ax
  %.01219.i.i.i.i = phi ptr [ %i.mq, %bb.ax ], [ %i.mk, %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i ] ; 2 uses
  %i.mp = load ptr, ptr %.01219.i.i.i.i, align 8, !tbaa !105
  %.not15.i.i.i.i = icmp eq ptr %i.mp, %i.mi
  br i1 %.not15.i.i.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.01219.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mq, %i.mo
  br i1 %.not.i.i.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i, label %.lr.ph.i.i.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i: ; preds = %bb.ax, %.lr.ph.i.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i
  %.not.i49.i = phi ptr [ @.str.30, %_ZN4llvm11raw_ostreamlsEPKc.exit83.i.i ], [ @.str.30, %bb.ax ], [ @.str.29, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.mr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.not.i49.i) #9 ; 5 uses
  %i.ms = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.mt = load ptr, ptr %i.m, align 8, !tbaa !37  ; 3 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = icmp ugt i64 %i.mr, %i.mw
  br i1 %i.mx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i
  %i.my = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.not.i49.i, i64 noundef %i.mr) #9 ; 0 uses
  %.pre243.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i

bb.az:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.i.i
  %.not.i2.i85.i.i = icmp eq i64 %i.mr, 0
  br i1 %.not.i2.i85.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr nonnull align 1 %.not.i49.i, i64 %i.mr, i1 false)
  %i.mz = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr ; 2 uses
  store ptr %i.na, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i:           ; preds = %bb.ba, %bb.az, %bb.ay
  %i.nb = phi ptr [ %.pre243.i.i, %bb.ay ], [ %i.mt, %bb.az ], [ %i.na, %bb.ba ] ; 2 uses
  %i.nc = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = icmp ult i64 %i.nf, 2
  br i1 %i.ng, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i
  %i.nh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87.i.i
  store i16 8236, ptr %i.nb, align 1
  %i.ni = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  store ptr %i.nj, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i:           ; preds = %bb.bc, %bb.bb
  %i.nk = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.nl = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.nk, ptr nonnull @.str.31, i64 23, i32 noundef 0) #9
  %i.nm = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.nn = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %.idx.i.i91.i.i = mul nuw nsw i64 %i.no, 56
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.idx.i.i91.i.i
  %.not18.i.i92.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not18.i.i92.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i, label %.lr.ph.i.i93.i.i

.lr.ph.i.i93.i.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i, %.lr.ph.i.i93.i.i
  %.01219.i.i94.i.i = phi ptr [ %i.nr, %.lr.ph.i.i93.i.i ], [ %i.nm, %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i ] ; 2 uses
  %i.nq = load ptr, ptr %.01219.i.i94.i.i, align 8, !tbaa !105
  %.not15.i.i95.not.i.not.i.not = icmp ne ptr %i.nq, %i.nl ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.01219.i.i94.i.i, i64 56 ; 2 uses
  %.not.i.i96.i.i = icmp ne ptr %i.nr, %i.np
  %or.cond.not = select i1 %.not15.i.i95.not.i.not.i.not, i1 %.not.i.i96.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i93.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i: ; preds = %.lr.ph.i.i93.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i
  %.not59.i.i = phi i1 [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit90.i.i ], [ %.not15.i.i95.not.i.not.i.not, %.lr.ph.i.i93.i.i ]
  %i.ns = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.nt = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.ns, ptr nonnull @.str.32, i64 19, i32 noundef 0) #9
  %i.nu = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.nv = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.nw = zext i32 %i.nv to i64
  %.idx.i.i98.i.i = mul nuw nsw i64 %i.nw, 56
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.idx.i.i98.i.i
  %.not18.i.i99.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not18.i.i99.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i, label %.lr.ph.i.i100.i.i

.lr.ph.i.i100.i.i:                                ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i, %.lr.ph.i.i100.i.i
  %.01219.i.i101.i.i = phi ptr [ %i.nz, %.lr.ph.i.i100.i.i ], [ %i.nu, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i ] ; 2 uses
  %i.ny = load ptr, ptr %.01219.i.i101.i.i, align 8, !tbaa !105
  %.not15.i.i102.not.i.not.i.not = icmp ne ptr %i.ny, %i.nt ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.01219.i.i101.i.i, i64 56 ; 2 uses
  %.not.i.i103.i.i = icmp ne ptr %i.nz, %i.nx
  %or.cond217.not = select i1 %.not15.i.i102.not.i.not.i.not, i1 %.not.i.i103.i.i, i1 false
  br i1 %or.cond217.not, label %.lr.ph.i.i100.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i: ; preds = %.lr.ph.i.i100.i.i, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i
  %.not60.i.i = phi i1 [ true, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit97.i.i ], [ %.not15.i.i102.not.i.not.i.not, %.lr.ph.i.i100.i.i ]
  %i.oa = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.ob = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.oa, ptr nonnull @.str.33, i64 21, i32 noundef 0) #9
  %i.oc = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.od = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.oe = zext i32 %i.od to i64
  %.idx.i.i105.i.i = mul nuw nsw i64 %i.oe, 56
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.idx.i.i105.i.i
  %.not18.i.i106.i.i = icmp eq i32 %i.od, 0
  br i1 %.not18.i.i106.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i, label %.lr.ph.i.i107.i.i

.lr.ph.i.i107.i.i:                                ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i, %.lr.ph.i.i107.i.i
  %.01219.i.i108.i.i = phi ptr [ %i.oh, %.lr.ph.i.i107.i.i ], [ %i.oc, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i ] ; 2 uses
  %i.og = load ptr, ptr %.01219.i.i108.i.i, align 8, !tbaa !105
  %.not15.i.i109.not.i.not.i.not = icmp ne ptr %i.og, %i.ob ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.01219.i.i108.i.i, i64 56 ; 2 uses
  %.not.i.i110.i.i = icmp ne ptr %i.oh, %i.of
  %or.cond218.not = select i1 %.not15.i.i109.not.i.not.i.not, i1 %.not.i.i110.i.i, i1 false
  br i1 %or.cond218.not, label %.lr.ph.i.i107.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i: ; preds = %.lr.ph.i.i107.i.i, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i
  %.not61.i.i = phi i1 [ true, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit104.i.i ], [ %.not15.i.i109.not.i.not.i.not, %.lr.ph.i.i107.i.i ]
  %i.oi = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.oj = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.oi, ptr nonnull @.str.34, i64 14, i32 noundef 0) #9
  %i.ok = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.ol = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.om = zext i32 %i.ol to i64
  %.idx.i.i112.i.i = mul nuw nsw i64 %i.om, 56
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.idx.i.i112.i.i
  %.not18.i.i113.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not18.i.i113.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit118.i.i, label %.lr.ph.i.i114.i.i

.lr.ph.i.i114.i.i:                                ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i, %.lr.ph.i.i114.i.i
  %.01219.i.i115.i.i = phi ptr [ %i.op, %.lr.ph.i.i114.i.i ], [ %i.ok, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i ] ; 2 uses
  %i.oo = load ptr, ptr %.01219.i.i115.i.i, align 8, !tbaa !105
  %.not15.i.i116.not.i.not.i.not = icmp ne ptr %i.oo, %i.oj ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.01219.i.i115.i.i, i64 56 ; 2 uses
  %.not.i.i117.i.i = icmp ne ptr %i.op, %i.on
  %or.cond219.not = select i1 %.not15.i.i116.not.i.not.i.not, i1 %.not.i.i117.i.i, i1 false
  br i1 %or.cond219.not, label %.lr.ph.i.i114.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit118.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit118.i.i: ; preds = %.lr.ph.i.i114.i.i, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i
  %.not62.i.i = phi i1 [ true, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit111.i.i ], [ %.not15.i.i116.not.i.not.i.not, %.lr.ph.i.i114.i.i ]
  br i1 %.not59.i.i, label %bb.bm, label %bb.bd

bb.bd:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit118.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.oq = call noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.35, i64 20) #9 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.or = call i64 @llvm.abs.i64(i64 %i.oq, i1 false) ; 5 uses
  %i.os = icmp ult i64 %i.or, 10
  br i1 %i.os, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i, label %.lr.ph.i.i119.i.i

.lr.ph.i.i119.i.i:                                ; preds = %bb.bd, %bb.bj
  %.029.i.i.i.i = phi i32 [ %i.pa, %bb.bj ], [ 1, %bb.bd ] ; 4 uses
  %.02328.i.i.i.i = phi i64 [ %i.oz, %bb.bj ], [ %i.or, %bb.bd ] ; 5 uses
  %i.ot = icmp ult i64 %.02328.i.i.i.i, 100
  br i1 %i.ot, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i119.i.i
  %i.ou = add i32 %.029.i.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i119.i.i
  %i.ov = icmp ult i64 %.02328.i.i.i.i, 1000
  br i1 %i.ov, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ow = add i32 %.029.i.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ox = icmp ult i64 %.02328.i.i.i.i, 10000
  br i1 %i.ox, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.oy = add i32 %.029.i.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.oz = udiv i64 %.02328.i.i.i.i, 10000
  %i.pa = add i32 %.029.i.i.i.i, 4                ; 2 uses
  %i.pb = icmp ult i64 %.02328.i.i.i.i, 100000
  br i1 %i.pb, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i, label %.lr.ph.i.i119.i.i, !llvm.loop !88

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.be, %bb.bd
  %.022.i.i.i.i = phi i32 [ %i.oy, %bb.bi ], [ %i.ou, %bb.be ], [ %i.ow, %bb.bg ], [ 1, %bb.bd ], [ %i.pa, %bb.bj ] ; 2 uses
  %.lobit.i.i.i = lshr i64 %i.oq, 63              ; 2 uses
  %i.pc = trunc nuw nsw i64 %.lobit.i.i.i to i32
  %i.pd = add i32 %.022.i.i.i.i, %i.pc
  %i.pe = zext i32 %i.pd to i64
  store ptr %i.n, ptr %2, align 8, !tbaa !18, !alias.scope !106
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.pe, i8 noundef signext 45) #9
  %i.pf = load ptr, ptr %2, align 8, !tbaa !20, !alias.scope !106
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.lobit.i.i.i ; 4 uses
  %i.ph = icmp ugt i64 %i.or, 99
  br i1 %i.ph, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i
  %i.pi = add i32 %.022.i.i.i.i, -1
  br label %.lr.ph.i11.i.i.i

.lr.ph.i11.i.i.i:                                 ; preds = %.lr.ph.i11.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.pl, %.lr.ph.i11.i.i.i ], [ %i.or, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.01819.i.i.i.i = phi i32 [ %i.pv, %.lr.ph.i11.i.i.i ], [ %i.pi, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.pj = urem i64 %.020.i.i.i.i, 100
  %i.pk = shl nuw nsw i64 %i.pj, 1
  %i.pl = udiv i64 %.020.i.i.i.i, 100             ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.pk ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !23, !noalias !106
  %i.pp = zext i32 %.01819.i.i.i.i to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pp
  store i8 %i.po, ptr %i.pq, align 1, !tbaa !23
  %i.pr = load i8, ptr %i.pm, align 2, !tbaa !23, !noalias !106
  %i.ps = add i32 %.01819.i.i.i.i, -1
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pt
  store i8 %i.pr, ptr %i.pu, align 1, !tbaa !23
  %i.pv = add i32 %.01819.i.i.i.i, -2
  %i.pw = icmp ugt i64 %.020.i.i.i.i, 9999
  br i1 %i.pw, label %.lr.ph.i11.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !89

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i11.i.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.or, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i ], [ %i.pl, %.lr.ph.i11.i.i.i ] ; 3 uses
  %i.px = icmp samesign ugt i64 %.0.lcssa.i.i.i.i, 9
  br i1 %i.px, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i
  %i.py = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.pz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.py ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !23, !noalias !106
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !23
  %i.qd = load i8, ptr %i.pz, align 2, !tbaa !23, !noalias !106
  br label %_ZNSt7__cxx119to_stringEl.exit.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qe = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.qf = or disjoint i8 %i.qe, 48
  br label %_ZNSt7__cxx119to_stringEl.exit.i.i

_ZNSt7__cxx119to_stringEl.exit.i.i:               ; preds = %bb.bl, %bb.bk
  %storemerge.i.i.i.i = phi i8 [ %i.qf, %bb.bl ], [ %i.qd, %bb.bk ]
  store i8 %storemerge.i.i.i.i, ptr %i.pg, align 1, !tbaa !23
  %i.qg = load ptr, ptr %2, align 8, !tbaa !20
  %i.qh = load i64, ptr %i.o, align 8, !tbaa !21
  %i.qi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.qg, i64 noundef %i.qh) #9 ; 0 uses
  %i.qj = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.n
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEl.exit.i.i
  %i.ql = load i64, ptr %i.n, align 8, !tbaa !23
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEl.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.bm:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit118.i.i
  br i1 %.not60.i.i, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qn = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.36, i64 16) #9 ; 2 uses
  %i.qo = extractvalue { ptr, i64 } %i.qn, 0      ; 2 uses
  %i.qp = extractvalue { ptr, i64 } %i.qn, 1      ; 5 uses
  %i.qq = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.qr = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = icmp ugt i64 %i.qp, %i.qu
  br i1 %i.qv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.qo, i64 noundef %i.qp) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.bp:                                            ; preds = %bb.bn
  %.not.i120.i.i = icmp eq i64 %i.qp, 0
  br i1 %.not.i120.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qr, ptr align 1 %i.qo, i64 %i.qp, i1 false)
  %i.qx = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qp
  store ptr %i.qy, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.br:                                            ; preds = %bb.bm
  %i.qz = load ptr, ptr %i.l, align 8, !tbaa !36  ; 2 uses
  %i.ra = load ptr, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  br i1 %.not62.i.i, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = icmp ult i64 %i.rd, 18
  br i1 %i.re, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.rf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.27, i64 noundef 18) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit125.i.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ra, ptr noundef nonnull align 1 dereferenceable(18) @.str.27, i64 18, i1 false)
  %i.rg = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 18
  store ptr %i.rh, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit125.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit125.i.i:          ; preds = %bb.bu, %bb.bt
  %i.ri = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.37, i64 11) #9 ; 2 uses
  %i.rj = extractvalue { ptr, i64 } %i.ri, 0      ; 2 uses
  %i.rk = extractvalue { ptr, i64 } %i.ri, 1      ; 5 uses
  %i.rl = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.rm = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = icmp ugt i64 %i.rk, %i.rp
  br i1 %i.rq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit125.i.i
  %i.rr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.rj, i64 noundef %i.rk) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit125.i.i
  %.not.i126.i.i = icmp eq i64 %i.rk, 0
  br i1 %.not.i126.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr align 1 %i.rj, i64 %i.rk, i1 false)
  %i.rs = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rk
  store ptr %i.rt, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.by:                                            ; preds = %bb.br
  %i.ru = icmp eq ptr %i.qz, %i.ra
  br i1 %i.ru, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.38, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

bb.ca:                                            ; preds = %bb.by
  store i8 48, ptr %i.ra, align 1
  %i.rw = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  store ptr %i.rx, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i: ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bq, %bb.bp, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ry = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.rz = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = icmp ult i64 %i.sc, 2
  br i1 %i.sd, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i
  %i.se = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit134.i.i

bb.cc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit122.i.i
  store i16 8236, ptr %i.rz, align 1
  %i.sf = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  store ptr %i.sg, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit134.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit134.i.i:          ; preds = %bb.cc, %bb.cb
  br i1 %.not61.i.i, label %bb.cl, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit134.i.i
  %i.sh = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.si = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.sh, ptr nonnull @.str.39, i64 18, i32 noundef 0) #9
  %i.sj = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.sk = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %.idx.i.i135.i.i = mul nuw nsw i64 %i.sl, 56
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.idx.i.i135.i.i
  %.not18.i.i136.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not18.i.i136.i.i, label %.loopexit227.i.i, label %.lr.ph.i.i137.i.i

.lr.ph.i.i137.i.i:                                ; preds = %bb.cd, %bb.ce
  %.01219.i.i138.i.i = phi ptr [ %i.so, %bb.ce ], [ %i.sj, %bb.cd ] ; 3 uses
  %i.sn = load ptr, ptr %.01219.i.i138.i.i, align 8, !tbaa !105
  %.not15.i.i139.i.i = icmp eq ptr %i.sn, %i.si
  br i1 %.not15.i.i139.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit141.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i137.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %.01219.i.i138.i.i, i64 56 ; 2 uses
  %.not.i.i140.i.i = icmp eq ptr %i.so, %i.sm
  br i1 %.not.i.i140.i.i, label %.loopexit227.i.i, label %.lr.ph.i.i137.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit141.i.i: ; preds = %.lr.ph.i.i137.i.i
  %i.sp = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.sq = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit141.i.i
  %i.ss = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit144.i.i

bb.cg:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit141.i.i
  store i8 34, ptr %i.sq, align 1
  %i.st = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  store ptr %i.su, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit144.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit144.i.i:          ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.sv = getelementptr inbounds nuw i8, ptr %.01219.i.i138.i.i, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !107 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !109
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(10) %i.sw) #9, !inline_history !90
  %i.ta = load ptr, ptr %3, align 8, !tbaa !20
  %i.tb = load i64, ptr %i.p, align 8, !tbaa !21
  %i.tc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ta, i64 noundef %i.tb) #9 ; 0 uses
  %i.td = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.q
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit144.i.i
  %i.tf = load i64, ptr %i.q, align 8, !tbaa !23
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit144.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.th = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ti = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i.i
  %i.tk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i.i
  store i8 34, ptr %i.ti, align 1
  %i.tl = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  store ptr %i.tm, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

.loopexit227.i.i:                                 ; preds = %bb.ce, %bb.cd
  %i.tn = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.to = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = icmp ult i64 %i.tr, 2
  br i1 %i.ts, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit227.i.i
  %i.tt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.40, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

bb.ck:                                            ; preds = %.loopexit227.i.i
  store i16 8738, ptr %i.to, align 1
  %i.tu = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  store ptr %i.tv, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

bb.cl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit134.i.i
  %i.tw = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.tx = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = icmp ult i64 %i.ua, 7
  br i1 %i.ub, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.uc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.41, i64 noundef 7) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.tx, ptr noundef nonnull align 1 dereferenceable(7) @.str.41, i64 7, i1 false)
  %i.ud = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 7
  store ptr %i.ue, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i:          ; preds = %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %i.uf = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ug = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = icmp ult i64 %i.uj, 2
  br i1 %i.uk, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i
  %i.ul = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i

bb.cp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit150.i.i
  store i16 8236, ptr %i.ug, align 1
  %i.um = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 2
  store ptr %i.un, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i:          ; preds = %bb.cp, %bb.co
  %i.uo = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.up = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.uo, ptr nonnull @.str.42, i64 10, i32 noundef 0) #9
  %i.uq = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.ur = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.us = zext i32 %i.ur to i64
  %.idx.i.i160.i.i = mul nuw nsw i64 %i.us, 56
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.idx.i.i160.i.i
  %.not18.i.i161.i.i = icmp eq i32 %i.ur, 0
  br i1 %.not18.i.i161.i.i, label %.loopexit226.i.i, label %.lr.ph.i.i162.i.i

.lr.ph.i.i162.i.i:                                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i, %bb.cq
  %.01219.i.i163.i.i = phi ptr [ %i.uv, %bb.cq ], [ %i.uq, %_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i ] ; 2 uses
  %i.uu = load ptr, ptr %.01219.i.i163.i.i, align 8, !tbaa !105
  %.not15.i.i164.i.i = icmp eq ptr %i.uu, %i.up
  br i1 %.not15.i.i164.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit166.i.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i162.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.01219.i.i163.i.i, i64 56 ; 2 uses
  %.not.i.i165.i.i = icmp eq ptr %i.uv, %i.ut
  br i1 %.not.i.i165.i.i, label %.loopexit226.i.i, label %.lr.ph.i.i162.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit166.i.i: ; preds = %.lr.ph.i.i162.i.i
  %i.uw = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.jh, ptr nonnull @.str.42, i64 10) #9 ; 2 uses
  %i.ux = extractvalue { ptr, i64 } %i.uw, 0      ; 2 uses
  %i.uy = extractvalue { ptr, i64 } %i.uw, 1      ; 5 uses
  %i.uz = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.va = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = icmp ugt i64 %i.uy, %i.vd
  br i1 %i.ve, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit166.i.i
  %i.vf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ux, i64 noundef %i.uy) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i

bb.cs:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit166.i.i
  %.not.i167.i.i = icmp eq i64 %i.uy, 0
  br i1 %.not.i167.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.va, ptr align 1 %i.ux, i64 %i.uy, i1 false)
  %i.vg = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.uy
  store ptr %i.vh, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i

.loopexit226.i.i:                                 ; preds = %bb.cq, %_ZN4llvm11raw_ostreamlsEPKc.exit159.i.i
  %i.vi = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.vj = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = icmp ult i64 %i.vm, 2
  br i1 %i.vn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.loopexit226.i.i
  %i.vo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.43, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i

bb.cv:                                            ; preds = %.loopexit226.i.i
  store i16 32123, ptr %i.vj, align 1
  %i.vp = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 2
  store ptr %i.vq, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i: ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %i.vr = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.vs = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = icmp ult i64 %i.vv, 2
  br i1 %i.vw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i
  %i.vx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i

bb.cx:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit169.i.i
  store i16 8236, ptr %i.vs, align 1
  %i.vy = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  store ptr %i.vz, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i:          ; preds = %bb.cx, %bb.cw
  %i.wa = load ptr, ptr %i.mg, align 8, !tbaa !96, !nonnull !97, !align !98
  %i.wb = call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.wa, ptr nonnull @.str.44, i64 11, i32 noundef 0) #9
  %i.wc = load ptr, ptr %i.mj, align 8, !tbaa !99 ; 2 uses
  %i.wd = load i32, ptr %i.ml, align 8, !tbaa !100 ; 2 uses
  %i.we = zext i32 %i.wd to i64
  %.idx.i.i176.i.i = mul nuw nsw i64 %i.we, 56
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx.i.i176.i.i
  %.not18.i.i177.i.i = icmp eq i32 %i.wd, 0
  br i1 %.not18.i.i177.i.i, label %.loopexit.i.i, label %.lr.ph.i.i178.i.i

.lr.ph.i.i178.i.i:                                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i, %bb.cy
  %.01219.i.i179.i.i = phi ptr [ %i.wh, %bb.cy ], [ %i.wc, %_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i ] ; 3 uses
  %i.wg = load ptr, ptr %.01219.i.i179.i.i, align 8, !tbaa !105
  %.not15.i.i180.i.i = icmp eq ptr %i.wg, %i.wb
  br i1 %.not15.i.i180.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit182.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i178.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.01219.i.i179.i.i, i64 56 ; 2 uses
  %.not.i.i181.i.i = icmp eq ptr %i.wh, %i.wf
  br i1 %.not.i.i181.i.i, label %.loopexit.i.i, label %.lr.ph.i.i178.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit182.i.i: ; preds = %.lr.ph.i.i178.i.i
  %i.wi = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.wj = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit182.i.i
  %i.wl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185.i.i

bb.da:                                            ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit182.i.i
  store i8 34, ptr %i.wj, align 1
  %i.wm = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  store ptr %i.wn, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit185.i.i:          ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.wo = getelementptr inbounds nuw i8, ptr %.01219.i.i179.i.i, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !107 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !109
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 48
  %i.ws = load ptr, ptr %i.wr, align 8
  call void %i.ws(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(10) %i.wp) #9, !inline_history !90
  %i.wt = load ptr, ptr %4, align 8, !tbaa !20
  %i.wu = load i64, ptr %i.r, align 8, !tbaa !21
  %i.wv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.wt, i64 noundef %i.wu) #9 ; 0 uses
  %i.ww = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.s
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185.i.i
  %i.wy = load i64, ptr %i.s, align 8, !tbaa !23
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.xa = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.xb = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i.i
  %i.xd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i.i
  store i8 34, ptr %i.xb, align 1
  %i.xe = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 1
  store ptr %i.xf, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i

.loopexit.i.i:                                    ; preds = %bb.cy, %_ZN4llvm11raw_ostreamlsEPKc.exit175.i.i
  %i.xg = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.xh = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64
  %i.xj = ptrtoint ptr %i.xh to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = icmp ult i64 %i.xk, 2
  br i1 %i.xl, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.loopexit.i.i
  %i.xm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.40, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i

bb.de:                                            ; preds = %.loopexit.i.i
  store i16 8738, ptr %i.xh, align 1
  %i.xn = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 2
  store ptr %i.xo, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i:          ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %i.xp = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.xq = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = icmp ult i64 %i.xt, 3
  br i1 %i.xu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i
  %i.xv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.45, i64 noundef 3) #9 ; 0 uses
  br label %_ZL12emitPropertyPKN4llvm6RecordERNS_11raw_ostreamE.exit.i

bb.dg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit191.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xq, ptr noundef nonnull align 1 dereferenceable(3) @.str.45, i64 3, i1 false)
  %i.xw = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 3
  store ptr %i.xx, ptr %i.m, align 8, !tbaa !37
  br label %_ZL12emitPropertyPKN4llvm6RecordERNS_11raw_ostreamE.exit.i

_ZL12emitPropertyPKN4llvm6RecordERNS_11raw_ostreamE.exit.i: ; preds = %bb.dg, %bb.df
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.079.091.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.xy, %i.hd
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.dh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46.i
  %i.xz = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ya = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc
  %i.ye = icmp ult i64 %i.yd, 19
  br i1 %i.ye, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.yf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.15, i64 noundef 19) #9 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %.pre99.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53.i

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ya, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.yg = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 19 ; 2 uses
  store ptr %i.yh, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53.i

_ZN4llvm11raw_ostreamlsEPKc.exit53.i:             ; preds = %bb.dj, %bb.di
  %i.yi = phi ptr [ %.pre99.i, %bb.di ], [ %i.yh, %bb.dj ] ; 3 uses
  %.0.i.i52.i = phi ptr [ %i.yf, %bb.di ], [ %1, %bb.dj ] ; 5 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.0.i.i52.i, i64 24
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !36
  %i.yl = getelementptr inbounds nuw i8, ptr %.0.i.i52.i, i64 32 ; 2 uses
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = ptrtoint ptr %i.yi to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = icmp ugt i64 %.sroa.4.2.i, %i.yo
  br i1 %i.yp, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53.i
  %i.yq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i52.i, ptr noundef %.sroa.082.2.i, i64 noundef %.sroa.4.2.i) #9 ; 2 uses
  %.phi.trans.insert100.i = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %.pre101.i = load ptr, ptr %.phi.trans.insert100.i, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.dl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53.i
  %.not.i54.i = icmp eq i64 %.sroa.4.2.i, 0
  br i1 %.not.i54.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yi, ptr align 1 %.sroa.082.2.i, i64 %.sroa.4.2.i, i1 false)
  %i.yr = load ptr, ptr %i.yl, align 8, !tbaa !37
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %.sroa.4.2.i ; 2 uses
  store ptr %i.ys, ptr %i.yl, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.yt = phi ptr [ %.pre101.i, %bb.dk ], [ %i.ys, %bb.dm ], [ %i.yi, %bb.dl ] ; 2 uses
  %.0.i.i = phi ptr [ %i.yq, %bb.dk ], [ %.0.i.i52.i, %bb.dm ], [ %.0.i.i52.i, %bb.dl ] ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !36
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = ptrtoint ptr %i.yt to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = icmp ult i64 %i.yy, 3
  br i1 %i.yz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.za = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.16, i64 noundef 3) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58.i

bb.do:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.zb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yt, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !37
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 3
  store ptr %i.zd, ptr %i.zb, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58.i

_ZN4llvm11raw_ostreamlsEPKc.exit58.i:             ; preds = %bb.do, %bb.dn, %_ZN4llvm11raw_ostreamlsEPKc.exit46.i
  %i.ze = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.zf = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.zg = ptrtoint ptr %i.ze to i64
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = icmp ult i64 %i.zi, 3
  br i1 %i.zj, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit58.i
  %i.zk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.10, i64 noundef 3) #9 ; 0 uses
  %.pre102.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62.i

bb.dq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit58.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zf, ptr noundef nonnull align 1 dereferenceable(3) @.str.10, i64 3, i1 false)
  %i.zl = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 3 ; 2 uses
  store ptr %i.zm, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62.i

_ZN4llvm11raw_ostreamlsEPKc.exit62.i:             ; preds = %bb.dq, %bb.dp
  %i.zn = phi ptr [ %.pre102.i, %bb.dp ], [ %i.zm, %bb.dq ] ; 2 uses
  %i.zo = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zn to i64
  %i.zr = sub i64 %i.zp, %i.zq
  %i.zs = icmp ult i64 %i.zr, 7
  br i1 %i.zs, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62.i
  %i.zt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 7) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit66.i

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.zn, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false)
  %i.zu = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 7
  store ptr %i.zv, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit66.i

_ZN4llvm11raw_ostreamlsEPKc.exit66.i:             ; preds = %bb.ds, %bb.dr
  %.0.i.i65.i = phi ptr [ %i.zt, %bb.dr ], [ %1, %bb.ds ]
  %i.zw = load ptr, ptr %5, align 8, !tbaa !20
  %i.zx = load i64, ptr %i.k, align 8, !tbaa !21
  %i.zy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i65.i, ptr noundef %i.zw, i64 noundef %i.zx) #9 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !36
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 32 ; 3 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !37 ; 2 uses
  %i.aad = icmp eq ptr %i.aaa, %i.aac
  br i1 %i.aad, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit66.i
  %i.aae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zy, ptr noundef nonnull @.str.6, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70.i

bb.du:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit66.i
  store i8 10, ptr %i.aac, align 1
  %i.aaf = load ptr, ptr %i.aab, align 8, !tbaa !37
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  store ptr %i.aag, ptr %i.aab, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70.i

_ZN4llvm11raw_ostreamlsEPKc.exit70.i:             ; preds = %bb.du, %bb.dt
  %i.aah = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.aai = load ptr, ptr %i.m, align 8, !tbaa !37 ; 2 uses
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  %i.aam = icmp ult i64 %i.aal, 10
  br i1 %i.aam, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70.i
  %i.aan = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.18, i64 noundef 10) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

bb.dw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aai, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.aao = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 10
  store ptr %i.aap, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

_ZN4llvm11raw_ostreamlsEPKc.exit74.i:             ; preds = %bb.dw, %bb.dv
  %.0.i.i73.i = phi ptr [ %i.aan, %bb.dv ], [ %1, %bb.dw ]
  %i.aaq = load ptr, ptr %7, align 8, !tbaa !20
  %i.aar = load i64, ptr %i.i, align 8, !tbaa !21
  %i.aas = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i73.i, ptr noundef %i.aaq, i64 noundef %i.aar) #9 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !36
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 32 ; 3 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !37 ; 2 uses
  %i.aax = ptrtoint ptr %i.aau to i64
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = icmp ult i64 %i.aaz, 11
  br i1 %i.aba, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i
  %i.abb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aas, ptr noundef nonnull @.str.19, i64 noundef 11) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78.i

bb.dy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.aaw, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  %i.abc = load ptr, ptr %i.aav, align 8, !tbaa !37
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 11
  store ptr %i.abd, ptr %i.aav, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78.i

_ZN4llvm11raw_ostreamlsEPKc.exit78.i:             ; preds = %bb.dy, %bb.dx
  %i.abe = load ptr, ptr %5, align 8, !tbaa !20   ; 2 uses
  %i.abf = icmp eq ptr %i.abe, %i.j
  br i1 %i.abf, label %_ZL15emityPropertiesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKN4llvm6RecordESaIS9_EERNS6_11raw_ostreamE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78.i
  %i.abg = load i64, ptr %i.j, align 8, !tbaa !23
  %i.abh = add i64 %i.abg, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abh) #11
  br label %_ZL15emityPropertiesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKN4llvm6RecordESaIS9_EERNS6_11raw_ostreamE.exit

_ZL15emityPropertiesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKN4llvm6RecordESaIS9_EERNS6_11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.abi = load ptr, ptr %7, align 8, !tbaa !20   ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.h
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL15emityPropertiesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKN4llvm6RecordESaIS9_EERNS6_11raw_ostreamE.exit
  %i.abk = load i64, ptr %i.h, align 8, !tbaa !23
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZL15emityPropertiesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKN4llvm6RecordESaIS9_EERNS6_11raw_ostreamE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.abm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.09.024) #12 ; 2 uses
  %.not = icmp eq ptr %i.abm, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64) local_unnamed_addr #1

declare void @_ZN12lldb_private16getRecordsByNameB5cxx11EN4llvm8ArrayRefIPKNS0_6RecordEEENS0_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::map.3") align 8, ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20EmitPropertyEnumDefsERKN4llvm12RecordKeeperERNS0_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::map.3", align 8        ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr nonnull @.str.3, i64 34, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(240) %0) #9
  %i.b = tail call { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nonnull @.str.1, i64 8) #9 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN12lldb_private16getRecordsByNameB5cxx11EN4llvm8ArrayRefIPKNS0_6RecordEEENS0_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::map.3") align 8 %3, ptr %i.c, i64 %i.d, ptr nonnull @.str.2, i64 10) #9
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.f, %i.g
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 21 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.010.020 = phi ptr [ %i.f, %.lr.ph ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 32
  store ptr %i.h, ptr %4, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.s, ptr %i.a, align 8, !tbaa !22
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #9 ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !20
  %i.v = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.v, ptr %i.h, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.u, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !23
  store i8 %i.x, ptr %i.w, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.y = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  store i64 %i.y, ptr %i.i, align 8, !tbaa !21
  %i.z = load ptr, ptr %4, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.af = load ptr, ptr %4, align 8, !tbaa !20, !noalias !118
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !21, !noalias !118 ; 3 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !18, !alias.scope !119
  store i64 0, ptr %i.k, align 8, !tbaa !21, !alias.scope !119
  store i8 0, ptr %i.j, align 8, !tbaa !23, !alias.scope !119
  %i.ah = add i64 %i.ag, 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ah) #9
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !21, !alias.scope !119
  %i.aj = and i64 %i.ai, -16
  %i.ak = icmp eq i64 %i.aj, 4611686018427387888
  br i1 %i.ak, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, i64 noundef 16) #9 ; 0 uses
  %i.am = load i64, ptr %i.k, align 8, !tbaa !21, !alias.scope !119
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.g, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #10
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.af, i64 noundef %i.ag) #9 ; 0 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !20    ; 44 uses
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !21  ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %.not6.i.i.i = icmp samesign eq i64 %i.ar, 0
  br i1 %.not6.i.i.i, label %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ar, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.ar, 24
  %n.vec = and i64 %i.ar, -32                     ; 4 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue129, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue129 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %index ; 3 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.av, i64 1
  %i.aw = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.aw, i64 2
  %i.ax = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.ax, i64 3
  %i.ay = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.ay, i64 4
  %i.az = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.az, i64 5
  %i.ba = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.ba, i64 6
  %i.bb = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.bb, i64 7
  %i.bc = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.bd, i64 9
  %i.be = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.be, i64 10
  %i.bf = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.bf, i64 11
  %i.bg = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 12
  %i.bh = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.bh, i64 13
  %i.bi = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.bi, i64 14
  %i.bj = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.bj, i64 15
  %i.bk = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.bl, i64 17
  %i.bm = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.bm, i64 18
  %i.bn = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.bn, i64 19
  %i.bo = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.bo, i64 20
  %i.bp = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.bp, i64 21
  %i.bq = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.bq, i64 22
  %i.br = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.br, i64 23
  %i.bs = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.bs, i64 24
  %i.bt = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.bt, i64 25
  %i.bu = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.bu, i64 26
  %i.bv = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.bv, i64 27
  %i.bw = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.bw, i64 28
  %i.bx = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.bx, i64 29
  %i.by = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.by, i64 30
  %i.bz = getelementptr i8, ptr %i.aq, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.bz, i64 31
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !23
  %wide.load67 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !23
  %i.cb = icmp eq <16 x i8> %wide.load, splat (i8 32) ; 16 uses
  %i.cc = icmp eq <16 x i8> %wide.load67, splat (i8 32) ; 16 uses
  %i.cd = extractelement <16 x i1> %i.cb, i64 0
  br i1 %i.cd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !23
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ce = extractelement <16 x i1> %i.cb, i64 1
  br i1 %i.ce, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue
  store i8 95, ptr %next.gep36, align 1, !tbaa !23
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue
  %i.cf = extractelement <16 x i1> %i.cb, i64 2
  br i1 %i.cf, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 95, ptr %next.gep37, align 1, !tbaa !23
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.cg = extractelement <16 x i1> %i.cb, i64 3
  br i1 %i.cg, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 95, ptr %next.gep38, align 1, !tbaa !23
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.ch = extractelement <16 x i1> %i.cb, i64 4
  br i1 %i.ch, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 95, ptr %next.gep39, align 1, !tbaa !23
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ci = extractelement <16 x i1> %i.cb, i64 5
  br i1 %i.ci, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i8 95, ptr %next.gep40, align 1, !tbaa !23
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.cj = extractelement <16 x i1> %i.cb, i64 6
  br i1 %i.cj, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i8 95, ptr %next.gep41, align 1, !tbaa !23
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.ck = extractelement <16 x i1> %i.cb, i64 7
  br i1 %i.ck, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 95, ptr %next.gep42, align 1, !tbaa !23
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.cl = extractelement <16 x i1> %i.cb, i64 8
  br i1 %i.cl, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 95, ptr %next.gep43, align 1, !tbaa !23
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.cm = extractelement <16 x i1> %i.cb, i64 9
  br i1 %i.cm, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 95, ptr %next.gep44, align 1, !tbaa !23
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.cn = extractelement <16 x i1> %i.cb, i64 10
  br i1 %i.cn, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 95, ptr %next.gep45, align 1, !tbaa !23
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.co = extractelement <16 x i1> %i.cb, i64 11
  br i1 %i.co, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 95, ptr %next.gep46, align 1, !tbaa !23
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.cp = extractelement <16 x i1> %i.cb, i64 12
  br i1 %i.cp, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 95, ptr %next.gep47, align 1, !tbaa !23
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.cq = extractelement <16 x i1> %i.cb, i64 13
  br i1 %i.cq, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 95, ptr %next.gep48, align 1, !tbaa !23
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.cr = extractelement <16 x i1> %i.cb, i64 14
  br i1 %i.cr, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 95, ptr %next.gep49, align 1, !tbaa !23
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.cs = extractelement <16 x i1> %i.cb, i64 15
  br i1 %i.cs, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 95, ptr %next.gep50, align 1, !tbaa !23
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.ct = extractelement <16 x i1> %i.cc, i64 0
  br i1 %i.ct, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 95, ptr %next.gep51, align 1, !tbaa !23
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.cu = extractelement <16 x i1> %i.cc, i64 1
  br i1 %i.cu, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 95, ptr %next.gep52, align 1, !tbaa !23
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.cv = extractelement <16 x i1> %i.cc, i64 2
  br i1 %i.cv, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 95, ptr %next.gep53, align 1, !tbaa !23
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.cw = extractelement <16 x i1> %i.cc, i64 3
  br i1 %i.cw, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 95, ptr %next.gep54, align 1, !tbaa !23
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.cx = extractelement <16 x i1> %i.cc, i64 4
  br i1 %i.cx, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 95, ptr %next.gep55, align 1, !tbaa !23
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.cy = extractelement <16 x i1> %i.cc, i64 5
  br i1 %i.cy, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 95, ptr %next.gep56, align 1, !tbaa !23
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cz = extractelement <16 x i1> %i.cc, i64 6
  br i1 %i.cz, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 95, ptr %next.gep57, align 1, !tbaa !23
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.da = extractelement <16 x i1> %i.cc, i64 7
  br i1 %i.da, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 95, ptr %next.gep58, align 1, !tbaa !23
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.db = extractelement <16 x i1> %i.cc, i64 8
  br i1 %i.db, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 95, ptr %next.gep59, align 1, !tbaa !23
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.dc = extractelement <16 x i1> %i.cc, i64 9
  br i1 %i.dc, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 95, ptr %next.gep60, align 1, !tbaa !23
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.dd = extractelement <16 x i1> %i.cc, i64 10
  br i1 %i.dd, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 95, ptr %next.gep61, align 1, !tbaa !23
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.de = extractelement <16 x i1> %i.cc, i64 11
  br i1 %i.de, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 95, ptr %next.gep62, align 1, !tbaa !23
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.df = extractelement <16 x i1> %i.cc, i64 12
  br i1 %i.df, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 95, ptr %next.gep63, align 1, !tbaa !23
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.dg = extractelement <16 x i1> %i.cc, i64 13
  br i1 %i.dg, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 95, ptr %next.gep64, align 1, !tbaa !23
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.dh = extractelement <16 x i1> %i.cc, i64 14
  br i1 %i.dh, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 95, ptr %next.gep65, align 1, !tbaa !23
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.di = extractelement <16 x i1> %i.cc, i64 15
  br i1 %i.di, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 95, ptr %next.gep66, align 1, !tbaa !23
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %pred.store.continue129
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.ar, -8                   ; 3 uses
  %i.dk = getelementptr i8, ptr %i.aq, i64 %n.vec130
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue156, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %pred.store.continue156 ] ; 9 uses
  %next.gep132 = getelementptr i8, ptr %i.aq, i64 %index131 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep133 = getelementptr i8, ptr %i.dl, i64 1
  %i.dm = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep134 = getelementptr i8, ptr %i.dm, i64 2
  %i.dn = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep135 = getelementptr i8, ptr %i.dn, i64 3
  %i.do = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep136 = getelementptr i8, ptr %i.do, i64 4
  %i.dp = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep137 = getelementptr i8, ptr %i.dp, i64 5
  %i.dq = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep138 = getelementptr i8, ptr %i.dq, i64 6
  %i.dr = getelementptr i8, ptr %i.aq, i64 %index131
  %next.gep139 = getelementptr i8, ptr %i.dr, i64 7
  %wide.load140 = load <8 x i8>, ptr %next.gep132, align 1, !tbaa !23
  %i.ds = icmp eq <8 x i8> %wide.load140, splat (i8 32) ; 8 uses
  %i.dt = extractelement <8 x i1> %i.ds, i64 0
  br i1 %i.dt, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %vec.epilog.vector.body
  store i8 95, ptr %next.gep132, align 1, !tbaa !23
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %vec.epilog.vector.body
  %i.du = extractelement <8 x i1> %i.ds, i64 1
  br i1 %i.du, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  store i8 95, ptr %next.gep133, align 1, !tbaa !23
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.dv = extractelement <8 x i1> %i.ds, i64 2
  br i1 %i.dv, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  store i8 95, ptr %next.gep134, align 1, !tbaa !23
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.dw = extractelement <8 x i1> %i.ds, i64 3
  br i1 %i.dw, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  store i8 95, ptr %next.gep135, align 1, !tbaa !23
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.dx = extractelement <8 x i1> %i.ds, i64 4
  br i1 %i.dx, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  store i8 95, ptr %next.gep136, align 1, !tbaa !23
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.dy = extractelement <8 x i1> %i.ds, i64 5
  br i1 %i.dy, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  store i8 95, ptr %next.gep137, align 1, !tbaa !23
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.dz = extractelement <8 x i1> %i.ds, i64 6
  br i1 %i.dz, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i8 95, ptr %next.gep138, align 1, !tbaa !23
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.ea = extractelement <8 x i1> %i.ds, i64 7
  br i1 %i.ea, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i8 95, ptr %next.gep139, align 1, !tbaa !23
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %index.next157 = add nuw i64 %index131, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next157, %n.vec130
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %pred.store.continue156
  %cmp.n158 = icmp eq i64 %i.ar, %n.vec130
  br i1 %cmp.n158, label %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.i.ph = phi ptr [ %i.aq, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.i
  %.sroa.02.07.i.i.i = phi ptr [ %i.ee, %bb.i ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ec = load i8, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !23
  %i.ed = icmp eq i8 %i.ec, 32
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  store i8 95, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ee, %i.as
  br i1 %.not.i.i.i, label %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !116

_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i: ; preds = %bb.i, %middle.block, %vec.epilog.middle.block, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ult i64 %i.ej, 27
  br i1 %i.ek, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.46, i64 noundef 27) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.k:                                             ; preds = %_ZN4llvm7replaceIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvOT_RKT0_SC_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.eg, ptr noundef nonnull align 1 dereferenceable(27) @.str.46, i64 27, i1 false)
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 27
  store ptr %i.en, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.el, %bb.j ], [ %1, %bb.k ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !20
  %i.ep = load i64, ptr %i.i, align 8, !tbaa !21
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef %i.eo, i64 noundef %i.ep) #9 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !37 ; 2 uses
  %i.ev = icmp eq ptr %i.es, %i.eu
  br i1 %i.ev, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ew = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull @.str.6, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14.i

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.eu, align 1
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14.i

_ZN4llvm11raw_ostreamlsEPKc.exit14.i:             ; preds = %bb.m, %bb.l
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.fa = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ult i64 %i.fd, 7
  br i1 %i.fe, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14.i
  %i.ff = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fa, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  %i.fg = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 7
  store ptr %i.fh, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i

_ZN4llvm11raw_ostreamlsEPKc.exit17.i:             ; preds = %bb.o, %bb.n
  %.0.i.i16.i = phi ptr [ %i.ff, %bb.n ], [ %1, %bb.o ]
  %i.fi = load ptr, ptr %2, align 8, !tbaa !20
  %i.fj = load i64, ptr %i.k, align 8, !tbaa !21
  %i.fk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16.i, ptr noundef %i.fi, i64 noundef %i.fj) #9 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !36
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !37 ; 2 uses
  %i.fp = icmp eq ptr %i.fm, %i.fo
  br i1 %i.fp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.i
  %i.fq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fk, ptr noundef nonnull @.str.6, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20.i

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.i
  store i8 10, ptr %i.fo, align 1
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !37
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  store ptr %i.fs, ptr %i.fn, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20.i

_ZN4llvm11raw_ostreamlsEPKc.exit20.i:             ; preds = %bb.q, %bb.p
  %.not36.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit20.i
  %i.ft = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp ult i64 %i.fx, 7
  br i1 %i.fy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i
  %i.fz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 7) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23.i

bb.s:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fu, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false)
  %i.ga = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 7
  store ptr %i.gb, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23.i

_ZN4llvm11raw_ostreamlsEPKc.exit23.i:             ; preds = %bb.s, %bb.r
  %.0.i.i22.i = phi ptr [ %i.fz, %bb.r ], [ %1, %bb.s ]
  %i.gc = load ptr, ptr %2, align 8, !tbaa !20
  %i.gd = load i64, ptr %i.k, align 8, !tbaa !21
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i22.i, ptr noundef %i.gc, i64 noundef %i.gd) #9 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !37 ; 2 uses
  %i.gj = icmp eq ptr %i.gg, %i.gi
  br i1 %i.gj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23.i
  %i.gk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noundef nonnull @.str.6, i64 noundef 1) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26.i

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23.i
  store i8 10, ptr %i.gi, align 1
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !37
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26.i

_ZN4llvm11raw_ostreamlsEPKc.exit26.i:             ; preds = %bb.u, %bb.t
  %i.gn = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp ult i64 %i.gr, 10
  br i1 %i.gs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26.i
  %i.gt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.18, i64 noundef 10) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29.i

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.go, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 10
  store ptr %i.gv, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29.i

_ZN4llvm11raw_ostreamlsEPKc.exit29.i:             ; preds = %bb.w, %bb.v
  %.0.i.i28.i = phi ptr [ %i.gt, %bb.v ], [ %1, %bb.w ]
  %i.gw = load ptr, ptr %4, align 8, !tbaa !20
  %i.gx = load i64, ptr %i.i, align 8, !tbaa !21
  %i.gy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i28.i, ptr noundef %i.gw, i64 noundef %i.gx) #9 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !36
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 32 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !37 ; 2 uses
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = icmp ult i64 %i.hf, 11
  br i1 %i.hg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29.i
  %i.hh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gy, ptr noundef nonnull @.str.19, i64 noundef 11) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32.i

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.hc, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !37
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 11
  store ptr %i.hj, ptr %i.hb, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32.i

_ZN4llvm11raw_ostreamlsEPKc.exit32.i:             ; preds = %bb.y, %bb.x
  %i.hk = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.j
  br i1 %i.hl, label %_ZL16emitPropertyEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm8ArrayRefIPKNS5_6RecordEEERNS5_11raw_ostreamE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32.i
  %i.hm = load i64, ptr %i.j, align 8, !tbaa !23
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #11
  br label %_ZL16emitPropertyEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm8ArrayRefIPKNS5_6RecordEEERNS5_11raw_ostreamE.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20.i, %_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i
  %.037.i = phi ptr [ %i.is, %_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i ], [ %i.ac, %_ZN4llvm11raw_ostreamlsEPKc.exit20.i ] ; 2 uses
  %i.ho = load ptr, ptr %.037.i, align 8, !tbaa !31
  %i.hp = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = icmp ult i64 %i.ht, 9
  br i1 %i.hu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i
  %i.hv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.47, i64 noundef 9) #9 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.aa:                                            ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hq, ptr noundef nonnull align 1 dereferenceable(9) @.str.47, i64 9, i1 false)
  %i.hw = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 9 ; 2 uses
  store ptr %i.hx, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.aa, %bb.z
  %i.hy = phi ptr [ %.pre.i.i, %bb.z ], [ %i.hx, %bb.aa ] ; 3 uses
  %i.hz = load ptr, ptr %i.ho, align 8, !tbaa !120 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ia, align 8, !tbaa !121 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !22 ; 5 uses
  %i.ib = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hy to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.i, %i.ie
  br i1 %i.if, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.ig = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i.i) #9 ; 0 uses
  %.pre7.i.i = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %.not.i.i33.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i33.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i, i1 false)
  %i.ih = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.2.0.copyload.i.i.i.i ; 2 uses
  store ptr %i.ii, ptr %i.m, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ij = phi ptr [ %.pre7.i.i, %bb.ab ], [ %i.hy, %bb.ac ], [ %i.ii, %bb.ad ] ; 2 uses
  %i.ik = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = icmp ult i64 %i.in, 2
  br i1 %i.io, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.ip = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.48, i64 noundef 2) #9 ; 0 uses
  br label %_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  store i16 2604, ptr %i.ij, align 1
  %i.iq = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store ptr %i.ir, ptr %i.m, align 8, !tbaa !37
  br label %_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i

_ZL16emitPropertyEnumPKN4llvm6RecordERNS_11raw_ostreamE.exit.i: ; preds = %bb.af, %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %.037.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.is, %i.ae
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZL16emitPropertyEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm8ArrayRefIPKNS5_6RecordEEERNS5_11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.it = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.h
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL16emitPropertyEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm8ArrayRefIPKNS5_6RecordEEERNS5_11raw_ostreamE.exit
  %i.iv = load i64, ptr %i.h, align 8, !tbaa !23
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZL16emitPropertyEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm8ArrayRefIPKNS5_6RecordEEERNS5_11raw_ostreamE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ix = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.010.020) #12 ; 2 uses
  %.not = icmp eq ptr %i.ix, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64, i32 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #11
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #11
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #11
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4llvm6RecordESaISC_EEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !8, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !12, i64 32}
!14 = !{!13, !10, i64 16}
!15 = !{!13, !10, i64 8}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !12, i64 8, !4, i64 16}
!20 = !{!19, !16, i64 0}
!21 = !{!19, !12, i64 8}
!22 = !{!12, !12, i64 0}
!23 = !{!4, !4, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 8, i32 24}
!28 = !{!"any p2 pointer", !9, i64 0}
!29 = !{!"p2 _ZTSN4llvm6RecordE", !28, i64 0}
!30 = !{!"p1 _ZTSN4llvm6RecordE", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !4, i64 0}
!33 = !{!"bool", !4, i64 0}
!34 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !4, i64 0}
!35 = !{!"_ZTSN4llvm11raw_ostreamE", !32, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !33, i64 40, !34, i64 44}
!36 = !{!35, !16, i64 24}
!37 = !{!35, !16, i64 32}
!38 = !{!"p1 _ZTSN4llvm4InitE", !9, i64 0}
!39 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !9, i64 0, !5, i64 8, !5, i64 12}
!40 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_5SMLocEvEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_5SMLocELb1EEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm15SmallVectorImplINS_5SMLocEEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm18SmallVectorStorageINS_5SMLocELj4EEE", !4, i64 0}
!44 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj4EEE", !42, i64 0, !43, i64 16}
!45 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj0EEE", !42, i64 0}
!46 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7SMRangeEvEE", !39, i64 0}
!47 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7SMRangeELb1EEE", !46, i64 0}
!48 = !{!"_ZTSN4llvm15SmallVectorImplINS_7SMRangeEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm11SmallVectorINS_7SMRangeELj0EEE", !48, i64 0}
!50 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKNS_4InitEvEE", !39, i64 0}
!51 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKNS_4InitELb1EEE", !50, i64 0}
!52 = !{!"_ZTSN4llvm15SmallVectorImplIPKNS_4InitEEE", !51, i64 0}
!53 = !{!"_ZTSN4llvm11SmallVectorIPKNS_4InitELj0EEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9RecordValEvEE", !39, i64 0}
!55 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9RecordValELb0EEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm15SmallVectorImplINS_9RecordValEEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm11SmallVectorINS_9RecordValELj0EEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record13AssertionInfoEvEE", !39, i64 0}
!59 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record13AssertionInfoELb1EEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record13AssertionInfoEEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm11SmallVectorINS_6Record13AssertionInfoELj0EEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record8DumpInfoEvEE", !39, i64 0}
!63 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record8DumpInfoELb1EEE", !62, i64 0}
!64 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record8DumpInfoEEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm11SmallVectorINS_6Record8DumpInfoELj0EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_6RecordENS_7SMRangeEEvEE", !39, i64 0}
!67 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_6RecordENS_7SMRangeEELb1EEE", !66, i64 0}
!68 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_6RecordENS_7SMRangeEEEE", !67, i64 0}
!69 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_6RecordENS_7SMRangeEELj0EEE", !68, i64 0}
!70 = !{!"p1 _ZTSN4llvm12RecordKeeperE", !9, i64 0}
!71 = !{!"p1 _ZTSN4llvm7DefInitE", !9, i64 0}
!72 = !{!"_ZTSN4llvm6Record10RecordKindE", !4, i64 0}
!73 = !{!"_ZTSN4llvm6RecordE", !38, i64 0, !44, i64 8, !45, i64 56, !49, i64 72, !53, i64 88, !57, i64 104, !61, i64 120, !65, i64 136, !69, i64 152, !70, i64 168, !71, i64 176, !5, i64 184, !72, i64 188}
!74 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!75 = !{!74, !29, i64 0}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!77 = distinct !{!77, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!78 = distinct !{!78, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!79 = distinct !{!79, !78, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!80 = distinct !{!80, !24, !25, !26}
!81 = distinct !{!81, !24, !25, !26}
!82 = distinct !{!82, !24, !26, !25}
!83 = distinct !{!83, !"_ZL15getPropertyPathRKSt6vectorIPKN4llvm6RecordESaIS3_EE"}
!84 = distinct !{!84, !83, !"_ZL15getPropertyPathRKSt6vectorIPKN4llvm6RecordESaIS3_EE: argument 0"}
!85 = distinct !{!85, !95}
!86 = distinct !{!86, !"_ZNSt7__cxx119to_stringEl"}
!87 = distinct !{!87, !86, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = distinct !{null, null}
!91 = !{!77}
!92 = !{!79, !77}
!93 = !{!29, !29, i64 0}
!94 = !{!84}
!95 = !{!"llvm.loop.peeled.count", i32 1}
!96 = !{!73, !70, i64 168}
!97 = !{}
!98 = !{i64 8}
!99 = !{!39, !9, i64 0}
!100 = !{!39, !5, i64 8}
!101 = !{!"_ZTSN4llvm5SMLocE", !16, i64 0}
!102 = !{!"_ZTSN4llvm6detail13PunnedPointerIPKNS_5RecTyEEE", !4, i64 0}
!103 = !{!"_ZTSN4llvm14PointerIntPairIPKNS_5RecTyELj2ENS_9RecordVal9FieldKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj2ES7_EEEE", !102, i64 0}
!104 = !{!"_ZTSN4llvm9RecordValE", !38, i64 0, !101, i64 8, !103, i64 16, !38, i64 24, !33, i64 32, !49, i64 40}
!105 = !{!104, !38, i64 0}
!106 = !{!87}
!107 = !{!104, !38, i64 24}
!108 = !{!"vtable pointer", !3, i64 0}
!109 = !{!108, !108, i64 0}
!110 = distinct !{!110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!111 = distinct !{!111, !110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!112 = distinct !{!112, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!113 = distinct !{!113, !112, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!114 = distinct !{!114, !24, !25, !26}
!115 = distinct !{!115, !24, !25, !26}
!116 = distinct !{!116, !24, !26, !25}
!117 = !{!74, !29, i64 8}
!118 = !{!111}
!119 = !{!113, !111}
!120 = !{!73, !38, i64 0}
!121 = !{!16, !16, i64 0}
!122 = distinct !{!122, !24}
!123 = !{!11, !10, i64 24}
!124 = !{!11, !10, i64 16}
!125 = !{!74, !29, i64 16}
end_hunk_0
