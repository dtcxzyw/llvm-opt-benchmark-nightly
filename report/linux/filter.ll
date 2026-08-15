inline.NumInlined: 1165
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@bpf_l3_csum_replace_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_l3_csum_replace, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_l4_csum_replace_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_l4_csum_replace, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_clone_redirect_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_clone_redirect, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_cgroup_classid_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_cgroup_classid, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_vlan_push_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_vlan_push, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_vlan_pop_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_vlan_pop, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_change_proto_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_change_proto, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_change_type_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_change_type, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_adjust_room_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_adjust_room, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_change_tail_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_change_tail, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_change_head_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_change_head, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_get_tunnel_key_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_get_tunnel_key, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 67141636, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_set_tunnel_key_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_set_tunnel_key, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_set_tunnel_opt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_set_tunnel_opt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 6, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_get_tunnel_opt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_get_tunnel_opt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 67141636, i32 6, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_redirect_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_redirect, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 9, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_redirect_neigh_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_redirect_neigh, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 9, i32 772, i32 7, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_redirect_peer_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_redirect_peer, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 9, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_route_realm_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_route_realm, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_hash_recalc_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_hash_recalc, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_set_hash_invalid_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_set_hash_invalid, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_set_hash_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_set_hash, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_under_cgroup_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_under_cgroup, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 1, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_fib_lookup_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_fib_lookup, i8 1, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 67108868, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_check_mtu_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_skb_check_mtu, i8 1, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 100925444, i32 9, i32 9 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 0, i64 0, i64 4, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_sk_fullsock_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_fullsock, i8 0, i8 0, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 11, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_get_xfrm_state_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_get_xfrm_state, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 67141636, i32 6, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_cgroup_classid_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_cgroup_classid, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_cgroup_id_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_cgroup_id, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_ancestor_cgroup_id_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_ancestor_cgroup_id, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tc_sk_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_tc_sk_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tc_sk_lookup_udp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_tc_sk_lookup_udp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_release_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_release, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8208, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_listener_sock_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_listener_sock, i8 0, i8 0, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 11, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tc_skc_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_tc_skc_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 261, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tcp_check_syncookie_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_tcp_check_syncookie, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 16, i32 516, i32 6, i32 516, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_ecn_set_ce_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_ecn_set_ce, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tcp_gen_syncookie_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_tcp_gen_syncookie, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 16, i32 516, i32 6, i32 516, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_assign_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_assign, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 16, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skb_set_tstamp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skb_set_tstamp, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_tcp_raw_gen_syncookie_ipv4_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_tcp_raw_gen_syncookie_ipv4, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 262660, i32 516, i32 7, i32 0, i32 0 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 20, i64 0, i64 0, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_tcp_raw_gen_syncookie_ipv6_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_tcp_raw_gen_syncookie_ipv6, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 262660, i32 516, i32 7, i32 0, i32 0 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 40, i64 0, i64 0, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_tcp_raw_check_syncookie_ipv4_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_tcp_raw_check_syncookie_ipv4, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 262660, i32 262660, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 20, i64 20, i64 0, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_tcp_raw_check_syncookie_ipv6_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_tcp_raw_check_syncookie_ipv6, i8 1, i8 1, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 262660, i32 262660, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 40, i64 20, i64 0, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_xdp_event_output_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_event_output, i8 1, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 1, i32 9, i32 516, i32 7 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_adjust_head_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_adjust_head, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_adjust_meta_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_adjust_meta, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_redirect_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_redirect, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 9, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_redirect_map_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_redirect_map, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 1, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_adjust_tail_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_adjust_tail, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_get_buff_len_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_get_buff_len, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_load_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_load_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 67141636, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_store_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_store_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 516, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_fib_lookup_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_fib_lookup, i8 1, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 67108868, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_check_mtu_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], { %struct.anon.94 }, ptr, ptr } { ptr @bpf_xdp_check_mtu, i8 1, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 100925444, i32 9, i32 9 } }, [4 x i8] zeroinitializer, { %struct.anon.94 } { %struct.anon.94 { i64 0, i64 0, i64 4, i64 0, i64 0 } }, ptr null, ptr null }, align 8
@bpf_xdp_sk_lookup_udp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_sk_lookup_udp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_sk_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_sk_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_xdp_skc_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_xdp_skc_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 261, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_cgroup_id_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_cgroup_id, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 16, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_ancestor_cgroup_id_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_ancestor_cgroup_id, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 16, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_lookup_udp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_lookup_udp, i8 0, i8 1, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_skc_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_skc_lookup_tcp, i8 0, i8 1, i8 0, i8 0, i32 261, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_lwt_in_push_encap_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_lwt_in_push_encap, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 516, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_lwt_xmit_push_encap_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_lwt_xmit_push_encap, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 516, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_socket_cookie_sock_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_socket_cookie_sock, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_netns_cookie_sock_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_netns_cookie_sock, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 264, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_create_setsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_create_setsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 516, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_create_getsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_create_getsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 67141636, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_bind_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_bind, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 6, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_socket_cookie_sock_addr_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_socket_cookie_sock_addr, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_netns_cookie_sock_addr_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_netns_cookie_sock_addr, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 264, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_addr_sk_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_addr_sk_lookup_tcp, i8 0, i8 0, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_addr_sk_lookup_udp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_addr_sk_lookup_udp, i8 0, i8 0, i8 0, i8 0, i32 259, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_addr_skc_lookup_tcp_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_addr_skc_lookup_tcp, i8 0, i8 0, i8 0, i8 0, i32 261, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 7, i32 9, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_addr_setsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_addr_setsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 516, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_addr_getsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_addr_getsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 67141636, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_setsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_setsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 516, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_getsockopt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_getsockopt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 67141636, i32 6 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_cb_flags_set_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_cb_flags_set, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_socket_cookie_sock_ops_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_socket_cookie_sock_ops, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_netns_cookie_sock_ops_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_netns_cookie_sock_ops, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 264, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_load_hdr_opt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_load_hdr_opt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 67108868, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_store_hdr_opt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_store_hdr_opt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 516, i32 6, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sock_ops_reserve_hdr_opt_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sock_ops_reserve_hdr_opt, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_skb_pull_data_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_skb_pull_data, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_skb_change_tail_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_skb_change_tail, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_skb_change_head_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_skb_change_head, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_skb_adjust_room_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_skb_adjust_room, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_msg_apply_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_msg_apply_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_msg_cork_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_msg_cork_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_msg_pull_data_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_msg_pull_data, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_msg_push_data_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_msg_push_data, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_msg_pop_data_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_msg_pop_data, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 9, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_get_netns_cookie_sk_msg_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_get_netns_cookie_sk_msg, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 264, i32 0, i32 0, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_flow_dissector_load_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_flow_dissector_load_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 67141636, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 8
@sk_select_reuseport_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_select_reuseport, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 1, i32 2, i32 9, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_reuseport_load_bytes_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_reuseport_load_bytes, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 67141636, i32 6, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@sk_reuseport_load_bytes_relative_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @sk_reuseport_load_bytes_relative, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 9, i32 67141636, i32 6, i32 9 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@bpf_sk_lookup_assign_proto = internal constant { ptr, i8, i8, i8, i8, i32, %union.anon.90, [4 x i8], %union.anon.92, ptr, ptr } { ptr @bpf_sk_lookup_assign, i8 0, i8 0, i8 0, i8 0, i32 0, %union.anon.90 { %struct.anon.91 { i32 8, i32 268, i32 9, i32 0, i32 0 } }, [4 x i8] zeroinitializer, %union.anon.92 zeroinitializer, ptr null, ptr null }, align 8
@tcp_prot = external dso_local global %struct.proto, align 8
@tcpv6_prot = external dso_local global %struct.proto, align 8
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_addressable_bpf_kfunc_init_1903, ptr @__UNIQUE_ID_addressable_bpf_master_redirect_enabled_key_1493, ptr @__UNIQUE_ID_addressable_bpf_prog_create_1470, ptr @__UNIQUE_ID_addressable_bpf_prog_create_from_user_1471, ptr @__UNIQUE_ID_addressable_bpf_prog_destroy_1472, ptr @__UNIQUE_ID_addressable_bpf_sk_lookup_enabled_1884, ptr @__UNIQUE_ID_addressable_bpf_warn_invalid_xdp_action_1569, ptr @__UNIQUE_ID_addressable_copy_bpf_fprog_from_user_1445, ptr @__UNIQUE_ID_addressable_init_subsystem_1905, ptr @__UNIQUE_ID_addressable_nf_conn_btf_access_lock_1567, ptr @__UNIQUE_ID_addressable_nfct_btf_struct_access_1568, ptr @__UNIQUE_ID_addressable_sk_attach_filter_1476, ptr @__UNIQUE_ID_addressable_sk_detach_filter_1859, ptr @__UNIQUE_ID_addressable_sk_filter_trim_cap_1451, ptr @__UNIQUE_ID_addressable_xdp_do_flush_1492, ptr @__UNIQUE_ID_addressable_xdp_do_redirect_1497, ptr @__UNIQUE_ID_addressable_xdp_do_redirect_frame_1498, ptr @__UNIQUE_ID_addressable_xdp_master_redirect_1494, ptr @__bpf_sk_lookup.__UNIQUE_ID_addressable___SCK__WARN_trap_1509, ptr @__do_trace_xdp_redirect.__UNIQUE_ID_addressable___SCK__tp_func_xdp_redirect_1294, ptr @__do_trace_xdp_redirect.__trace_check_xdp_redirect, ptr @__do_trace_xdp_redirect_err.__UNIQUE_ID_addressable___SCK__tp_func_xdp_redirect_err_1301, ptr @__do_trace_xdp_redirect_err.__trace_check_xdp_redirect_err, ptr @bpf_dynptr_from_skb, ptr @bpf_dynptr_from_skb_meta, ptr @bpf_dynptr_from_xdp, ptr @bpf_sk_assign_tcp_reqsk, ptr @bpf_sk_lookup.__UNIQUE_ID_addressable___SCK__WARN_trap_1510, ptr @bpf_sock_addr_set_sun_path, ptr @bpf_sock_destroy, ptr @bpf_sock_ops_enable_tx_tstamp, ptr @bpf_xdp_pull_data, ptr @class_preempt_destructor.__UNIQUE_ID_addressable___SCK__preempt_schedule_11, ptr @might_resched.__UNIQUE_ID_addressable___SCK__might_resched_15, ptr @sk_lookup.__UNIQUE_ID_addressable___SCK__WARN_trap_1508, ptr @sock_gen_cookie.__UNIQUE_ID_addressable___SCK__preempt_schedule_974], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @copy_bpf_fprog_from_user(ptr noundef %0, ptr %1, i8 %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.compat_sock_fprog, align 8  ; 7 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #38, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
  %.not.i.i.not = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store i64 0, ptr %4, align 8, !annotation !12
  %.not11 = icmp eq i32 %3, 8
  br i1 %.not11, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i8 %2 to i1
  br i1 %i.f, label %copy_from_sockptr.exit.thread, label %copy_from_sockptr.exit

copy_from_sockptr.exit.thread:                    ; preds = %bb.c
  %i.g = load i64, ptr %1, align 1                ; 2 uses
  %i.h = trunc i64 %i.g to i16
  %i.i = lshr i64 %i.g, 32
  br label %bb.d

copy_from_sockptr.exit:                           ; preds = %bb.c
  %i.j = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i64 noundef range(i64 8, 17) 8) #40
  %i.k = and i64 %i.j, 4294967295
  %.not12 = icmp eq i64 %i.k, 0
  br i1 %.not12, label %copy_from_sockptr.exit._crit_edge, label %.thread

