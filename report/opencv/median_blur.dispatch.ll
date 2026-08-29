Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  store i16 %i.lry, ptr %.phi.trans.insert594.i, align 2, !tbaa !46
  %i.lrz = getelementptr inbounds nuw i8, ptr %i.lrb, i64 12
  %i.lsa = load i16, ptr %i.lrz, align 4, !tbaa !46
  %i.lsb = load i16, ptr %.phi.trans.insert596.i, align 4, !tbaa !46
  %i.lsc = add i16 %i.lsb, %i.lsa                 ; 3 uses
  store i16 %i.lsc, ptr %.phi.trans.insert596.i, align 4, !tbaa !46
  %i.lsd = getelementptr inbounds nuw i8, ptr %i.lrb, i64 14
  %i.lse = load i16, ptr %i.lsd, align 2, !tbaa !46
  %i.lsf = load i16, ptr %.phi.trans.insert598.i, align 2, !tbaa !46
  %i.lsg = add i16 %i.lsf, %i.lse                 ; 3 uses
  store i16 %i.lsg, ptr %.phi.trans.insert598.i, align 2, !tbaa !46
  %i.lsh = getelementptr inbounds nuw i8, ptr %i.lrb, i64 16
  %i.lsi = load i16, ptr %i.lsh, align 16, !tbaa !46
  %i.lsj = load i16, ptr %.phi.trans.insert600.i, align 16, !tbaa !46
  %i.lsk = add i16 %i.lsj, %i.lsi                 ; 3 uses
  store i16 %i.lsk, ptr %.phi.trans.insert600.i, align 16, !tbaa !46
  %i.lsl = getelementptr inbounds nuw i8, ptr %i.lrb, i64 18
  %i.lsm = load i16, ptr %i.lsl, align 2, !tbaa !46
  %i.lsn = load i16, ptr %.phi.trans.insert602.i, align 2, !tbaa !46
  %i.lso = add i16 %i.lsn, %i.lsm                 ; 3 uses
  store i16 %i.lso, ptr %.phi.trans.insert602.i, align 2, !tbaa !46
  %i.lsp = getelementptr inbounds nuw i8, ptr %i.lrb, i64 20
  %i.lsq = load i16, ptr %i.lsp, align 4, !tbaa !46
  %i.lsr = load i16, ptr %.phi.trans.insert604.i, align 4, !tbaa !46
  %i.lss = add i16 %i.lsr, %i.lsq                 ; 3 uses
  store i16 %i.lss, ptr %.phi.trans.insert604.i, align 4, !tbaa !46
  %i.lst = getelementptr inbounds nuw i8, ptr %i.lrb, i64 22
  %i.lsu = load i16, ptr %i.lst, align 2, !tbaa !46
  %i.lsv = load i16, ptr %.phi.trans.insert606.i, align 2, !tbaa !46
  %i.lsw = add i16 %i.lsv, %i.lsu                 ; 3 uses
  store i16 %i.lsw, ptr %.phi.trans.insert606.i, align 2, !tbaa !46
  %i.lsx = getelementptr inbounds nuw i8, ptr %i.lrb, i64 24
  %i.lsy = load i16, ptr %i.lsx, align 8, !tbaa !46
  %i.lsz = load i16, ptr %.phi.trans.insert608.i, align 8, !tbaa !46
  %i.lta = add i16 %i.lsz, %i.lsy                 ; 3 uses
  store i16 %i.lta, ptr %.phi.trans.insert608.i, align 8, !tbaa !46
  %i.ltb = getelementptr inbounds nuw i8, ptr %i.lrb, i64 26
  %i.ltc = load i16, ptr %i.ltb, align 2, !tbaa !46
  %i.ltd = load i16, ptr %.phi.trans.insert610.i, align 2, !tbaa !46
  %i.lte = add i16 %i.ltd, %i.ltc                 ; 3 uses
  store i16 %i.lte, ptr %.phi.trans.insert610.i, align 2, !tbaa !46
  %i.ltf = getelementptr inbounds nuw i8, ptr %i.lrb, i64 28
  %i.ltg = load i16, ptr %i.ltf, align 4, !tbaa !46
  %i.lth = load i16, ptr %.phi.trans.insert612.i, align 4, !tbaa !46
  %i.lti = add i16 %i.lth, %i.ltg                 ; 3 uses
  store i16 %i.lti, ptr %.phi.trans.insert612.i, align 4, !tbaa !46
  %i.ltj = getelementptr inbounds nuw i8, ptr %i.lrb, i64 30
  %i.ltk = load i16, ptr %i.ltj, align 2, !tbaa !46
  %i.ltl = load i16, ptr %.phi.trans.insert614.i, align 2, !tbaa !46
  %i.ltm = add i16 %i.ltl, %i.ltk                 ; 3 uses
  store i16 %i.ltm, ptr %.phi.trans.insert614.i, align 2, !tbaa !46
  %i.ltn = zext i16 %i.lre to i32                 ; 3 uses
  %i.lto = icmp slt i32 %i.knx, %i.ltn
  br i1 %i.lto, label %bb.ox, label %.preheader445.1.i

.preheader445.1.i:                                ; preds = %.preheader445.preheader.i
  %i.ltp = zext i16 %i.lri to i32
  %i.ltq = add nuw nsw i32 %i.ltp, %i.ltn         ; 3 uses
  %i.ltr = icmp samesign ugt i32 %i.ltq, %i.knx
  br i1 %i.ltr, label %bb.ox, label %.preheader445.2.i

.preheader445.2.i:                                ; preds = %.preheader445.1.i
  %i.lts = zext i16 %i.lrm to i32
  %i.ltt = add nuw nsw i32 %i.ltq, %i.lts         ; 3 uses
  %i.ltu = icmp samesign ugt i32 %i.ltt, %i.knx
  br i1 %i.ltu, label %bb.ox, label %.preheader445.3.i

.preheader445.3.i:                                ; preds = %.preheader445.2.i
  %i.ltv = zext i16 %i.lrq to i32
  %i.ltw = add nuw nsw i32 %i.ltt, %i.ltv         ; 3 uses
  %i.ltx = icmp samesign ugt i32 %i.ltw, %i.knx
  br i1 %i.ltx, label %bb.ox, label %.preheader445.4.i

.preheader445.4.i:                                ; preds = %.preheader445.3.i
  %i.lty = zext i16 %i.lru to i32
  %i.ltz = add nuw nsw i32 %i.ltw, %i.lty         ; 3 uses
  %i.lua = icmp samesign ugt i32 %i.ltz, %i.knx
  br i1 %i.lua, label %bb.ox, label %.preheader445.5.i

.preheader445.5.i:                                ; preds = %.preheader445.4.i
  %i.lub = zext i16 %i.lry to i32
  %i.luc = add nuw nsw i32 %i.ltz, %i.lub         ; 3 uses
  %i.lud = icmp samesign ugt i32 %i.luc, %i.knx
  br i1 %i.lud, label %bb.ox, label %.preheader445.6.i

.preheader445.6.i:                                ; preds = %.preheader445.5.i
  %i.lue = zext i16 %i.lsc to i32
  %i.luf = add nuw nsw i32 %i.luc, %i.lue         ; 3 uses
  %i.lug = icmp samesign ugt i32 %i.luf, %i.knx
  br i1 %i.lug, label %bb.ox, label %.preheader445.7.i

.preheader445.7.i:                                ; preds = %.preheader445.6.i
  %i.luh = zext i16 %i.lsg to i32
  %i.lui = add nuw nsw i32 %i.luf, %i.luh         ; 3 uses
  %i.luj = icmp samesign ugt i32 %i.lui, %i.knx
  br i1 %i.luj, label %bb.ox, label %.preheader445.8.i

.preheader445.8.i:                                ; preds = %.preheader445.7.i
  %i.luk = zext i16 %i.lsk to i32
  %i.lul = add nuw nsw i32 %i.lui, %i.luk         ; 3 uses
  %i.lum = icmp samesign ugt i32 %i.lul, %i.knx
  br i1 %i.lum, label %bb.ox, label %.preheader445.9.i

.preheader445.9.i:                                ; preds = %.preheader445.8.i
  %i.lun = zext i16 %i.lso to i32
  %i.luo = add nuw nsw i32 %i.lul, %i.lun         ; 3 uses
  %i.lup = icmp samesign ugt i32 %i.luo, %i.knx
  br i1 %i.lup, label %bb.ox, label %.preheader445.10.i

.preheader445.10.i:                               ; preds = %.preheader445.9.i
  %i.luq = zext i16 %i.lss to i32
  %i.lur = add nuw nsw i32 %i.luo, %i.luq         ; 3 uses
  %i.lus = icmp samesign ugt i32 %i.lur, %i.knx
  br i1 %i.lus, label %bb.ox, label %.preheader445.11.i

.preheader445.11.i:                               ; preds = %.preheader445.10.i
  %i.lut = zext i16 %i.lsw to i32
  %i.luu = add nuw nsw i32 %i.lur, %i.lut         ; 3 uses
  %i.luv = icmp samesign ugt i32 %i.luu, %i.knx
  br i1 %i.luv, label %bb.ox, label %.preheader445.12.i

.preheader445.12.i:                               ; preds = %.preheader445.11.i
  %i.luw = zext i16 %i.lta to i32
  %i.lux = add nuw nsw i32 %i.luu, %i.luw         ; 3 uses
  %i.luy = icmp samesign ugt i32 %i.lux, %i.knx
  br i1 %i.luy, label %bb.ox, label %.preheader445.13.i

.preheader445.13.i:                               ; preds = %.preheader445.12.i
  %i.luz = zext i16 %i.lte to i32
  %i.lva = add nuw nsw i32 %i.lux, %i.luz         ; 3 uses
  %i.lvb = icmp samesign ugt i32 %i.lva, %i.knx
  br i1 %i.lvb, label %bb.ox, label %.preheader445.14.i

.preheader445.14.i:                               ; preds = %.preheader445.13.i
  %i.lvc = zext i16 %i.lti to i32
  %i.lvd = add nuw nsw i32 %i.lva, %i.lvc         ; 3 uses
  %i.lve = icmp samesign ugt i32 %i.lvd, %i.knx
  br i1 %i.lve, label %bb.ox, label %.preheader445.15.i