copy_from_sockptr.exit._crit_edge:                ; preds = %copy_from_sockptr.exit
  %.pre = load i16, ptr %4, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre32 = load i32, ptr %.phi.trans.insert, align 4
  %i.l = zext i32 %.pre32 to i64
  br label %bb.d

.thread:                                          ; preds = %bb.b, %copy_from_sockptr.exit
  %.09.ph = phi i32 [ -22, %bb.b ], [ -14, %copy_from_sockptr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.h

bb.d:                                             ; preds = %copy_from_sockptr.exit._crit_edge, %copy_from_sockptr.exit.thread
  %i.m = phi i64 [ %i.l, %copy_from_sockptr.exit._crit_edge ], [ %i.i, %copy_from_sockptr.exit.thread ]
  %i.n = phi i16 [ %.pre, %copy_from_sockptr.exit._crit_edge ], [ %i.h, %copy_from_sockptr.exit.thread ]
  store i64 0, ptr %0, align 8
  store i16 %i.n, ptr %0, align 8
  %i.o = inttoptr i64 %i.m to ptr
  %i.p = getelementptr i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 16
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = trunc i8 %2 to i1
  br i1 %i.q, label %copy_from_sockptr.exit19.thread, label %copy_from_sockptr.exit19

copy_from_sockptr.exit19.thread:                  ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %0, ptr noundef align 1 dereferenceable(16) %1, i64 range(i64 8, 17) 16, i1 false)
  br label %bb.g