.preheader445.15.i:                               ; preds = %.preheader445.14.i
  %i.lvf = zext i16 %i.ltm to i32
  %i.lvg = add nuw nsw i32 %i.lvd, %i.lvf
  %i.lvh = icmp samesign ugt i32 %i.lvg, %i.knx
  br i1 %i.lvh, label %bb.ox, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader445.15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.lvi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.lvi, ptr %7, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.lvi, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.lvj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.lvj, align 8, !tbaa !130
  %i.lvk = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.lvk, align 2, !tbaa !28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i, ptr noundef nonnull @.str.1, i32 noundef 242) #15
          to label %bb.ov unwind label %bb.ow

bb.ov:                                            ; preds = %.critedge.i
  unreachable

bb.ow:                                            ; preds = %.critedge.i
  %i.lvl = landingpad { ptr, i32 }
          cleanup
  %i.lvm = load ptr, ptr %7, align 8, !tbaa !25   ; 2 uses
  %i.lvn = icmp eq ptr %i.lvm, %i.lvi
  br i1 %i.lvn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i: ; preds = %bb.ow
  %i.lvo = load i64, ptr %i.lvi, align 8, !tbaa !28
  %i.lvp = add i64 %i.lvo, 1
  call void @_ZdlPvm(ptr noundef %i.lvm, i64 noundef %i.lvp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i: ; preds = %bb.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZNSt6vectorItSaItEED2Ev.exit388.i

bb.ox:                                            ; preds = %.preheader445.15.i, %.preheader445.14.i, %.preheader445.13.i, %.preheader445.12.i, %.preheader445.11.i, %.preheader445.10.i, %.preheader445.9.i, %.preheader445.8.i, %.preheader445.7.i, %.preheader445.6.i, %.preheader445.5.i, %.preheader445.4.i, %.preheader445.3.i, %.preheader445.2.i, %.preheader445.1.i, %.preheader445.preheader.i
  %.0303476.lcssa.i = phi i32 [ 0, %.preheader445.preheader.i ], [ %i.ltn, %.preheader445.1.i ], [ %i.ltq, %.preheader445.2.i ], [ %i.ltt, %.preheader445.3.i ], [ %i.ltw, %.preheader445.4.i ], [ %i.ltz, %.preheader445.5.i ], [ %i.luc, %.preheader445.6.i ], [ %i.luf, %.preheader445.7.i ], [ %i.lui, %.preheader445.8.i ], [ %i.lul, %.preheader445.9.i ], [ %i.luo, %.preheader445.10.i ], [ %i.lur, %.preheader445.11.i ], [ %i.luu, %.preheader445.12.i ], [ %i.lux, %.preheader445.13.i ], [ %i.lva, %.preheader445.14.i ], [ %i.lvd, %.preheader445.15.i ]
  %.1312475.lcssa.wide.i = phi i64 [ 0, %.preheader445.preheader.i ], [ 1, %.preheader445.1.i ], [ 2, %.preheader445.2.i ], [ 3, %.preheader445.3.i ], [ 4, %.preheader445.4.i ], [ 5, %.preheader445.5.i ], [ 6, %.preheader445.6.i ], [ 7, %.preheader445.7.i ], [ 8, %.preheader445.8.i ], [ 9, %.preheader445.9.i ], [ 10, %.preheader445.10.i ], [ 11, %.preheader445.11.i ], [ 12, %.preheader445.12.i ], [ 13, %.preheader445.13.i ], [ 14, %.preheader445.14.i ], [ 15, %.preheader445.15.i ] ; 6 uses
  %.lcssa.sroa.phi.i = phi ptr [ %.sroa.0.i, %.preheader445.preheader.i ], [ %.sroa.5.i, %.preheader445.1.i ], [ %.sroa.6.i, %.preheader445.2.i ], [ %.sroa.7.i, %.preheader445.3.i ], [ %.sroa.8.i, %.preheader445.4.i ], [ %.sroa.9.i, %.preheader445.5.i ], [ %.sroa.10.i, %.preheader445.6.i ], [ %.sroa.11.i, %.preheader445.7.i ], [ %.sroa.12.i, %.preheader445.8.i ], [ %.sroa.13.i, %.preheader445.9.i ], [ %.sroa.14.i, %.preheader445.10.i ], [ %.sroa.15.i, %.preheader445.11.i ], [ %.sroa.16.i, %.preheader445.12.i ], [ %.sroa.17.i, %.preheader445.13.i ], [ %.sroa.18.i, %.preheader445.14.i ], [ %.sroa.19.i, %.preheader445.15.i ] ; 3 uses
  %i.lvq = trunc nuw nsw i64 %.1312475.lcssa.wide.i to i8
  %i.lvr = load i16, ptr %.lcssa.sroa.phi.i, align 2, !tbaa !46 ; 3 uses
  %i.lvs = sub nuw nsw i64 %indvars.iv558.i, %i.koa ; 5 uses
  %i.lvt = zext i16 %i.lvr to i64                 ; 2 uses
  %.not.i557 = icmp samesign ult i64 %i.lvs, %i.lvt
  br i1 %.not.i557, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.lvu = getelementptr inbounds nuw [32 x i8], ptr %i.knt, i64 %.1312475.lcssa.wide.i ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.lvu, i8 0, i64 32, i1 false)
  %i.lvv = trunc i64 %i.lvs to i16                ; 3 uses
  store i16 %i.lvv, ptr %.lcssa.sroa.phi.i, align 2, !tbaa !46
  %i.lvw = and i64 %i.lvs, 65535
  %.not502.i = icmp samesign ult i64 %i.lqz, %i.lvw
  br i1 %.not502.i, label %._crit_edge480.i, label %.preheader444.preheader.i