copy_from_sockptr.exit19:                         ; preds = %bb.f
  %i.r = tail call i64 @_copy_from_user(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 8, 17) 16) #40
  %i.s = and i64 %i.r, 4294967295
  %.not10 = icmp eq i64 %i.s, 0
  br i1 %.not10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %copy_from_sockptr.exit19.thread, %bb.d, %copy_from_sockptr.exit19
  br label %bb.h

bb.h:                                             ; preds = %.thread, %copy_from_sockptr.exit19, %bb.e, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ %.09.ph, %.thread ], [ -22, %bb.e ], [ -14, %copy_from_sockptr.exit19 ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 123) i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 126
  %.val = load i8, ptr %i.a, align 2
  %i.b = and i8 %.val, 64
  %.not42 = icmp eq i8 %i.b, 0
  br i1 %.not42, label %bb.c, label %sock_flag.exit

sock_flag.exit:                                   ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 16384
  %.not43 = icmp eq i64 %i.e, 0
  br i1 %.not43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %sock_flag.exit
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val37 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val37, i64 744
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 584      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.i, ptr elementtype(i64) %i.i) #39, !srcloc !13
  br label %bb.v

bb.c:                                             ; preds = %bb.a, %sock_flag.exit
  %i.j = tail call i32 @security_sock_rcv_skb(ptr noundef %0, ptr noundef %1) #40
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  tail call void @__rcu_read_lock() #40
  %i.k = getelementptr i8, ptr %0, i64 248
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 2 uses
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %0, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #38, !srcloc !11
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1144     ; 6 uses
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8
  br label %__migrate_disable.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #39, !srcloc !14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !15
  %i.v = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #41, !srcloc !16
  %i.w = add i64 %i.v, ptrtoint (ptr @runqueues to i64)
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 3312     ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  store i16 1, ptr %i.s, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !17
  %i.ab = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #39, !srcloc !18 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %bb.h, label %__migrate_disable.exit.i, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.af = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #39, !srcloc !20
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.af)
  br label %__migrate_disable.exit.i