.preheader444.preheader.i:                        ; preds = %bb.oy
  %i.lvx = trunc nuw nsw i64 %i.lvs to i32
  %i.lvy = or disjoint i64 %.1312475.lcssa.wide.i, %i.ksm
  %i.lvz = trunc nuw nsw i64 %i.lvy to i32
  %i.lwa = mul nsw i32 %i.koy, %i.lvz
  %i.lwb = add i32 %i.lwa, %i.lvx
  %i.lwc = shl nsw i32 %i.lwb, 4
  %i.lwd = sext i32 %i.lwc to i64
  %i.lwe = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %i.lwd
  %i.lwf = getelementptr inbounds nuw i8, ptr %i.lvu, i64 2
  %i.lwg = getelementptr inbounds nuw i8, ptr %i.lvu, i64 4
  %i.lwh = getelementptr inbounds nuw i8, ptr %i.lvu, i64 6
  %i.lwi = getelementptr inbounds nuw i8, ptr %i.lvu, i64 8
  %i.lwj = getelementptr inbounds nuw i8, ptr %i.lvu, i64 10
  %i.lwk = getelementptr inbounds nuw i8, ptr %i.lvu, i64 12
  %i.lwl = getelementptr inbounds nuw i8, ptr %i.lvu, i64 14
  %i.lwm = getelementptr inbounds nuw i8, ptr %i.lvu, i64 16
  %i.lwn = getelementptr inbounds nuw i8, ptr %i.lvu, i64 18
  %i.lwo = getelementptr inbounds nuw i8, ptr %i.lvu, i64 20
  %i.lwp = getelementptr inbounds nuw i8, ptr %i.lvu, i64 22
  %i.lwq = getelementptr inbounds nuw i8, ptr %i.lvu, i64 24
  %i.lwr = getelementptr inbounds nuw i8, ptr %i.lvu, i64 26
  %i.lws = getelementptr inbounds nuw i8, ptr %i.lvu, i64 28
  %i.lwt = getelementptr inbounds nuw i8, ptr %i.lvu, i64 30
  br label %.preheader444.i