__migrate_disable.exit.i:                         ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %i.ah = getelementptr i8, ptr %i.p, i64 2       ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ai, 8
  %.not.i2.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i2.i, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %__migrate_disable.exit.i
  %.sroa.0.0.copyload = load <20 x i8>, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(20) %i.ag, i8 0, i64 20, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %__migrate_disable.exit.i
  %.sroa.0.0 = phi <20 x i8> [ zeroinitializer, %__migrate_disable.exit.i ], [ %.sroa.0.0.copyload, %bb.i ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @bpf_stats_enabled_key, i1 false) #39
          to label %arch_static_branch.exit.i.i.i [label %bb.k], !srcloc !22

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i64 @sched_clock() #40
  %i.al = getelementptr i8, ptr %i.p, i64 96
  %i.am = getelementptr i8, ptr %i.p, i64 72
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 %i.an(ptr noundef %1, ptr noundef %i.al) #40, !inline_history !23 ; 2 uses
  %i.ap = tail call i64 @sched_clock() #40
  %i.aq = getelementptr i8, ptr %i.p, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %__bpf_prog_run.exit.i.i, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.as = sub i64 %i.ap, %i.ak
  %i.at = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #41, !srcloc !24
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  tail call void asm sideeffect " incq $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aw, ptr elementtype(i64) %i.aw) #39, !srcloc !25
  %i.ax = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ax, i64 %i.as, ptr elementtype(i64) %i.ax) #39, !srcloc !26
  br label %__bpf_prog_run.exit.i.i

arch_static_branch.exit.i.i.i:                    ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.p, i64 96
  %i.az = getelementptr i8, ptr %i.p, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %1, ptr noundef %i.ay) #40, !inline_history !23
  br label %__bpf_prog_run.exit.i.i

__bpf_prog_run.exit.i.i:                          ; preds = %arch_static_branch.exit.i.i.i, %bb.l, %bb.k
  %.0.i.i.i = phi i32 [ %i.bb, %arch_static_branch.exit.i.i.i ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %i.bc = load i16, ptr %i.ah, align 2
  %i.bd = and i16 %i.bc, 8
  %.not9.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not9.i.i, label %__bpf_prog_run_save_cb.exit.i, label %bb.m, !prof !21

bb.m:                                             ; preds = %__bpf_prog_run.exit.i.i
  store <20 x i8> %.sroa.0.0, ptr %i.ag, align 8
  br label %__bpf_prog_run_save_cb.exit.i

__bpf_prog_run_save_cb.exit.i:                    ; preds = %bb.m, %__bpf_prog_run.exit.i.i
  %i.be = load i16, ptr %i.s, align 8             ; 2 uses
  %i.bf = icmp ugt i16 %i.be, 1
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %__bpf_prog_run_save_cb.exit.i
  %i.bg = add i16 %i.be, -1
  store i16 %i.bg, ptr %i.s, align 8
  br label %bpf_prog_run_save_cb.exit

bb.o:                                             ; preds = %__bpf_prog_run_save_cb.exit.i
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #39, !srcloc !14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !15
  %i.bh = getelementptr i8, ptr %i.r, i64 1112
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.r, i64 1128
  %.not.i3.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i3.i, label %bb.q, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @___migrate_enable() #40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !27
  store i16 0, ptr %i.s, align 8
  %i.bk = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #41, !srcloc !28
  %i.bl = add i64 %i.bk, ptrtoint (ptr @runqueues to i64)
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 3312   ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !17
  %i.bq = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #39, !srcloc !18 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = trunc nuw i8 %i.bq to i1
  br i1 %i.bs, label %bb.r, label %bpf_prog_run_save_cb.exit, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.bt = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.bu = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.bt) #39, !srcloc !20
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.bu)
  br label %bpf_prog_run_save_cb.exit

bpf_prog_run_save_cb.exit:                        ; preds = %bb.n, %bb.q, %bb.r
  store ptr %i.n, ptr %i.m, align 8
  %.not35 = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not35, label %.thread, label %bb.s