.preheader444.i:                                  ; preds = %.preheader444.i, %.preheader444.preheader.i
  %i.lwu = phi i16 [ %i.lzf, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lwv = phi i16 [ %i.lzc, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lww = phi i16 [ %i.lyz, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lwx = phi i16 [ %i.lyw, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lwy = phi i16 [ %i.lyt, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lwz = phi i16 [ %i.lyq, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxa = phi i16 [ %i.lyn, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxb = phi i16 [ %i.lyk, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxc = phi i16 [ %i.lyh, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxd = phi i16 [ %i.lye, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxe = phi i16 [ %i.lyb, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxf = phi i16 [ %i.lxy, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxg = phi i16 [ %i.lxv, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxh = phi i16 [ %i.lxs, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxi = phi i16 [ %i.lxp, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lxj = phi i16 [ %i.lxm, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %.1307479.i = phi ptr [ %i.lzh, %.preheader444.i ], [ %i.lwe, %.preheader444.preheader.i ] ; 17 uses
  %i.lxk = phi i16 [ %i.lzg, %.preheader444.i ], [ %i.lvv, %.preheader444.preheader.i ]
  %i.lxl = load i16, ptr %.1307479.i, align 2, !tbaa !46
  %i.lxm = add i16 %i.lxl, %i.lxj                 ; 2 uses
  store i16 %i.lxm, ptr %i.lvu, align 16, !tbaa !46
  %i.lxn = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 2
  %i.lxo = load i16, ptr %i.lxn, align 2, !tbaa !46
  %i.lxp = add i16 %i.lxo, %i.lxi                 ; 2 uses
  store i16 %i.lxp, ptr %i.lwf, align 2, !tbaa !46
  %i.lxq = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 4
  %i.lxr = load i16, ptr %i.lxq, align 2, !tbaa !46
  %i.lxs = add i16 %i.lxr, %i.lxh                 ; 2 uses
  store i16 %i.lxs, ptr %i.lwg, align 4, !tbaa !46
  %i.lxt = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 6
  %i.lxu = load i16, ptr %i.lxt, align 2, !tbaa !46
  %i.lxv = add i16 %i.lxu, %i.lxg                 ; 2 uses
  store i16 %i.lxv, ptr %i.lwh, align 2, !tbaa !46
  %i.lxw = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 8
  %i.lxx = load i16, ptr %i.lxw, align 2, !tbaa !46
  %i.lxy = add i16 %i.lxx, %i.lxf                 ; 2 uses
  store i16 %i.lxy, ptr %i.lwi, align 8, !tbaa !46
  %i.lxz = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 10
  %i.lya = load i16, ptr %i.lxz, align 2, !tbaa !46
  %i.lyb = add i16 %i.lya, %i.lxe                 ; 2 uses
  store i16 %i.lyb, ptr %i.lwj, align 2, !tbaa !46
  %i.lyc = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 12
  %i.lyd = load i16, ptr %i.lyc, align 2, !tbaa !46
  %i.lye = add i16 %i.lyd, %i.lxd                 ; 2 uses
  store i16 %i.lye, ptr %i.lwk, align 4, !tbaa !46
  %i.lyf = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 14
  %i.lyg = load i16, ptr %i.lyf, align 2, !tbaa !46
  %i.lyh = add i16 %i.lyg, %i.lxc                 ; 2 uses
  store i16 %i.lyh, ptr %i.lwl, align 2, !tbaa !46
  %i.lyi = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 16
  %i.lyj = load i16, ptr %i.lyi, align 2, !tbaa !46
  %i.lyk = add i16 %i.lyj, %i.lxb                 ; 2 uses
  store i16 %i.lyk, ptr %i.lwm, align 16, !tbaa !46
  %i.lyl = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 18
  %i.lym = load i16, ptr %i.lyl, align 2, !tbaa !46
  %i.lyn = add i16 %i.lym, %i.lxa                 ; 2 uses
  store i16 %i.lyn, ptr %i.lwn, align 2, !tbaa !46
  %i.lyo = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 20
  %i.lyp = load i16, ptr %i.lyo, align 2, !tbaa !46
  %i.lyq = add i16 %i.lyp, %i.lwz                 ; 2 uses
  store i16 %i.lyq, ptr %i.lwo, align 4, !tbaa !46
  %i.lyr = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 22
  %i.lys = load i16, ptr %i.lyr, align 2, !tbaa !46
  %i.lyt = add i16 %i.lys, %i.lwy                 ; 2 uses
  store i16 %i.lyt, ptr %i.lwp, align 2, !tbaa !46
  %i.lyu = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 24
  %i.lyv = load i16, ptr %i.lyu, align 2, !tbaa !46
  %i.lyw = add i16 %i.lyv, %i.lwx                 ; 2 uses
  store i16 %i.lyw, ptr %i.lwq, align 8, !tbaa !46
  %i.lyx = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 26
  %i.lyy = load i16, ptr %i.lyx, align 2, !tbaa !46
  %i.lyz = add i16 %i.lyy, %i.lww                 ; 2 uses
  store i16 %i.lyz, ptr %i.lwr, align 2, !tbaa !46
  %i.lza = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 28
  %i.lzb = load i16, ptr %i.lza, align 2, !tbaa !46
  %i.lzc = add i16 %i.lzb, %i.lwv                 ; 2 uses
  store i16 %i.lzc, ptr %i.lws, align 4, !tbaa !46
  %i.lzd = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 30
  %i.lze = load i16, ptr %i.lzd, align 2, !tbaa !46
  %i.lzf = add i16 %i.lze, %i.lwu                 ; 2 uses
  store i16 %i.lzf, ptr %i.lwt, align 2, !tbaa !46
  %i.lzg = add i16 %i.lxk, 1                      ; 3 uses
  %i.lzh = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 32
  %i.lzi = zext i16 %i.lzg to i64
  %.not503.i = icmp samesign ult i64 %i.lqz, %i.lzi
  br i1 %.not503.i, label %._crit_edge480.i, label %.preheader444.i, !llvm.loop !131

bb.oz:                                            ; preds = %bb.ox
  %i.lzj = or disjoint i64 %.1312475.lcssa.wide.i, %i.ksm
  %i.lzk = trunc nuw nsw i64 %i.lzj to i32
  %i.lzl = mul nsw i32 %i.kpd, %i.lzk
  %i.lzm = sext i32 %i.lzl to i64
  %i.lzn = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %i.lzm ; 2 uses
  %.not346487.i = icmp samesign ult i64 %i.lqz, %i.lvt
  br i1 %.not346487.i, label %._crit_edge480.i, label %.preheader.lr.ph.i559

.preheader.lr.ph.i559:                            ; preds = %bb.oz
  %i.lzo = getelementptr inbounds nuw [32 x i8], ptr %i.knt, i64 %.1312475.lcssa.wide.i ; 17 uses
  %.phi.trans.insert616.i = getelementptr inbounds nuw i8, ptr %i.lzo, i64 14 ; 2 uses
  %.pre617.i = load i16, ptr %.phi.trans.insert616.i, align 2, !tbaa !46
  %i.lzp = getelementptr inbounds nuw i8, ptr %i.lzo, i64 2 ; 2 uses
  %i.lzq = getelementptr inbounds nuw i8, ptr %i.lzo, i64 4 ; 2 uses
  %i.lzr = getelementptr inbounds nuw i8, ptr %i.lzo, i64 6 ; 2 uses
  %i.lzs = getelementptr inbounds nuw i8, ptr %i.lzo, i64 8 ; 2 uses
  %i.lzt = getelementptr inbounds nuw i8, ptr %i.lzo, i64 10 ; 2 uses
  %i.lzu = getelementptr inbounds nuw i8, ptr %i.lzo, i64 12 ; 2 uses
  %i.lzv = getelementptr inbounds nuw i8, ptr %i.lzo, i64 16 ; 2 uses
  %i.lzw = getelementptr inbounds nuw i8, ptr %i.lzo, i64 18 ; 2 uses
  %i.lzx = getelementptr inbounds nuw i8, ptr %i.lzo, i64 20 ; 2 uses
  %i.lzy = getelementptr inbounds nuw i8, ptr %i.lzo, i64 22 ; 2 uses
  %i.lzz = getelementptr inbounds nuw i8, ptr %i.lzo, i64 24 ; 2 uses
  %i.maa = getelementptr inbounds nuw i8, ptr %i.lzo, i64 26 ; 2 uses
  %i.mab = getelementptr inbounds nuw i8, ptr %i.lzo, i64 28 ; 2 uses
  %i.mac = getelementptr inbounds nuw i8, ptr %i.lzo, i64 30 ; 2 uses
  %.promoted.i = load i16, ptr %i.lzo, align 16, !tbaa !46
  %.promoted676.i = load i16, ptr %i.lzp, align 2, !tbaa !46
  %.promoted677.i = load i16, ptr %i.lzq, align 4, !tbaa !46
  %.promoted678.i = load i16, ptr %i.lzr, align 2, !tbaa !46
  %.promoted679.i = load i16, ptr %i.lzs, align 8, !tbaa !46
  %.promoted680.i = load i16, ptr %i.lzt, align 2, !tbaa !46
  %.promoted681.i = load i16, ptr %i.lzu, align 4, !tbaa !46
  %.promoted682.i = load i16, ptr %i.lzv, align 16, !tbaa !46
  %.promoted683.i = load i16, ptr %i.lzw, align 2, !tbaa !46
  %.promoted684.i = load i16, ptr %i.lzx, align 4, !tbaa !46
  %.promoted685.i = load i16, ptr %i.lzy, align 2, !tbaa !46
  %.promoted686.i = load i16, ptr %i.lzz, align 8, !tbaa !46
  %.promoted687.i = load i16, ptr %i.maa, align 2, !tbaa !46
  %.promoted688.i = load i16, ptr %i.mab, align 4, !tbaa !46
  %.promoted689.i = load i16, ptr %i.mac, align 2, !tbaa !46
  br label %.preheader.i560

.preheader.i560:                                  ; preds = %.preheader.i560, %.preheader.lr.ph.i559
  %i.mad = phi i16 [ %.promoted689.i, %.preheader.lr.ph.i559 ], [ %i.mer, %.preheader.i560 ]
  %i.mae = phi i16 [ %.promoted688.i, %.preheader.lr.ph.i559 ], [ %i.mel, %.preheader.i560 ]
  %i.maf = phi i16 [ %.promoted687.i, %.preheader.lr.ph.i559 ], [ %i.mef, %.preheader.i560 ]
  %i.mag = phi i16 [ %.promoted686.i, %.preheader.lr.ph.i559 ], [ %i.mdz, %.preheader.i560 ]
  %i.mah = phi i16 [ %.promoted685.i, %.preheader.lr.ph.i559 ], [ %i.mdt, %.preheader.i560 ]
  %i.mai = phi i16 [ %.promoted684.i, %.preheader.lr.ph.i559 ], [ %i.mdn, %.preheader.i560 ]
  %i.maj = phi i16 [ %.promoted683.i, %.preheader.lr.ph.i559 ], [ %i.mdh, %.preheader.i560 ]
  %i.mak = phi i16 [ %.promoted682.i, %.preheader.lr.ph.i559 ], [ %i.mdb, %.preheader.i560 ]
  %i.mal = phi i16 [ %.promoted681.i, %.preheader.lr.ph.i559 ], [ %i.mcp, %.preheader.i560 ]
  %i.mam = phi i16 [ %.promoted680.i, %.preheader.lr.ph.i559 ], [ %i.mcj, %.preheader.i560 ]
  %i.man = phi i16 [ %.promoted679.i, %.preheader.lr.ph.i559 ], [ %i.mcd, %.preheader.i560 ]
  %i.mao = phi i16 [ %.promoted678.i, %.preheader.lr.ph.i559 ], [ %i.mbx, %.preheader.i560 ]
  %i.map = phi i16 [ %.promoted677.i, %.preheader.lr.ph.i559 ], [ %i.mbr, %.preheader.i560 ]
  %i.maq = phi i16 [ %.promoted676.i, %.preheader.lr.ph.i559 ], [ %i.mbl, %.preheader.i560 ]
  %i.mar = phi i16 [ %.promoted.i, %.preheader.lr.ph.i559 ], [ %i.mbf, %.preheader.i560 ]
  %i.mas = phi i16 [ %.pre617.i, %.preheader.lr.ph.i559 ], [ %i.mcv, %.preheader.i560 ]
  %i.mat = phi i16 [ %i.lvr, %.preheader.lr.ph.i559 ], [ %i.mes, %.preheader.i560 ] ; 2 uses
  %i.mau = zext i16 %i.mat to i32                 ; 2 uses
  %i.mav = shl nuw nsw i32 %i.mau, 4
  %sub.i = sub nsw i32 %i.mau, %i.kny
  %i.maw = call i32 @llvm.smax.i32(i32 %sub.i, i32 0)
  %i.max = shl nuw nsw i32 %i.maw, 4
  %i.may = zext nneg i32 %i.max to i64
  %i.maz = zext nneg i32 %i.mav to i64
  %i.mba = getelementptr inbounds nuw [2 x i8], ptr %i.lzn, i64 %i.maz ; 16 uses
  %i.mbb = load i16, ptr %i.mba, align 16, !tbaa !46
  %i.mbc = getelementptr inbounds nuw [2 x i8], ptr %i.lzn, i64 %i.may ; 16 uses
  %i.mbd = load i16, ptr %i.mbc, align 16, !tbaa !46
  %i.mbe = sub i16 %i.mbb, %i.mbd
  %i.mbf = add i16 %i.mbe, %i.mar                 ; 2 uses
  store i16 %i.mbf, ptr %i.lzo, align 16, !tbaa !46
  %i.mbg = getelementptr inbounds nuw i8, ptr %i.mba, i64 2
  %i.mbh = load i16, ptr %i.mbg, align 2, !tbaa !46
  %i.mbi = getelementptr inbounds nuw i8, ptr %i.mbc, i64 2
  %i.mbj = load i16, ptr %i.mbi, align 2, !tbaa !46
  %i.mbk = sub i16 %i.mbh, %i.mbj
  %i.mbl = add i16 %i.mbk, %i.maq                 ; 2 uses
  store i16 %i.mbl, ptr %i.lzp, align 2, !tbaa !46
  %i.mbm = getelementptr inbounds nuw i8, ptr %i.mba, i64 4
  %i.mbn = load i16, ptr %i.mbm, align 4, !tbaa !46
  %i.mbo = getelementptr inbounds nuw i8, ptr %i.mbc, i64 4
  %i.mbp = load i16, ptr %i.mbo, align 4, !tbaa !46
  %i.mbq = sub i16 %i.mbn, %i.mbp
  %i.mbr = add i16 %i.mbq, %i.map                 ; 2 uses
  store i16 %i.mbr, ptr %i.lzq, align 4, !tbaa !46
  %i.mbs = getelementptr inbounds nuw i8, ptr %i.mba, i64 6
  %i.mbt = load i16, ptr %i.mbs, align 2, !tbaa !46
  %i.mbu = getelementptr inbounds nuw i8, ptr %i.mbc, i64 6
  %i.mbv = load i16, ptr %i.mbu, align 2, !tbaa !46
  %i.mbw = sub i16 %i.mbt, %i.mbv
  %i.mbx = add i16 %i.mbw, %i.mao                 ; 2 uses
  store i16 %i.mbx, ptr %i.lzr, align 2, !tbaa !46
  %i.mby = getelementptr inbounds nuw i8, ptr %i.mba, i64 8
  %i.mbz = load i16, ptr %i.mby, align 8, !tbaa !46
  %i.mca = getelementptr inbounds nuw i8, ptr %i.mbc, i64 8
  %i.mcb = load i16, ptr %i.mca, align 8, !tbaa !46
  %i.mcc = sub i16 %i.mbz, %i.mcb
  %i.mcd = add i16 %i.mcc, %i.man                 ; 2 uses
  store i16 %i.mcd, ptr %i.lzs, align 8, !tbaa !46
  %i.mce = getelementptr inbounds nuw i8, ptr %i.mba, i64 10
  %i.mcf = load i16, ptr %i.mce, align 2, !tbaa !46
  %i.mcg = getelementptr inbounds nuw i8, ptr %i.mbc, i64 10
  %i.mch = load i16, ptr %i.mcg, align 2, !tbaa !46
  %i.mci = sub i16 %i.mcf, %i.mch
  %i.mcj = add i16 %i.mci, %i.mam                 ; 2 uses
  store i16 %i.mcj, ptr %i.lzt, align 2, !tbaa !46
  %i.mck = getelementptr inbounds nuw i8, ptr %i.mba, i64 12
  %i.mcl = load i16, ptr %i.mck, align 4, !tbaa !46
  %i.mcm = getelementptr inbounds nuw i8, ptr %i.mbc, i64 12
  %i.mcn = load i16, ptr %i.mcm, align 4, !tbaa !46
  %i.mco = sub i16 %i.mcl, %i.mcn
  %i.mcp = add i16 %i.mco, %i.mal                 ; 2 uses
  store i16 %i.mcp, ptr %i.lzu, align 4, !tbaa !46
  %i.mcq = getelementptr inbounds nuw i8, ptr %i.mba, i64 14
  %i.mcr = load i16, ptr %i.mcq, align 2, !tbaa !46
  %i.mcs = getelementptr inbounds nuw i8, ptr %i.mbc, i64 14
  %i.mct = load i16, ptr %i.mcs, align 2, !tbaa !46
  %i.mcu = sub i16 %i.mcr, %i.mct
  %i.mcv = add i16 %i.mcu, %i.mas                 ; 2 uses
  store i16 %i.mcv, ptr %.phi.trans.insert616.i, align 2, !tbaa !46
  %i.mcw = getelementptr inbounds nuw i8, ptr %i.mba, i64 16
  %i.mcx = load i16, ptr %i.mcw, align 16, !tbaa !46
  %i.mcy = getelementptr inbounds nuw i8, ptr %i.mbc, i64 16
  %i.mcz = load i16, ptr %i.mcy, align 16, !tbaa !46
  %i.mda = sub i16 %i.mcx, %i.mcz
  %i.mdb = add i16 %i.mda, %i.mak                 ; 2 uses
  store i16 %i.mdb, ptr %i.lzv, align 16, !tbaa !46
  %i.mdc = getelementptr inbounds nuw i8, ptr %i.mba, i64 18
  %i.mdd = load i16, ptr %i.mdc, align 2, !tbaa !46
  %i.mde = getelementptr inbounds nuw i8, ptr %i.mbc, i64 18
  %i.mdf = load i16, ptr %i.mde, align 2, !tbaa !46
  %i.mdg = sub i16 %i.mdd, %i.mdf
  %i.mdh = add i16 %i.mdg, %i.maj                 ; 2 uses
  store i16 %i.mdh, ptr %i.lzw, align 2, !tbaa !46
  %i.mdi = getelementptr inbounds nuw i8, ptr %i.mba, i64 20
  %i.mdj = load i16, ptr %i.mdi, align 4, !tbaa !46
  %i.mdk = getelementptr inbounds nuw i8, ptr %i.mbc, i64 20
  %i.mdl = load i16, ptr %i.mdk, align 4, !tbaa !46
  %i.mdm = sub i16 %i.mdj, %i.mdl
  %i.mdn = add i16 %i.mdm, %i.mai                 ; 2 uses
  store i16 %i.mdn, ptr %i.lzx, align 4, !tbaa !46
  %i.mdo = getelementptr inbounds nuw i8, ptr %i.mba, i64 22
  %i.mdp = load i16, ptr %i.mdo, align 2, !tbaa !46
  %i.mdq = getelementptr inbounds nuw i8, ptr %i.mbc, i64 22
  %i.mdr = load i16, ptr %i.mdq, align 2, !tbaa !46
  %i.mds = sub i16 %i.mdp, %i.mdr
  %i.mdt = add i16 %i.mds, %i.mah                 ; 2 uses
  store i16 %i.mdt, ptr %i.lzy, align 2, !tbaa !46
  %i.mdu = getelementptr inbounds nuw i8, ptr %i.mba, i64 24
  %i.mdv = load i16, ptr %i.mdu, align 8, !tbaa !46
  %i.mdw = getelementptr inbounds nuw i8, ptr %i.mbc, i64 24
  %i.mdx = load i16, ptr %i.mdw, align 8, !tbaa !46
  %i.mdy = sub i16 %i.mdv, %i.mdx
  %i.mdz = add i16 %i.mdy, %i.mag                 ; 2 uses
  store i16 %i.mdz, ptr %i.lzz, align 8, !tbaa !46
  %i.mea = getelementptr inbounds nuw i8, ptr %i.mba, i64 26
  %i.meb = load i16, ptr %i.mea, align 2, !tbaa !46
  %i.mec = getelementptr inbounds nuw i8, ptr %i.mbc, i64 26
  %i.med = load i16, ptr %i.mec, align 2, !tbaa !46
  %i.mee = sub i16 %i.meb, %i.med
  %i.mef = add i16 %i.mee, %i.maf                 ; 2 uses
  store i16 %i.mef, ptr %i.maa, align 2, !tbaa !46
  %i.meg = getelementptr inbounds nuw i8, ptr %i.mba, i64 28
  %i.meh = load i16, ptr %i.meg, align 4, !tbaa !46
  %i.mei = getelementptr inbounds nuw i8, ptr %i.mbc, i64 28
  %i.mej = load i16, ptr %i.mei, align 4, !tbaa !46
  %i.mek = sub i16 %i.meh, %i.mej
  %i.mel = add i16 %i.mek, %i.mae                 ; 2 uses
  store i16 %i.mel, ptr %i.mab, align 4, !tbaa !46
  %i.mem = getelementptr inbounds nuw i8, ptr %i.mba, i64 30
  %i.men = load i16, ptr %i.mem, align 2, !tbaa !46
  %i.meo = getelementptr inbounds nuw i8, ptr %i.mbc, i64 30
  %i.mep = load i16, ptr %i.meo, align 2, !tbaa !46
  %i.meq = sub i16 %i.men, %i.mep
  %i.mer = add i16 %i.meq, %i.mad                 ; 2 uses
  store i16 %i.mer, ptr %i.mac, align 2, !tbaa !46
  %i.mes = add i16 %i.mat, 1                      ; 3 uses
  %i.met = zext i16 %i.mes to i64
  %.not346.i = icmp samesign ult i64 %i.lqz, %i.met
  br i1 %.not346.i, label %._crit_edge480.i, label %.preheader.i560, !llvm.loop !132

._crit_edge480.i:                                 ; preds = %.preheader444.i, %.preheader.i560, %bb.oz, %bb.oy
  %storemerge.i = phi i16 [ %i.mes, %.preheader.i560 ], [ %i.lvv, %bb.oy ], [ %i.lvr, %bb.oz ], [ %i.lzg, %.preheader444.i ]
  store i16 %storemerge.i, ptr %.lcssa.sroa.phi.i, align 2
  %i.meu = add nsw i64 %i.lvs, %i.lqk
  %.idx665.i = shl nsw i64 %i.meu, 5
  %i.mev = getelementptr inbounds i8, ptr %i.kne, i64 %.idx665.i ; 16 uses
  %i.mew = load i16, ptr %i.mev, align 16, !tbaa !46
  %i.mex = sub i16 %i.lre, %i.mew
  store i16 %i.mex, ptr %6, align 16, !tbaa !46
  %i.mey = getelementptr inbounds nuw i8, ptr %i.mev, i64 2
  %i.mez = load i16, ptr %i.mey, align 2, !tbaa !46
  %i.mfa = sub i16 %i.lri, %i.mez
  store i16 %i.mfa, ptr %.phi.trans.insert.i, align 2, !tbaa !46
  %i.mfb = getelementptr inbounds nuw i8, ptr %i.mev, i64 4
  %i.mfc = load i16, ptr %i.mfb, align 4, !tbaa !46
  %i.mfd = sub i16 %i.lrm, %i.mfc
  store i16 %i.mfd, ptr %.phi.trans.insert588.i, align 4, !tbaa !46
end_hunk_0