bb.s:                                             ; preds = %bpf_prog_run_save_cb.exit
  %i.bv = tail call i32 @llvm.umax.i32(i32 %2, i32 %.0.i.i.i) ; 4 uses
  %i.bw = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = icmp ult i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.t, label %.thread40

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr i8, ptr %1, i64 116
  %i.ca = load i32, ptr %i.bz, align 4
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %__skb_trim.exit.i, label %bb.u

__skb_trim.exit.i:                                ; preds = %bb.t
  store i32 %i.bv, ptr %i.bw, align 8
  %i.cb = getelementptr i8, ptr %1, i64 208
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %1, i64 200
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr i8, ptr %1, i64 188
  %i.ck = add i32 %i.bv, %i.ci
  store i32 %i.ck, ptr %i.cj, align 4
  br label %.thread40

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call i32 @___pskb_trim(ptr noundef %1, i32 noundef %i.bv) #40
  %.fr = freeze i32 %i.cl
  %i.cm = icmp eq i32 %.fr, 0
  br i1 %i.cm, label %.thread40, label %.thread

.thread40:                                        ; preds = %__skb_trim.exit.i, %bb.s, %bb.u
  br label %.thread

.thread:                                          ; preds = %bpf_prog_run_save_cb.exit, %.thread40, %bb.u, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %.thread40 ], [ 5, %bb.u ], [ 5, %bpf_prog_run_save_cb.exit ]
  tail call void @__rcu_read_unlock() #40
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %.thread, %bb.b
  %.0 = phi i32 [ 122, %bb.b ], [ %.1, %.thread ], [ 63, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_sock_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 4294967296) i64 @bpf_skb_get_pay_offset(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call i32 @skb_get_poff(ptr noundef %i.a) #40
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @bpf_skb_get_nlattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = trunc i64 %1 to i32
  %i.c = trunc i64 %2 to i32
  %i.d = getelementptr i8, ptr %i.a, i64 116
  %.val = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.b, label %____bpf_skb_get_nlattr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 112
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %____bpf_skb_get_nlattr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  %i.i = and i64 %1, 4294967295                   ; 2 uses
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ult i64 %i.j, %i.i
  br i1 %i.k, label %____bpf_skb_get_nlattr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.a, i64 208      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i
  %i.o = sub i32 %i.f, %i.b
  %i.p = tail call ptr @nla_find(ptr noundef %i.n, i32 noundef %i.o, i32 noundef %i.c) #40 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %____bpf_skb_get_nlattr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  br label %____bpf_skb_get_nlattr.exit

____bpf_skb_get_nlattr.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.t, %bb.e ], [ 0, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @bpf_skb_get_nlattr_nest(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = trunc i64 %1 to i32
  %i.c = trunc i64 %2 to i32
  %i.d = getelementptr i8, ptr %i.a, i64 116
  %.val = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.b, label %____bpf_skb_get_nlattr_nest.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 112
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %____bpf_skb_get_nlattr_nest.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  %i.i = and i64 %1, 4294967295                   ; 2 uses
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ult i64 %i.j, %i.i
  br i1 %i.k, label %____bpf_skb_get_nlattr_nest.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.a, i64 208      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = sub i32 %i.f, %i.b                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %____bpf_skb_get_nlattr_nest.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load i16, ptr %i.n, align 2              ; 3 uses
  %i.r = icmp ult i16 %i.q, 4
  %i.s = zext i16 %i.q to i32
  %.not4 = icmp samesign ult i32 %i.o, %i.s
  %or.cond = select i1 %i.r, i1 true, i1 %.not4
  br i1 %or.cond, label %____bpf_skb_get_nlattr_nest.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.n, i64 4
  %i.u = add i16 %i.q, -4
  %i.v = zext i16 %i.u to i32
  %i.w = tail call ptr @nla_find(ptr noundef %i.t, i32 noundef %i.v, i32 noundef %i.c) #40 ; 2 uses
  %.not17.i = icmp eq ptr %i.w, null
end_hunk_0
